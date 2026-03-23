# OET Platform — Backend Developer Handoff

## Document purpose
This file is the implementation-ready backend handoff for the OET preparation platform. It excludes the public marketing website and focuses only on the application stack required to launch and operate:

1. Learner application backend
2. Expert review backend
3. Admin / CMS backend
4. Evaluation, planning, analytics, commerce, and operations services

This spec is aligned to the current official OET structure: four sub-tests, profession-specific Writing and Speaking, official Writing criteria, official Speaking linguistic and clinical communication criteria, sample tests across professions and modes, and separate results by sub-test. The backend therefore must support both learning workflows and assessment workflows.

---

# 1. System goal

Build a production-grade backend that supports:
- profession-specific OET preparation
- Writing and Speaking evaluation pipelines
- Reading and Listening practice flows
- adaptive study planning
- readiness estimation
- expert review operations
- content authoring and versioning
- subscriptions and review credits
- analytics and quality control

---

# 2. Core architectural principles

1. **Assessment-grade reliability**  
   Long tasks, evaluations, and reviews must be durable and auditable.

2. **Async-first evaluation design**  
   Writing and Speaking scoring are asynchronous pipelines with clear states.

3. **Separation of concerns**  
   Content delivery, submission processing, evaluation, recommendation, review ops, billing, and analytics should be modular.

4. **Human-in-the-loop support**  
   AI outputs must support low-confidence routing and human review overlays.

5. **Version everything important**  
   Content, rubrics, AI configs, model versions, and evaluations must be traceable.

6. **Trust over fake precision**  
   Score estimates should support ranges and confidence values, not unsupported certainty.

7. **Role-aware access control**  
   Learner, reviewer, tutor, admin, and content manager permissions must be enforced at the service layer.

---

# 3. High-level service architecture

Recommended services:
- Identity Service
- Profile & Goals Service
- Taxonomy Service
- Content Service
- Attempt / Session Service
- Submission Service
- Media Service
- Evaluation Orchestrator
- Writing Evaluation Service
- Speaking Evaluation Service
- Objective Scoring Service (Reading/Listening)
- Recommendation / Study Plan Service
- Readiness Service
- Review Ops Service
- Billing / Entitlements Service
- Notification Service
- Analytics / Event Service
- Admin / CMS Service
- Feature Flag Service

Cross-cutting concerns:
- queue/workers
- observability
- auth/RBAC
- audit logging
- storage signing and security

---

# 4. Deployment model recommendation

## 4.1 Recommended stack pattern
- API-first backend
- relational database as system of record
- object storage for audio and media
- background job queue for async processing
- analytics warehouse / event sink
- provider-agnostic AI orchestration layer
- speech-to-text and feature extraction services behind internal abstractions

## 4.2 Recommended runtime split
- synchronous API layer for user actions
- async worker pool for evaluations, transcription, report generation, and notifications
- admin/reporting jobs on separate queue priorities

## 4.3 Priority queues
At minimum:
- `evaluation_high`
- `evaluation_standard`
- `transcription`
- `review_ops`
- `notifications`
- `analytics_backfill`
- `reporting`

---

# 5. Domain model overview

The backend domain is organized into these major areas:
- users, roles, sessions
- learner profiles and goals
- taxonomy: professions, sub-tests, criteria, tags
- content and revisions
- attempts and submissions
- evaluations and feedback
- study plans and readiness snapshots
- expert review operations
- subscriptions, credits, transactions
- analytics, feature flags, audit trails

---

# 6. Database schema

Below is the recommended relational schema. UUIDs are assumed for primary keys unless a strong reason exists otherwise.

## 6.1 Identity and access

### `users`
- `id` PK
- `email` unique not null
- `password_hash` nullable
- `auth_provider` nullable
- `status` not null
- `email_verified_at` nullable
- `created_at` not null
- `updated_at` not null

### `user_profiles`
- `user_id` PK/FK -> users.id
- `first_name`
- `last_name`
- `country_code`
- `timezone`
- `preferred_language`
- `avatar_url` nullable
- `created_at`
- `updated_at`

### `roles`
- `id` PK
- `name` unique

Seed values:
- learner
- reviewer
- tutor
- admin
- content_manager
- support_ops

### `user_roles`
- `user_id` FK
- `role_id` FK
- composite unique (`user_id`, `role_id`)

### `sessions`
- `id`
- `user_id`
- `device_info` JSONB
- `ip_address` nullable
- `expires_at`
- `created_at`

---

## 6.2 Learner goals and preferences

### `learner_goals`
- `id`
- `user_id` FK
- `profession_id` FK
- `target_country_code` nullable
- `target_exam_date` nullable
- `target_listening_score` nullable
- `target_reading_score` nullable
- `target_writing_score` nullable
- `target_speaking_score` nullable
- `goal_type` not null
- `study_hours_per_week` nullable
- `previous_oet_attempts_count` default 0
- `self_report_weakest_subtest` nullable
- `created_at`
- `updated_at`

### `learner_preferences`
- `user_id` PK/FK
- `notifications_enabled`
- `low_bandwidth_mode`
- `daily_study_time_preference` nullable
- `accessibility_options` JSONB
- `device_preference` nullable
- `created_at`
- `updated_at`

---

## 6.3 Taxonomy

### `professions`
- `id`
- `slug` unique
- `name` unique
- `is_active`
- `sort_order`

Seed for all supported OET professions.

### `subtests`
- `id`
- `code` unique
- `name`

Seed:
- listening
- reading
- writing
- speaking

### `criteria`
- `id`
- `subtest_id` FK
- `code`
- `name`
- `description`
- `sort_order`
- unique (`subtest_id`, `code`)

Required Writing criteria:
- purpose
- content
- conciseness_clarity
- genre_style
- organisation_layout
- language

Speaking criteria should support the product’s internal score model across linguistic and clinical communication dimensions.

### `scenario_tags`
- `id`
- `name`
- `category`
- unique (`name`, `category`)

---

## 6.4 Content and versioning

### `content_items`
- `id`
- `content_type` not null
- `title`
- `slug` unique
- `profession_id` nullable FK
- `subtest_id` FK
- `difficulty_level`
- `status`
- `version`
- `estimated_duration_minutes`
- `metadata` JSONB
- `created_by` FK users.id
- `updated_by` FK users.id nullable
- `created_at`
- `updated_at`

Enums for `content_type`:
- writing_task
- speaking_task
- reading_set
- listening_set
- drill
- mock

Enums for `status`:
- draft
- review
- published
- archived

### `content_item_tags`
- `content_item_id` FK
- `tag_id` FK
- unique (`content_item_id`, `tag_id`)

### `content_criteria_map`
- `content_item_id` FK
- `criteria_id` FK
- `weight` nullable
- unique (`content_item_id`, `criteria_id`)

### `content_revisions`
- `id`
- `content_item_id` FK
- `revision_number`
- `payload` JSONB
- `change_notes`
- `created_by` FK users.id
- `created_at`
- unique (`content_item_id`, `revision_number`)

### `writing_task_payloads`
- `content_item_id` PK/FK
- `prompt_text`
- `case_notes_json` JSONB
- `model_answer_json` JSONB
- `review_checklist_json` JSONB

### `speaking_task_payloads`
- `content_item_id` PK/FK
- `role_card_json` JSONB
- `ai_interlocutor_script_json` JSONB nullable
- `model_response_json` JSONB nullable
- `review_checklist_json` JSONB

### `reading_set_payloads`
- `content_item_id` PK/FK
- `passages_json` JSONB
- `questions_json` JSONB
- `answer_key_json` JSONB

### `listening_set_payloads`
- `content_item_id` PK/FK
- `audio_asset_id` FK media_assets.id
- `questions_json` JSONB
- `answer_key_json` JSONB
- `transcript_json` JSONB nullable

---

## 6.5 Media and assets

### `media_assets`
- `id`
- `asset_type`
- `storage_url`
- `mime_type`
- `size_bytes`
- `duration_seconds` nullable
- `checksum`
- `created_by` nullable
- `created_at`

Enums for `asset_type`:
- audio
- image
- document
- transcript
- waveform
- rubric_pdf

### `media_processing_jobs`
- `id`
- `asset_id` FK
- `job_type`
- `status`
- `input_payload` JSONB
- `output_payload` JSONB nullable
- `error_message` nullable
- `created_at`
- `updated_at`

---

## 6.6 Attempts and submissions

### `attempts`
- `id`
- `user_id` FK
- `content_item_id` FK
- `mode`
- `status`
- `started_at`
- `submitted_at` nullable
- `completed_at` nullable
- `duration_seconds` nullable
- `attempt_number`
- `parent_attempt_id` nullable FK attempts.id
- `source`
- `created_at`
- `updated_at`

Enums for `mode`:
- practice
- exam_sim
- diagnostic
- mock

Enums for `status`:
- started
- draft_saved
- submitted
- processing
- evaluated
- review_requested
- reviewed
- abandoned
- failed

Enums for `source`:
- planner
- library
- recommendation
- mock_center
- diagnostic_flow

### `writing_submissions`
- `attempt_id` PK/FK
- `response_text`
- `word_count`
- `draft_metadata` JSONB nullable
- `last_autosaved_at` nullable

### `speaking_submissions`
- `attempt_id` PK/FK
- `audio_asset_id` FK
- `transcript_asset_id` nullable FK media_assets.id
- `transcript_text` nullable
- `speech_features_json` JSONB nullable
- `recording_metadata` JSONB nullable

### `objective_submissions`
- `attempt_id` PK/FK
- `answers_json` JSONB
- `score_raw` nullable
- `score_percent` nullable

### `attempt_events`
- `id`
- `attempt_id` FK
- `event_type`
- `payload` JSONB
- `created_at`

---

## 6.7 Evaluations and feedback

### `evaluations`
- `id`
- `attempt_id` FK
- `evaluation_type`
- `status`
- `model_version` nullable
- `config_version` nullable
- `confidence_score` nullable
- `overall_score_min` nullable
- `overall_score_max` nullable
- `grade_estimate_min` nullable
- `grade_estimate_max` nullable
- `summary_text` nullable
- `created_by_user_id` nullable
- `created_at`
- `updated_at`

Enums for `evaluation_type`:
- ai_first_pass
- ai_revision
- human_review
- blended_final

Enums for `status`:
- queued
- processing
- completed
- failed
- superseded

### `criterion_scores`
- `id`
- `evaluation_id` FK
- `criteria_id` FK
- `score_min` nullable
- `score_max` nullable
- `band_label` nullable
- `confidence_score` nullable
- `rationale_text` nullable

### `feedback_anchors`
- `id`
- `attempt_id` FK
- `anchor_type`
- `start_offset` nullable
- `end_offset` nullable
- `start_ms` nullable
- `end_ms` nullable
- `label` nullable

Enums for `anchor_type`:
- text_span
- paragraph
- sentence
- audio_timestamp
- transcript_span

### `feedback_items`
- `id`
- `evaluation_id` FK
- `feedback_type`
- `anchor_ref` nullable FK feedback_anchors.id
- `body`
- `severity`
- `metadata` JSONB nullable
- `created_at`

Enums for `feedback_type`:
- strength
- issue
- suggestion
- omission
- rewrite
- pronunciation_flag
- empathy_flag
- structure_flag
- tone_flag

Enums for `severity`:
- low
- medium
- high

### `evaluation_audit_logs`
- `id`
- `evaluation_id` FK
- `event_type`
- `payload` JSONB
- `created_at`

---

## 6.8 Planning and readiness

### `study_plans`
- `id`
- `user_id` FK
- `version`
- `status`
- `generated_by`
- `generation_reason` nullable
- `created_at`

Enums for `generated_by`:
- rules_engine
- ai_planner
- human_coach

### `study_plan_items`
- `id`
- `study_plan_id` FK
- `scheduled_for`
- `content_item_id` nullable FK
- `task_type`
- `priority_score`
- `reason_text`
- `status`
- `position_index`
- `created_at`
- `updated_at`

Enums for `status`:
- pending
- completed
- skipped
- rescheduled

### `readiness_snapshots`
- `id`
- `user_id` FK
- `listening_readiness` nullable
- `reading_readiness` nullable
- `writing_readiness` nullable
- `speaking_readiness` nullable
- `weakest_link_subtest` nullable
- `target_date_risk` nullable
- `explanation_json` JSONB
- `generated_from_plan_id` nullable FK study_plans.id
- `created_at`

---

## 6.9 Review ops and tutor workflows

### `review_requests`
- `id`
- `attempt_id` FK
- `requested_by_user_id` FK
- `review_type`
- `priority`
- `status`
- `assigned_reviewer_id` nullable FK users.id
- `sla_due_at` nullable
- `notes` nullable
- `created_at`
- `updated_at`

Enums for `review_type`:
- writing_review
- speaking_review
- borderline_audit

Enums for `priority`:
- standard
- expedited
- urgent

Enums for `status`:
- requested
- assigned
- in_review
- completed
- returned
- cancelled
- failed

### `review_outputs`
- `id`
- `review_request_id` FK
- `evaluation_id` FK
- `reviewer_id` FK users.id
- `internal_notes` nullable
- `sent_to_user_at` nullable
- `created_at`

### `reviewer_calibration_scores`
- `id`
- `reviewer_id` FK users.id
- `benchmark_case_id`
- `score_alignment`
- `notes` nullable
- `created_at`

### `review_assignments`
- `id`
- `review_request_id` FK
- `reviewer_id` FK
- `assigned_at`
- `accepted_at` nullable
- `completed_at` nullable

---

## 6.10 Billing and entitlements

### `plans`
- `id`
- `name`
- `billing_interval`
- `price_minor`
- `currency`
- `features_json` JSONB
- `is_active`

### `subscriptions`
- `id`
- `user_id` FK
- `plan_id` FK
- `status`
- `provider`
- `provider_subscription_ref` nullable
- `started_at`
- `renews_at` nullable
- `ended_at` nullable
- `cancel_at_period_end` default false

### `credit_wallets`
- `id`
- `user_id` FK
- `credit_type`
- `balance`
- unique (`user_id`, `credit_type`)

Enums for `credit_type`:
- expert_review
- mock_review
- live_session

### `credit_ledger`
- `id`
- `wallet_id` FK
- `delta`
- `reason`
- `reference_type` nullable
- `reference_id` nullable
- `created_at`

### `transactions`
- `id`
- `user_id` FK
- `type`
- `amount_minor`
- `currency`
- `provider`
- `provider_ref` nullable
- `status`
- `metadata` JSONB nullable
- `created_at`

---

## 6.11 Analytics, flags, and auditability

### `event_log`
- `id`
- `user_id` nullable FK
- `session_id` nullable
- `event_name`
- `occurred_at`
- `properties` JSONB

### `feature_flags`
- `id`
- `key` unique
- `description`
- `state`
- `rules_json` JSONB
- `created_at`
- `updated_at`

### `audit_logs`
- `id`
- `actor_user_id` nullable FK
- `actor_role` nullable
- `entity_type`
- `entity_id`
- `action`
- `payload` JSONB nullable
- `created_at`

---

# 7. Service responsibilities in detail

## 7.1 Identity Service
Responsibilities:
- signup/login/logout
- session issuance
- password reset
- role lookups
- route/service auth

## 7.2 Profile & Goals Service
Responsibilities:
- learner profile CRUD
- learner goals CRUD
- preference storage
- onboarding completion state

## 7.3 Taxonomy Service
Responsibilities:
- professions
- sub-tests
- criteria
- shared tags
- taxonomy cache invalidation

## 7.4 Content Service
Responsibilities:
- serve published content
- manage revisions
- version resolution
- content metadata search/filter
- model answer and review checklist retrieval

## 7.5 Attempt / Session Service
Responsibilities:
- create attempts
- draft save/update
- attempt state transitions
- timer metadata
- attempt event logging

## 7.6 Submission Service
Responsibilities:
- finalize submissions
- validate minimum required assets/data
- mark attempts for evaluation
- trigger orchestration jobs

## 7.7 Media Service
Responsibilities:
- signed upload URLs
- metadata verification
- storage abstraction
- media lifecycle management
- optional waveform generation and transcript asset handling

## 7.8 Evaluation Orchestrator
Responsibilities:
- select evaluator pipeline by sub-test/type
- preprocess inputs
- call model/rules evaluators
- compute confidence
- create evaluation records
- route borderline cases to review ops or blended flows

## 7.9 Writing Evaluation Service
Responsibilities:
- structural checks
- task completion checks
- content relevance checks
- writing rubric inference
- feedback anchor generation
- omission detection
- revision support

## 7.10 Speaking Evaluation Service
Responsibilities:
- transcription orchestration
- speech feature processing
- linguistic and clinical communication analysis
- transcript anchor generation
- speaking drill recommendations

## 7.11 Objective Scoring Service
Responsibilities:
- score Reading/Listening answers deterministically
- calculate item review data
- generate explanation payload links if available

## 7.12 Recommendation / Study Plan Service
Responsibilities:
- study plan generation
- task ranking
- weak-skill prioritization
- retake rescue mode generation
- plan regeneration after meaningful new evidence

## 7.13 Readiness Service
Responsibilities:
- readiness snapshot generation
- weakest-link detection
- target date risk logic
- explanation output

## 7.14 Review Ops Service
Responsibilities:
- review request creation
- reviewer assignment
- SLA tracking
- review lifecycle state management
- human evaluation merge logic

## 7.15 Billing / Entitlements Service
Responsibilities:
- subscriptions
- plan enforcement
- credit wallets
- checkout integration
- webhook handling

## 7.16 Notification Service
Responsibilities:
- evaluation ready notifications
- review complete notifications
- billing reminders
- study nudges
- transactional emails

## 7.17 Analytics / Event Service
Responsibilities:
- event ingestion
- event validation
- sink to warehouse
- operational dashboards

---

# 8. API design

REST is sufficient for v1, with strong versioning and typed payloads. GraphQL may be added later for complex dashboards if needed.

## 8.1 Auth and user

### `POST /v1/auth/signup`
Request:
```json
{
  "email": "user@example.com",
  "password": "secret",
  "countryCode": "PK"
}
```

### `POST /v1/auth/login`

### `POST /v1/auth/logout`

### `GET /v1/me`

### `PATCH /v1/me/profile`

### `PUT /v1/me/goals`
```json
{
  "professionId": "prof_nursing",
  "targetExamDate": "2026-05-22",
  "targetScores": {
    "listening": 350,
    "reading": 350,
    "writing": 350,
    "speaking": 350
  },
  "studyHoursPerWeek": 10,
  "goalType": "registration"
}
```

### `PATCH /v1/me/preferences`

---

## 8.2 Taxonomy and content

### `GET /v1/professions`

### `GET /v1/subtests`

### `GET /v1/criteria?subtest=writing`

### `GET /v1/content`
Supported filters:
- `professionId`
- `subtest`
- `difficulty`
- `criteria`
- `mode`
- `type`
- `status` for admin-auth contexts only

### `GET /v1/content/{contentId}`

### `POST /v1/content/{contentId}/preview`
Returns learner-safe preview payload.

---

## 8.3 Attempts and submissions

### `POST /v1/attempts`
Request:
```json
{
  "contentItemId": "cnt_123",
  "mode": "practice",
  "source": "planner"
}
```
Response:
```json
{
  "attemptId": "att_123",
  "status": "started",
  "expiresAt": "2026-03-19T18:30:00Z"
}
```

### `GET /v1/attempts/{attemptId}`

### `PATCH /v1/attempts/{attemptId}/draft`
For Writing drafts.

### `POST /v1/attempts/{attemptId}/upload-audio`
Returns signed URL + required headers.

### `POST /v1/attempts/{attemptId}/submit`
Transitions attempt to submitted and queues evaluation.

### `GET /v1/me/attempts`
Filters:
- subtest
- status
- reviewed
- date range

---

## 8.4 Evaluations and feedback

### `GET /v1/attempts/{attemptId}/evaluation`
Returns latest active evaluation.

### `POST /v1/attempts/{attemptId}/re-evaluate`
For revised attempts or admin-triggered reprocess.

### `GET /v1/evaluations/{evaluationId}`

### `GET /v1/evaluations/{evaluationId}/feedback`
Response example:
```json
{
  "evaluationId": "eval_123",
  "status": "completed",
  "overallScoreRange": { "min": 320, "max": 370 },
  "gradeEstimateRange": { "min": "C+", "max": "B" },
  "confidence": 0.74,
  "criteria": [
    {
      "code": "purpose",
      "scoreRange": { "min": 4, "max": 5 },
      "feedback": [
        "Your purpose is clear in the opening paragraph."
      ]
    }
  ],
  "topIssues": [
    "Several relevant case-note details were omitted.",
    "The tone becomes too informal in paragraph 3."
  ]
}
```

### `GET /v1/evaluations/{evaluationId}/anchors`
Optional separate endpoint for large transcript/text anchors.

---

## 8.5 Planning and readiness

### `GET /v1/me/study-plan`

### `POST /v1/me/study-plan/regenerate`

### `PATCH /v1/me/study-plan/items/{itemId}`
Request:
```json
{
  "status": "rescheduled",
  "scheduledFor": "2026-03-21"
}
```

### `GET /v1/me/readiness`
Response example:
```json
{
  "subtests": {
    "listening": 0.68,
    "reading": 0.72,
    "writing": 0.56,
    "speaking": 0.63
  },
  "weakestLink": "writing",
  "targetDateRisk": "medium",
  "explanations": [
    "Your writing content selection is inconsistent across the last 3 timed tasks."
  ]
}
```

---

## 8.6 Reviews and expert operations

### `POST /v1/reviews`
```json
{
  "attemptId": "att_123",
  "reviewType": "writing_review",
  "priority": "standard",
  "notes": "Please focus on tone and content selection."
}
```

### `GET /v1/me/reviews`

### `GET /v1/reviews/{reviewId}`

### `GET /v1/expert/review-queue`
Permissions: reviewer/tutor/admin only.

### `POST /v1/expert/reviews/{reviewId}/claim`

### `POST /v1/expert/reviews/{reviewId}/submit`
Creates human evaluation and completes review request.

### `GET /v1/expert/calibration`

---

## 8.7 Billing and entitlements

### `GET /v1/plans`

### `GET /v1/me/subscription`

### `POST /v1/billing/checkout-session`

### `POST /v1/me/credits/purchase`

### `POST /v1/billing/webhooks/{provider}`

---

## 8.8 Admin / CMS

### `POST /v1/admin/content`

### `PATCH /v1/admin/content/{contentId}`

### `POST /v1/admin/content/{contentId}/publish`

### `POST /v1/admin/content/{contentId}/archive`

### `GET /v1/admin/content/{contentId}/revisions`

### `POST /v1/admin/ai-configs`

### `GET /v1/admin/review-ops`

### `GET /v1/admin/analytics/quality`

### `POST /v1/admin/flags`

### `GET /v1/admin/audit-logs`

---

# 9. State machines

## 9.1 Attempt lifecycle
States:
- started
- draft_saved
- submitted
- processing
- evaluated
- review_requested
- reviewed
- abandoned
- failed

Rules:
- only `started` and `draft_saved` attempts can accept draft updates
- only `submitted` attempts can enter evaluation queue
- `evaluated` can move to `review_requested`
- `review_requested` can move to `reviewed`
- `failed` requires retry or intervention path

## 9.2 Review request lifecycle
States:
- requested
- assigned
- in_review
- completed
- returned
- cancelled
- failed

## 9.3 Content lifecycle
States:
- draft
- review
- published
- archived

## 9.4 Evaluation lifecycle
States:
- queued
- processing
- completed
- failed
- superseded

---

# 10. Writing evaluation pipeline

## 10.1 Input requirements
- attempt exists and belongs to user
- content item is published/available for that user flow
- response text present
- case notes and rubric available from content service

## 10.2 Pipeline stages
1. submission validation
2. task retrieval
3. normalization of response text
4. deterministic checks
   - minimum completeness
   - structural signals
   - metadata extraction
5. rubric evaluation
   - purpose
   - content
   - conciseness & clarity
   - genre & style
   - organisation & layout
   - language
6. issue extraction
   - omissions
   - unnecessary information
   - tone/register issues
   - paragraph-level concerns
7. confidence model
8. evaluation record write
9. optional borderline routing to review ops
10. study plan update event

## 10.3 Outputs
- overall estimated score range
- grade range
- criterion-level scores
- anchored feedback
- top issue summary
- revision suggestions
- confidence score

## 10.4 Failure handling
If pipeline fails:
- mark evaluation failed
- preserve attempt
- emit operational alert
- support safe manual requeue

---

# 11. Speaking evaluation pipeline

## 11.1 Input requirements
- uploaded audio asset present
- role card available
- recording metadata available if captured

## 11.2 Pipeline stages
1. audio validation
2. transcription job
3. waveform/feature extraction if enabled
4. transcript segmentation
5. linguistic analysis
6. clinical communication analysis
7. marker generation
   - intelligibility flags
   - pause/fluency flags
   - empathy misses
   - explanation gaps
   - structure misses
8. score-range generation
9. confidence model
10. evaluation write
11. optional low-confidence routing
12. recommendation event emitted

## 11.3 Outputs
- estimated score range
- criterion breakdown
- transcript text
- timestamp anchors
- issue/strength list
- better phrasing prompts
- next-drill suggestions
- confidence score

---

# 12. Objective scoring pipeline for Reading and Listening

## 12.1 Requirements
- deterministic answer checking
- practice-mode explanation support
- item-level review payloads

## 12.2 Flow
1. validate answers
2. score against answer key
3. compute sub-skill tags if question metadata exists
4. store objective submission scores
5. emit recommendation/update event

---

# 13. Recommendation and study plan engine

## 13.1 Inputs
- learner goals
- exam date
- last readiness snapshot
- recent attempts/evaluations
- criterion weaknesses
- completion/skipping behavior
- entitlement state if premium-only items are involved

## 13.2 Outputs
- study plan
- today’s tasks
- next checkpoint suggestion
- retake rescue plan
- weak-skill drill bundle

## 13.3 Rule examples
- if exam date < 21 days and Writing is weakest, increase timed Writing frequency
- if Speaking has repeated empathy flags, inject clinical communication drills
- if learner repeatedly skips long tasks, shorten next recommendations
- if no diagnostic yet, block full plan generation until minimal evidence threshold is met

## 13.4 Regeneration triggers
- diagnostic completion
- evaluated Writing or Speaking submission
- mock completion
- goal update
- major review completion

---

# 14. Readiness engine

## 14.1 Purpose
Estimate readiness by sub-test, identify weakest link, and warn against overconfidence.

## 14.2 Rules
- store readiness per sub-test
- expose weakest-link sub-test
- expose target-date risk
- include explanation evidence
- never expose unsupported certainty

## 14.3 Triggering events
- new evaluation
- mock completion
- human review completion
- goal date change

---

# 15. Review ops logic

## 15.1 Request creation
When learner requests review:
- verify entitlement or payment
- create `review_requests`
- assign SLA due time
- route to queue
- decrement or reserve credits

## 15.2 Assignment
Assignment can be:
- automatic based on profession/subtest/expertise/SLA
- manual by admin
- self-claim by reviewer depending on ops model

## 15.3 Review completion
On submit:
- create human evaluation
- optionally mark prior AI evaluation as superseded or retain as comparison
- notify learner
- update attempt/review states
- optionally update readiness/study plan

## 15.4 Calibration
- benchmark cases stored externally or in protected content model
- reviewer alignment logged
- repeated drift flagged operationally

---

# 16. Billing and entitlement logic

## 16.1 Plans
Backend must support:
- free
- core subscription
- premium subscription
- add-on review credits
- institution plans later

## 16.2 Entitlement checks
Every protected action must check:
- active subscription
- feature availability in plan
- available credits for pay-per-use items

Protected actions include:
- premium evaluations
- mock reviews
- expert review requests
- advanced readiness views if monetized

## 16.3 Webhook handling
Required:
- subscription create/update/cancel
- payment success/failure
- refund or dispute events if provider supports it
- idempotent processing

---

# 17. Security model

## 17.1 Authentication
- session-based or token-based auth with refresh strategy
- secure password storage
- optional SSO support

## 17.2 Authorization
RBAC on every service boundary.

Examples:
- learner cannot access another learner’s attempts or evaluations
- reviewer can only access assigned or claimable review requests
- content manager can edit content but not billing configuration
- admin can access operational data and audit logs

## 17.3 Data protection
Required:
- encryption at rest for sensitive data where feasible
- signed URLs for audio upload/download
- least-privilege object storage access
- audit logs for reviewer/admin actions
- retention policies for media and transcripts

## 17.4 Privacy-sensitive areas
- speaking audio
- transcripts
- evaluator notes
- billing data
- learner profile/goals

---

# 18. Observability and operations

## 18.1 Logging
Structured logs required for:
- auth events
- attempt state changes
- evaluation job lifecycle
- billing webhooks
- review lifecycle
- admin actions

## 18.2 Metrics
Track at minimum:
- evaluation latency by type
- transcription latency
- queue depth
- failed job rate
- review SLA hit rate
- AI-human disagreement rate
- content retrieval latency
- API error rate

## 18.3 Tracing
Distributed tracing highly recommended across:
- submission → orchestration → evaluator → persistence
- review request → assignment → completion
- checkout → webhook → entitlement update

## 18.4 Alerts
Operational alerts for:
- evaluation failure spikes
- transcription outage
- upload failures
- billing webhook failures
- overdue review queue surge
- confidence model anomalies/drift if available

---

# 19. Event instrumentation requirements

Required events include:
- signup_completed
- goal_setup_completed
- diagnostic_started
- diagnostic_completed
- task_started
- task_submitted
- evaluation_queued
- evaluation_completed
- evaluation_failed
- revision_submitted
- review_requested
- review_completed
- mock_started
- mock_completed
- readiness_generated
- subscription_started
- subscription_changed
- content_published
- reviewer_calibration_completed

Event payloads should include where relevant:
- user id
- role
- profession
- sub-test
- content id
- attempt id
- evaluation id
- review id
- mode
- timestamp

---

# 20. Caching strategy

Cache candidates:
- professions/sub-tests/criteria taxonomy
- published content metadata
- learner dashboard summaries with short TTL
- study plan current version
- feature flags

Do not cache unsafely:
- permissions
- active entitlements without validation strategy
- in-progress attempt drafts without strong consistency guarantees

---

# 21. Performance and reliability requirements

## 21.1 API expectations
- core learner reads should be low-latency
- draft save endpoints must be quick and idempotent where possible
- evaluation endpoints must expose clear async state

## 21.2 Reliability requirements
- no submission loss on long Writing tasks
- resumable audio upload support where feasible
- safe retries for queue jobs
- idempotent webhook handling
- durable audit history for scoring and review operations

## 21.3 Data integrity requirements
- foreign key constraints for all critical relations
- immutable or append-only patterns for evaluation history and audit logs
- soft delete only where appropriate; prefer archive state for content

---

# 22. Testing strategy

## 22.1 Unit tests
Required for:
- score range transformation logic
- readiness rules
- plan generation rules
- entitlement checks
- attempt/review state machines

## 22.2 Integration tests
Required for:
- attempt create/save/submit flow
- evaluation pipeline orchestration
- transcription callback processing
- review request lifecycle
- subscription + credit consumption

## 22.3 Contract tests
Required between frontend and backend for:
- evaluations payloads
- readiness payloads
- study plan payloads
- review queue payloads

## 22.4 Operational tests
- queue retry behavior
- webhook idempotency
- signed upload flow
- permission boundary tests

---

# 23. Migration and seed requirements

## 23.1 Seed data
Must seed:
- roles
- professions
- sub-tests
- criteria
- default plans
- default feature flags

## 23.2 Migration rules
- use additive migrations where possible
- avoid destructive changes to evaluation and audit tables without planned migration path
- preserve backward compatibility for APIs during active frontend work

---

# 24. Suggested implementation order

## Phase A — foundation
- auth and RBAC
- taxonomy tables and seeders
- learner goals/preferences
- content service + content schema
- attempt model and draft save
- object storage integration

## Phase B — Writing MVP
- Writing submission flow
- Writing evaluation pipeline
- feedback persistence
- dashboard data aggregator
- study plan v1
- billing v1
- review requests v1

## Phase C — Speaking MVP
- audio upload flow
- transcription pipeline
- speaking evaluation pipeline
- transcript anchors
- speaking review workflow

## Phase D — Full exam core
- objective scoring for Reading/Listening
- mock engine
- readiness service
- submission history APIs
- richer analytics

## Phase E — Operations and scale
- calibration tooling
- admin analytics
- feature flags
- institution-ready abstractions
- performance optimization and queue hardening

---

# 25. Immediate engineering deliverables to start now

1. Create schema migrations for taxonomy, users, goals, content, attempts, evaluations, reviews, billing, analytics.
2. Stand up auth + RBAC middleware.
3. Implement content read APIs and attempt creation/save/submit APIs.
4. Implement Writing evaluation orchestration with placeholder evaluator contracts if model logic is still being finalized.
5. Implement signed audio upload pipeline and speaking submission records.
6. Implement study plan snapshot generation endpoint.
7. Implement review request creation and reviewer queue APIs.
8. Implement billing plan + entitlement scaffolding.

---

# 26. Final instruction to backend developer

Build this as an auditable assessment platform with learning features layered on top, not as a generic content backend. The most important backend outcomes are:
- no loss of learner work
- robust async evaluation pipelines
- clean, versioned content and scoring records
- trustworthy role enforcement
- safe AI-human workflow coexistence
- backend contracts stable enough for frontend development to begin immediately

This handoff is intentionally detailed enough for architecture setup, schema design, API implementation, and sprint planning to begin right away.

# OET Platform — Complete Product, UX, Frontend, Backend, Data, API, and Delivery Handoff

Version: 1.0  
Prepared for: Product, Frontend Engineering, Backend Engineering, AI/ML, QA, Design, DevOps  
Document purpose: This is the **single source of truth** for building the complete OET preparation platform. It is intended to let development start immediately with no dependency on additional strategic documents.  
Scope note: **This document intentionally excludes the marketing/public website.** It covers only the product platform itself: learner app, expert/reviewer console, admin/CMS, platform services, data, APIs, evaluation systems, analytics, operations, and release planning.

---

## 1. Document intent and definition of done

This document defines the complete implementation blueprint for a world-class OET preparation platform from A to Z. It covers:

- Product vision and operating principles
- Full scope of the learner application
- Full scope of the reviewer/tutor console
- Full scope of the admin/CMS system
- Information architecture
- Screen-by-screen UX flow
- Complete feature inventory
- Functional and non-functional requirements
- Frontend architecture and component model
- Backend architecture and service boundaries
- AI evaluation pipelines
- Database schema
- API design
- Queueing, events, analytics, and observability
- Security, access control, privacy, and operational controls
- Roadmap and phased delivery sequence
- Acceptance criteria and launch-readiness checklist

**Definition of done for this document:** a frontend developer, backend developer, technical lead, and product manager should each be able to start work immediately without needing another foundational product specification.

---

## 2. Product context and official OET alignment

The platform must be built around the current official OET structure, not around generic ESL assumptions.

Key OET facts that directly affect product design:

- OET is designed specifically for healthcare professionals.
- OET is tailored across **12 professions**.
- OET has **four sub-tests**: Listening, Reading, Writing, and Speaking.
- Writing and Speaking are profession-specific.
- Writing is assessed using **six official criteria**.
- Speaking is assessed using **Linguistic Criteria** and **Clinical Communication Criteria**.
- OET reports separate sub-test scores on a **0–500 scale** mapped to letter grades.
- OET does **not** report one overall official score for the entire test.
- OET provides official preparation resources and sample-test ecosystems across professions and delivery modes.

These facts create the core product requirement: this platform must behave like an **OET-native assessment, coaching, and readiness system**, not a generic lesson library.

### 2.1 Supported professions

The platform must be architected for the full 12-profession OET ecosystem:

- Medicine
- Nursing
- Dentistry
- Dietetics
- Occupational Therapy
- Optometry
- Pharmacy
- Physiotherapy
- Podiatry
- Radiology
- Speech Pathology
- Veterinary Science

### 2.2 Why the platform architecture must be profession-first

Profession-specificity affects:

- Writing case notes
- Speaking role plays
- Vocabulary and tone
- Clinical communication coaching
- Model answers and exemplars
- Feedback explanations
- Mock tests and reporting
- Weak-skill remediation
- Content taxonomy and CMS authoring

---

## 3. Product vision, mission, and strategic positioning

### 3.1 Vision

Build the most trusted, profession-specific, criterion-accurate OET preparation platform in the market.

### 3.2 Mission

Help healthcare professionals reach their target OET outcome faster and with greater confidence through:

- simulation-first learning
- criterion-based feedback
- adaptive study planning
- profession-specific realism
- AI speed plus human-review trust

### 3.3 Product positioning

The platform should be superior to:

- pure content libraries because it provides assessment and adaptation
- teacher-only businesses because it provides 24/7 iteration and scale
- generic AI speaking/writing tools because it is OET-native and profession-specific
- mock-only providers because it is an end-to-end operating system for score improvement

### 3.4 Product promise

A learner should be able to:

- understand exactly where they are weak
- know what to do next
- practice under realistic OET conditions
- get useful feedback quickly
- request expert help when needed
- track progress over time
- judge booking readiness conservatively and intelligently

---

## 4. Scope boundaries

### 4.1 Included in scope

#### Learner platform
- onboarding
- profile and goals
- profession selection
- diagnostics
- Writing module
- Speaking module
- Reading module
- Listening module
- mock center
- readiness center
- study planner
- progress dashboards
- submission history
- billing and plan management
- notifications and settings
- accessibility settings

#### Expert / reviewer console
- review queue
- writing review workspace
- speaking review workspace
- SLA management
- learner context access
- calibration center
- assignment workflows
- reviewer performance metrics

#### Admin / CMS
- content library
- task builder
- taxonomy management
- content versioning
- AI evaluation config
- review operations management
- analytics dashboards
- feature flags
- audit logs
- user support tools

#### Platform / engineering
- auth and roles
- data model
- content delivery APIs
- attempt/submission lifecycle
- evaluation orchestration
- AI pipelines
- human review workflows
- billing and entitlements
- event logging
- analytics
- observability
- security

### 4.2 Excluded from scope

- marketing/public website
- CRM and lead-gen pages
- affiliate system
- external blog CMS
- non-OET exams in initial scope
- full marketplace for third-party tutors in initial scope
- native mobile apps in initial phase unless wrapped from web/PWA

---

## 5. Target users and operational personas

### 5.1 Learner personas

#### Persona A: first-time test taker
Needs structure, orientation, and confidence.

#### Persona B: repeater stuck at one sub-test
Needs precision diagnosis and weak-sub-test remediation.

#### Persona C: urgent candidate with booked exam
Needs aggressive prioritization, mock readiness, and fast feedback.

#### Persona D: mobile-first working professional
Needs short sessions, resume capability, and low-friction UX.

#### Persona E: premium learner
Needs human reviews, expert strategy, and accountability.

### 5.2 Internal personas

#### Reviewer
Scores and comments on Writing/Speaking attempts.

#### Tutor/coach
Provides live or asynchronous intervention.

#### Content manager
Authors, edits, versions, and publishes tasks.

#### Admin/operator
Monitors quality, users, plans, entitlements, and incidents.

#### Technical admin
Controls configs, queues, models, thresholds, and rollout flags.

---

## 6. Product principles

1. **OET-native, not generic ESL.**
2. **Criterion-first, not lesson-first.**
3. **Simulation-first, not lecture-first.**
4. **Profession depth is a moat, not a content variation.**
5. **AI-first for speed, human-in-the-loop for trust.**
6. **Conservative readiness, not false certainty.**
7. **One clear next action at all times.**
8. **Everything measurable, versioned, and auditable.**
9. **Accessibility and low-friction performance are mandatory.**
10. **Every feature must reduce retakes, uncertainty, or wasted study time.**

---

## 7. Success metrics

### 7.1 Activation
- signup to goal setup completion
- goal setup to diagnostic completion
- diagnostic completion to first evaluated submission
- first-day first-value time

### 7.2 Engagement
- weekly active learners
- tasks completed per week
- evaluator feedback views per attempt
- revision rate after Writing/Speaking feedback
- study plan adherence

### 7.3 Learning outcomes
- criterion score improvement over time
- weakest-link reduction rate
- mock-to-mock improvement
- readiness score progression
- self-reported official score attainment

### 7.4 Commercial
- free-to-paid conversion
- paid retention by month
- review-credit purchase rate
- premium upsell rate
- institution seat usage

### 7.5 Trust and quality
- AI-human agreement rate
- evaluator low-confidence routing rate
- review appeal rate
- feedback helpfulness rating
- content defect rate
- evaluator SLA compliance

---

## 8. Product surfaces

The platform consists of three product surfaces.

### 8.1 Learner app
Primary system for candidates.

### 8.2 Expert console
Primary system for reviewers and tutors.

### 8.3 Admin/CMS
Primary system for content, model config, quality, and operations.

---

## 9. Information architecture

## 9.1 Learner app IA
- Dashboard
- Study Plan
- Writing
- Speaking
- Reading
- Listening
- Mock Center
- Readiness
- Progress
- Reviews / Expert Help
- Submission History
- Billing
- Settings

## 9.2 Expert console IA
- Review Queue
- Assigned Learners
- Writing Review Workspace
- Speaking Review Workspace
- Calibration Center
- Live Session Schedule
- Reviewer Metrics
- Availability / Payouts

## 9.3 Admin/CMS IA
- Overview Dashboard
- Content Library
- Task Builder
- Revisions
- Taxonomies
- Evaluation Configurations
- Model Versions
- Review Operations
- User Management
- Subscription Ops
- Analytics
- Quality Monitoring
- Feature Flags
- Audit Logs

---

## 10. End-to-end learner UX flow

## 10.1 Authentication and entry

### Screen: Sign in / Create account
Purpose:
- create authenticated account
- support email/password and social login

Requirements:
- secure auth
- password reset
- email verification optional in MVP but recommended
- ability to resume incomplete onboarding

### Screen: Goal setup
Fields:
- profession
- target exam date
- target scores by sub-test
- previous OET attempts
- weak sub-test self-report
- available study hours per week
- goal type

Output:
- learner goal profile

### Screen: Diagnostic intro
Communicates:
- what the diagnostic includes
- approximate time required
- what results mean
- estimates are training estimates, not official scores

## 10.2 Diagnostic sequence

### Screen: Diagnostic hub
Contains staged cards for:
- Writing snapshot
- Speaking snapshot
- Reading quick-check
- Listening quick-check

Requirements:
- progress state
- save and resume
- partial completion support

### Screen: Writing diagnostic
Components:
- case notes
- response editor
- timer
- scratchpad
- submit

### Screen: Speaking diagnostic
Components:
- role card
- prep timer
- microphone check
- recording flow
- transcript preview after upload if available

### Screen: Reading diagnostic
Components:
- timed short set
- instant scoring

### Screen: Listening diagnostic
Components:
- audio player
- timed answers
- instant scoring where possible

### Screen: Diagnostic results
Must display:
- readiness by sub-test
- weak criteria
- likely blockers
- recommended plan intensity
- immediate next recommended task
- clear label that these are estimates

## 10.3 Core study loop

### Screen: Dashboard
Must show:
- current readiness snapshot
- target exam date
- today’s tasks
- latest scored submission
- weak criteria
- next mock recommendation
- plan adherence

Primary user question answered:
- “What should I do next?”

### Screen: Study plan
Shows:
- today’s tasks
- this week’s tasks
- next checkpoint
- rationale for each recommendation

Actions:
- start task
- reschedule
- skip
- swap with similar task

## 10.4 Writing flow

### Screen: Writing home
Sections:
- recommended task
- practice library
- criterion drills
- past submissions
- full mock writing
- expert review credits

### Screen: Writing task selection
Filters:
- profession
- difficulty
- criterion focus
- task type
- timed/untimed

### Screen: Writing player
Layout:
- case notes panel
- editor
- timer
- scratchpad
- checklist

Requirements:
- autosave
- draft persistence
- exam mode minimal chrome
- confirm before submission

### Screen: Writing result summary
Must display:
- estimated score range
- estimated grade range if used
- six official Writing criteria breakdown
- top 3 issues
- strengths
- model confidence

### Screen: Writing detailed feedback
Sections mapped to:
- Purpose
- Content
- Conciseness & Clarity
- Genre & Style
- Organisation & Layout
- Language

Features:
- paragraph comments
- missing relevant details
- unnecessary detail flags
- tone issues
- revision suggestions
- linked anchors to text spans

### Screen: Writing revision mode
Features:
- draft 1 vs draft 2 compare
- highlighted changes
- criterion delta
- unresolved issues

### Screen: Model answer explainer
Features:
- annotated model
- why each section works
- what should and should not be included
- criterion mapping
- profession-specific commentary

### Screen: Request expert review
Fields:
- review type
- turnaround priority
- focus notes
- credit/payment selection

## 10.5 Speaking flow

### Screen: Speaking home
Sections:
- recommended role play
- clinical communication drills
- pronunciation/intelligibility drills
- past attempts
- expert help

### Screen: Mic/environment check
Requirements:
- microphone permission
- sample recording
- noise detection warning
- playback verification

### Screen: Role-card preview
Features:
- role card
- prep time
- notes area
- begin action

### Screen: Speaking player
Modes:
- AI interlocutor mode
- self-practice mode
- exam simulation mode

Requirements:
- stable recording
- elapsed time
- prompt progression
- safe recovery on connectivity interruption where feasible

### Screen: Speaking result summary
Must display:
- estimated score range
- criteria summary
- top strengths
- top improvement areas
- model confidence
- next recommended drill

### Screen: Transcript and audio review
Features:
- transcript pane
- waveform/audio player
- inline flags
- click transcript to jump audio timestamp

Flag categories:
- pronunciation/intelligibility
- fluency/pacing
- missed empathy opportunity
- poor explanation
- weak structure
- abrupt or inappropriate register

### Screen: Better phrasing coach
For each flagged moment:
- what was said
- what issue occurred
- better alternative phrasing
- short repetition drill

### Screen: Request expert speaking review
Fields:
- review type
- focus area
- urgency
- notes

## 10.6 Reading flow

### Screen: Reading home
Sections:
- part-based practice
- speed drills
- accuracy drills
- weak-skill drills
- mock sets

### Screen: Reading player
Requirements:
- passage and questions
- timer
- practice mode explanations
- strict mode option

### Screen: Reading result
Must display:
- score
- item-by-item explanation
- skill tags for wrong answers
- recommended follow-up

## 10.7 Listening flow

### Screen: Listening home
Sections:
- part-based practice
- distractor training
- transcript-supported review
- mock sets

### Screen: Listening player
Requirements:
- audio controls appropriate to mode
- answer capture
- timer
- clear progress state

### Screen: Listening result
Must display:
- score
- transcript reveal in practice mode
- error reasons
- recommended next tasks

## 10.8 Mock and readiness flow

### Screen: Mock center
Sections:
- sub-test mocks
- full mocks
- history
- purchased review options

### Screen: Mock setup
Inputs:
- sub-test only or full mock
- practice vs strict mode
- profession for Writing/Speaking
- include review or not

### Screen: Mock report
Must display:
- sub-test breakdown
- weakest criterion
- comparison with prior mocks
- study plan update

### Screen: Readiness center
Must answer:
- am I ready?
- what is blocking me?
- what should I do before booking?

Must include:
- readiness by sub-test
- weakest-link alert
- target-date risk
- evidence summary
- conservative confidence framing

## 10.9 Progress and account flow

### Screen: Progress dashboard
Charts:
- sub-test trend
- criteria trend
- completion trend
- revision trend

### Screen: Submission history
Actions:
- reopen feedback
- compare attempts
- duplicate similar task

### Screen: Billing
Includes:
- current plan
- credit balances
- invoices
- upgrade/downgrade
- extra review purchase

### Screen: Settings
Sections:
- profile
- goals
- notifications
- privacy
- audio permissions
- accessibility
- low-bandwidth mode

---

## 11. Expert console UX flow

### Screen: Review queue
Filters:
- Writing/Speaking
- profession
- SLA due soon
- low-confidence AI cases
- reviewer assignment
- premium priority

### Screen: Writing review workspace
Must display:
- learner submission
- source case notes
- AI draft feedback
- rubric form
- reviewer comment fields
- send review action

### Screen: Speaking review workspace
Must display:
- role card
- transcript
- audio playback
- AI draft feedback
- reviewer rubric
- send review action

### Screen: Learner context
Shows:
- learner goals
- recent attempts
- prior reviews
- weak criteria trends

### Screen: Calibration center
Functions:
- gold-standard benchmark cases
- reviewer comparison
- calibration history
- flagged disagreement review

### Screen: Reviewer performance
Metrics:
- average turnaround
- agreement rate with gold set
- workload
- learner satisfaction

---

## 12. Admin/CMS UX flow

### Screen: Admin dashboard
Widgets:
- active users
- review queue health
- AI-human disagreement rate
- failing jobs
- plan conversion
- content status

### Screen: Content library
Filters:
- profession
- sub-test
- difficulty
- status
- author
- version

### Screen: Task builder
Must support:
- Writing task creation
- Speaking task creation
- Reading set creation
- Listening set creation
- metadata tagging
- exemplar/model content
- review checklist attachment

### Screen: Revisions
Must support:
- revision history
- diff view
- rollback
- publish/archive

### Screen: Taxonomy manager
Controls:
- professions
- sub-tests
- criteria
- tags
- difficulty ladders

### Screen: Evaluation config
Controls:
- model versions
- threshold settings
- prompt or rubric config
- low-confidence routing rules
- experiment toggles

### Screen: Quality dashboard
Must display:
- content performance
- evaluator confidence drift
- AI-human divergence
- escalation rate
- fairness monitoring metrics

### Screen: User ops
Functions:
- view user profile
- view subscriptions
- grant credits
- suspend/restore
- impersonation with audit if permitted

### Screen: Feature flags
Functions:
- staged rollout
- audience targeting
- emergency rollback

### Screen: Audit logs
Must show:
- actor
- action
- timestamp
- object affected
- previous/new value if relevant

---

## 13. Complete feature inventory

This section is the exhaustive feature checklist and must be treated as the master feature set.

### 13.1 Account and identity
- signup
- login
- logout
- password reset
- email verification optional/controlled
- social auth
- session management
- role-based access control
- profile management

### 13.2 Learner profile and goals
- profession selection
- target exam date
- target sub-test scores
- goal type
- prior attempts
- available study hours
- timezone and country
- accessibility preferences
- low-bandwidth mode

### 13.3 Diagnostics
- multi-part diagnostic hub
- Writing diagnostic
- Speaking diagnostic
- Reading quick-check
- Listening quick-check
- readiness summary
- weak-criteria detection
- study plan generation

### 13.4 Study planner
- daily queue
- weekly milestones
- adaptive reprioritization
- missed-task handling
- retake rescue mode
- exam-date-aware pacing
- swap/reschedule tasks
- next best action logic

### 13.5 Writing module
- task library
- timed and untimed modes
- editor and autosave
- scratchpad
- task metadata filters
- AI evaluation
- criterion-level scores
- detailed feedback
- anchors to text spans
- model confidence
- revision mode
- compare attempts
- annotated model answers
- expert review requests
- writing progress tracking

### 13.6 Speaking module
- role-play library
- AI interlocutor mode
- self-practice mode
- exam simulation mode
- microphone check
- audio recording/upload
- transcript generation
- speech features extraction
- AI evaluation
- criteria breakdown
- transcript/audio synced feedback
- better phrasing suggestions
- expert review requests
- speaking progress tracking

### 13.7 Reading module
- part-based library
- strict/practice mode
- timer
- answer review
- error taxonomy
- follow-up drill recommendations
- history tracking

### 13.8 Listening module
- part-based library
- strict/practice mode
- audio player
- answer capture
- transcript review
- distractor explanations
- history tracking

### 13.9 Mock center
- sub-test mocks
- full mocks
- mock setup
- strict mode
- mock reports
- progress comparison
- mock-linked study plan updates
- optional review purchase

### 13.10 Readiness center
- readiness by sub-test
- weakest-link detection
- date-risk indicator
- evidence-based explanation
- conservative recommendation layer

### 13.11 Progress and history
- dashboard trends
- attempt history
- compare attempts
- filter by sub-test/profession
- latest achievements
- streak/consistency metrics

### 13.12 Reviews and tutoring
- review request creation
- review queueing
- reviewer assignment
- reviewer comments and rubric scoring
- SLA tracking
- delivery of final review
- live session scheduling placeholder/optional module
- calibration workflows

### 13.13 Billing and entitlements
- plans
- subscriptions
- invoices
- payment provider integration
- review credits
- extra credit purchase
- subscription status changes
- trial/grace logic if used

### 13.14 Notifications
- email notifications
- in-app notifications
- submission status
- evaluation ready
- review completed
- billing reminders
- study reminder preferences

### 13.15 CMS and content ops
- content creation
- metadata tagging
- versioning
- publishing
- archiving
- diffing
- model answers
- checklist attachment
- quality notes
- batch update utilities if needed

### 13.16 Admin and platform ops
- dashboard
- user ops
- subscription ops
- review ops
- config management
- feature flags
- audit logs
- analytics access
- support notes

### 13.17 AI/ML and evaluation system
- preprocessing
- prompt/rubric versions
- confidence scoring
- evaluation storage
- routing rules
- human escalation
- revision-aware evaluation
- quality benchmarking
- fairness monitoring

### 13.18 Analytics and experimentation
- event tracking
- warehouse export
- reporting dashboards
- funnel metrics
- learning outcomes metrics
- quality metrics
- experiment support

### 13.19 Accessibility and resilience
- keyboard support
- font scaling where needed
- caption/transcript support
- low-bandwidth mode
- resumable uploads
- autosave and restore
- device/mic permission guidance

---

## 14. Frontend implementation specification

## 14.1 Frontend architecture goals

- fast, modular, typed UI architecture
- reusable components across learner, reviewer, and admin surfaces
- predictable state management
- resilient async handling for evaluation workflows
- excellent editor/audio UX for Writing and Speaking

## 14.2 Suggested frontend stack

Recommended baseline:
- React + TypeScript
- Next.js or similar app framework with authenticated app routing
- TanStack Query or equivalent for server state
- Zustand/Redux Toolkit or equivalent for client state where needed
- component library + design tokens
- form library with schema validation
- charting library for progress dashboards
- rich text/plain editor optimized for writing tasks
- waveform/audio player component for Speaking review

## 14.3 Route map

### Learner routes
- `/app`
- `/app/onboarding`
- `/app/diagnostic`
- `/app/dashboard`
- `/app/plan`
- `/app/writing`
- `/app/writing/tasks/:id`
- `/app/writing/attempts/:id`
- `/app/speaking`
- `/app/speaking/tasks/:id`
- `/app/speaking/attempts/:id`
- `/app/reading`
- `/app/listening`
- `/app/mocks`
- `/app/mocks/:id`
- `/app/readiness`
- `/app/progress`
- `/app/reviews`
- `/app/history`
- `/app/billing`
- `/app/settings`

### Reviewer routes
- `/reviewer`
- `/reviewer/queue`
- `/reviewer/writing/:reviewId`
- `/reviewer/speaking/:reviewId`
- `/reviewer/calibration`
- `/reviewer/metrics`

### Admin routes
- `/admin`
- `/admin/content`
- `/admin/content/:id`
- `/admin/taxonomy`
- `/admin/evaluation-config`
- `/admin/review-ops`
- `/admin/users`
- `/admin/billing`
- `/admin/analytics`
- `/admin/quality`
- `/admin/flags`
- `/admin/audit`

## 14.4 Core frontend component inventory

### Shared app shell
- authenticated layout
- side navigation
- breadcrumbs
- notification center
- toasts
- loading overlays
- empty states
- error boundaries

### Inputs and form components
- text input
- select/dropdown
- searchable select
- date picker
- slider
- radio groups
- segmented controls
- form validation errors

### Assessment components
- timer
- attempt progress indicator
- autosave badge
- text editor
- scratchpad panel
- case-notes panel
- role-card panel
- audio recorder
- waveform player
- transcript viewer
- anchor highlighter
- criteria score cards
- confidence indicator
- feedback cards
- compare drafts view
- model answer explainer panels

### Dashboard components
- readiness cards
- trend charts
- weak-skill heatmap
- next-action card
- plan item cards
- task list
- KPI metric cards

### Review console components
- queue table
- rubric form
- learner context sidebar
- transcript/audio review panels
- SLA chips
- calibration diff views

### Admin components
- content table
- revision diff viewer
- JSON editor where needed
- config panels
- feature flag controls
- audit trail table

## 14.5 Frontend state model

### Global state
- auth/session state
- user profile summary
- current goals
- feature flags
- notification counts

### Route-level state
- current attempt session
- unsaved writing draft
- active recording state
- selected filters
- evaluation view state

### Async states to implement consistently
- idle
- loading
- partial data loaded
- submitting
- processing
- evaluated
- failed
- low-confidence / awaiting human review

## 14.6 Frontend performance requirements

- initial authenticated dashboard render should feel under 2 seconds on normal connections
- editor must remain responsive for long text submissions
- autosave should be non-blocking
- transcript pages should lazy-load heavy media assets
- charts and tables should virtualize where required

## 14.7 Frontend accessibility requirements

- keyboard navigability
- semantic labels and ARIA support
- visible focus states
- contrast compliance
- captions/transcripts available where audio exists
- large-hit-area controls for recording and submission

## 14.8 Frontend acceptance criteria

A frontend release is not complete unless:
- all major flows work on modern desktop browsers
- writing autosave and recovery work reliably
- speaking recording flow is stable and understandable
- error states are implemented for all async submission/evaluation flows
- no screen leaves the user without a clear next action

---

## 15. Backend implementation specification

## 15.1 Backend architecture goals

- modular domain services
- strict auditability for scoring and reviews
- async-friendly evaluation orchestration
- strong schema discipline
- flexible support for content/version evolution
- safe handling of media and evaluations

## 15.2 Suggested backend stack

Recommended baseline:
- TypeScript/Node.js, Go, Java, or equivalent service stack
- PostgreSQL for transactional relational data
- Redis for caches and transient workflow locks if needed
- object storage for audio/transcripts/assets
- message queue / job system for async evaluation
- warehouse or analytical store for event analytics
- API gateway or BFF layer if desired

## 15.3 Service boundaries

### Identity Service
Responsibilities:
- auth
- sessions
- roles
- profile basics

### Learner Profile Service
Responsibilities:
- goals
- preferences
- readiness snapshots
- plan ownership

### Content Service
Responsibilities:
- content retrieval
- metadata
- content revisions
- taxonomy support
- publish/archive workflows

### Attempt Service
Responsibilities:
- attempt creation
- draft persistence
- submit lifecycle
- status transitions

### Media Service
Responsibilities:
- presigned uploads
- storage metadata
- waveform/transcript associations
- secure media retrieval

### Evaluation Orchestrator
Responsibilities:
- dispatch submissions to evaluators
- manage workflow states
- confidence computation
- route low-confidence cases
- persist outputs

### Writing Evaluation Service
Responsibilities:
- preprocess submission
- run rubric-aligned analysis
- produce criterion results
- generate anchored feedback

### Speaking Evaluation Service
Responsibilities:
- transcription orchestration
- speech-feature analysis
- rubric-aligned analysis
- anchored transcript/audio feedback

### Objective Scoring Service
Responsibilities:
- Reading/Listening answer scoring
- explanation retrieval/generation

### Recommendation Service
Responsibilities:
- study plans
- next-task ranking
- readiness computation
- rescheduling logic

### Review Ops Service
Responsibilities:
- review request handling
- queueing
- assignment
- reviewer outputs
- calibration workflows

### Billing Service
Responsibilities:
- plans
- subscriptions
- credits
- payment webhooks
- entitlement evaluation

### Notification Service
Responsibilities:
- email/in-app notifications
- reminder triggers
- review completion events

### Admin Service
Responsibilities:
- configs
- flags
- support actions
- operational reporting

### Analytics/Event Service
Responsibilities:
- event ingestion
- event validation
- warehouse forwarding

---

## 16. Data model and relational schema

Below is the implementation-grade baseline schema.

## 16.1 Identity and roles

### `users`
- `id` UUID PK
- `email` VARCHAR UNIQUE NOT NULL
- `password_hash` VARCHAR NULL
- `auth_provider` VARCHAR NOT NULL DEFAULT 'local'
- `status` VARCHAR NOT NULL
- `created_at` TIMESTAMP NOT NULL
- `updated_at` TIMESTAMP NOT NULL

### `user_profiles`
- `user_id` UUID PK FK -> users.id
- `first_name` VARCHAR
- `last_name` VARCHAR
- `country_code` VARCHAR(2)
- `timezone` VARCHAR
- `preferred_language` VARCHAR
- `avatar_url` TEXT NULL
- `created_at` TIMESTAMP
- `updated_at` TIMESTAMP

### `roles`
- `id` UUID PK
- `name` VARCHAR UNIQUE

### `user_roles`
- `user_id` UUID FK -> users.id
- `role_id` UUID FK -> roles.id
- PK (`user_id`, `role_id`)

## 16.2 Learner goals and preferences

### `learner_goals`
- `id` UUID PK
- `user_id` UUID FK
- `profession_id` UUID FK
- `target_country_code` VARCHAR(2) NULL
- `target_exam_date` DATE NULL
- `target_listening_score` INT NULL
- `target_reading_score` INT NULL
- `target_writing_score` INT NULL
- `target_speaking_score` INT NULL
- `goal_type` VARCHAR NOT NULL
- `study_hours_per_week` INT NULL
- `previous_attempts_count` INT DEFAULT 0
- `created_at` TIMESTAMP
- `updated_at` TIMESTAMP

### `learner_preferences`
- `user_id` UUID PK FK
- `notifications_enabled` BOOLEAN DEFAULT TRUE
- `low_bandwidth_mode` BOOLEAN DEFAULT FALSE
- `accessibility_options` JSONB
- `daily_study_time_preference` VARCHAR NULL
- `device_preference` VARCHAR NULL
- `updated_at` TIMESTAMP

## 16.3 Taxonomies

### `professions`
- `id` UUID PK
- `slug` VARCHAR UNIQUE
- `name` VARCHAR UNIQUE
- `is_active` BOOLEAN
- `sort_order` INT

### `subtests`
- `id` UUID PK
- `code` VARCHAR UNIQUE
- `name` VARCHAR UNIQUE

### `criteria`
- `id` UUID PK
- `subtest_id` UUID FK
- `code` VARCHAR
- `name` VARCHAR
- `description` TEXT
- `sort_order` INT
- UNIQUE (`subtest_id`, `code`)

### `scenario_tags`
- `id` UUID PK
- `category` VARCHAR
- `name` VARCHAR
- UNIQUE (`category`, `name`)

## 16.4 Content

### `content_items`
- `id` UUID PK
- `content_type` VARCHAR NOT NULL
- `title` VARCHAR NOT NULL
- `slug` VARCHAR UNIQUE NOT NULL
- `profession_id` UUID NULL FK
- `subtest_id` UUID FK
- `difficulty_level` VARCHAR NOT NULL
- `status` VARCHAR NOT NULL
- `version` INT NOT NULL DEFAULT 1
- `estimated_duration_minutes` INT
- `metadata` JSONB
- `created_by` UUID FK -> users.id
- `created_at` TIMESTAMP
- `updated_at` TIMESTAMP

### `content_item_tags`
- `content_item_id` UUID FK
- `tag_id` UUID FK
- PK (`content_item_id`, `tag_id`)

### `content_revisions`
- `id` UUID PK
- `content_item_id` UUID FK
- `revision_number` INT NOT NULL
- `payload` JSONB NOT NULL
- `change_notes` TEXT
- `created_by` UUID FK
- `created_at` TIMESTAMP
- UNIQUE (`content_item_id`, `revision_number`)

### `content_criteria_map`
- `content_item_id` UUID FK
- `criteria_id` UUID FK
- `weight` NUMERIC NULL
- PK (`content_item_id`, `criteria_id`)

### `writing_task_payloads`
- `content_item_id` UUID PK FK
- `prompt_text` TEXT
- `case_notes_json` JSONB
- `model_answer_json` JSONB
- `review_checklist_json` JSONB

### `speaking_task_payloads`
- `content_item_id` UUID PK FK
- `role_card_json` JSONB
- `ai_interlocutor_script_json` JSONB
- `model_response_json` JSONB
- `review_checklist_json` JSONB

### `reading_set_payloads`
- `content_item_id` UUID PK FK
- `passages_json` JSONB
- `questions_json` JSONB
- `answer_key_json` JSONB

### `listening_set_payloads`
- `content_item_id` UUID PK FK
- `audio_asset_id` UUID FK -> media_assets.id
- `questions_json` JSONB
- `answer_key_json` JSONB
- `transcript_json` JSONB

## 16.5 Media

### `media_assets`
- `id` UUID PK
- `asset_type` VARCHAR NOT NULL
- `storage_url` TEXT NOT NULL
- `mime_type` VARCHAR NOT NULL
- `duration_seconds` INT NULL
- `checksum` VARCHAR NULL
- `created_at` TIMESTAMP

## 16.6 Attempts and submissions

### `attempts`
- `id` UUID PK
- `user_id` UUID FK
- `content_item_id` UUID FK
- `mode` VARCHAR NOT NULL
- `status` VARCHAR NOT NULL
- `started_at` TIMESTAMP NOT NULL
- `submitted_at` TIMESTAMP NULL
- `duration_seconds` INT NULL
- `attempt_number` INT NOT NULL DEFAULT 1
- `parent_attempt_id` UUID NULL FK -> attempts.id
- `source` VARCHAR NULL

### `writing_submissions`
- `attempt_id` UUID PK FK
- `response_text` TEXT NOT NULL
- `word_count` INT NOT NULL
- `draft_metadata` JSONB NULL

### `speaking_submissions`
- `attempt_id` UUID PK FK
- `audio_asset_id` UUID FK -> media_assets.id
- `transcript_asset_id` UUID NULL FK -> media_assets.id
- `transcript_text` TEXT NULL
- `speech_features_json` JSONB NULL

### `objective_submissions`
- `attempt_id` UUID PK FK
- `answers_json` JSONB NOT NULL
- `score_raw` INT NULL
- `score_percent` NUMERIC NULL

## 16.7 Evaluation and feedback

### `evaluations`
- `id` UUID PK
- `attempt_id` UUID FK
- `evaluation_type` VARCHAR NOT NULL
- `status` VARCHAR NOT NULL
- `model_version` VARCHAR NULL
- `confidence_score` NUMERIC NULL
- `overall_score_min` INT NULL
- `overall_score_max` INT NULL
- `grade_estimate_min` VARCHAR NULL
- `grade_estimate_max` VARCHAR NULL
- `created_at` TIMESTAMP NOT NULL

### `criterion_scores`
- `id` UUID PK
- `evaluation_id` UUID FK
- `criteria_id` UUID FK
- `score_min` NUMERIC NULL
- `score_max` NUMERIC NULL
- `band_label` VARCHAR NULL
- `confidence_score` NUMERIC NULL

### `feedback_anchors`
- `id` UUID PK
- `attempt_id` UUID FK
- `anchor_type` VARCHAR NOT NULL
- `start_offset` INT NULL
- `end_offset` INT NULL
- `start_ms` INT NULL
- `end_ms` INT NULL
- `label` VARCHAR NULL

### `feedback_items`
- `id` UUID PK
- `evaluation_id` UUID FK
- `feedback_type` VARCHAR NOT NULL
- `anchor_ref` UUID NULL FK -> feedback_anchors.id
- `body` TEXT NOT NULL
- `severity` VARCHAR NULL
- `metadata` JSONB NULL

### `evaluation_audit_logs`
- `id` UUID PK
- `evaluation_id` UUID FK
- `event_type` VARCHAR NOT NULL
- `payload` JSONB NOT NULL
- `created_at` TIMESTAMP NOT NULL

## 16.8 Study planning and readiness

### `study_plans`
- `id` UUID PK
- `user_id` UUID FK
- `version` INT NOT NULL
- `status` VARCHAR NOT NULL
- `generated_by` VARCHAR NOT NULL
- `created_at` TIMESTAMP NOT NULL

### `study_plan_items`
- `id` UUID PK
- `study_plan_id` UUID FK
- `scheduled_for` TIMESTAMP NULL
- `content_item_id` UUID NULL FK
- `task_type` VARCHAR NOT NULL
- `priority_score` NUMERIC NOT NULL
- `reason_text` TEXT NULL
- `status` VARCHAR NOT NULL

### `readiness_snapshots`
- `id` UUID PK
- `user_id` UUID FK
- `created_at` TIMESTAMP NOT NULL
- `listening_readiness` NUMERIC NULL
- `reading_readiness` NUMERIC NULL
- `writing_readiness` NUMERIC NULL
- `speaking_readiness` NUMERIC NULL
- `weakest_link_subtest` VARCHAR NULL
- `target_date_risk` VARCHAR NULL
- `explanation_json` JSONB NULL

## 16.9 Reviews and reviewer ops

### `review_requests`
- `id` UUID PK
- `attempt_id` UUID FK
- `requested_by_user_id` UUID FK
- `review_type` VARCHAR NOT NULL
- `priority` VARCHAR NOT NULL
- `status` VARCHAR NOT NULL
- `assigned_reviewer_id` UUID NULL FK -> users.id
- `sla_due_at` TIMESTAMP NULL
- `notes` TEXT NULL
- `created_at` TIMESTAMP NOT NULL

### `review_outputs`
- `id` UUID PK
- `review_request_id` UUID FK
- `evaluation_id` UUID FK
- `reviewer_id` UUID FK
- `sent_to_user_at` TIMESTAMP NULL

### `reviewer_calibration_scores`
- `id` UUID PK
- `reviewer_id` UUID FK
- `benchmark_case_id` UUID NOT NULL
- `score_alignment` NUMERIC NULL
- `notes` TEXT NULL
- `created_at` TIMESTAMP NOT NULL

## 16.10 Billing and commerce

### `plans`
- `id` UUID PK
- `name` VARCHAR NOT NULL
- `billing_interval` VARCHAR NOT NULL
- `price_minor` INT NOT NULL
- `currency` VARCHAR NOT NULL
- `features_json` JSONB NOT NULL

### `subscriptions`
- `id` UUID PK
- `user_id` UUID FK
- `plan_id` UUID FK
- `status` VARCHAR NOT NULL
- `started_at` TIMESTAMP NOT NULL
- `renews_at` TIMESTAMP NULL
- `ended_at` TIMESTAMP NULL

### `credit_wallets`
- `id` UUID PK
- `user_id` UUID FK
- `credit_type` VARCHAR NOT NULL
- `balance` INT NOT NULL DEFAULT 0

### `transactions`
- `id` UUID PK
- `user_id` UUID FK
- `type` VARCHAR NOT NULL
- `amount_minor` INT NOT NULL
- `currency` VARCHAR NOT NULL
- `provider` VARCHAR NOT NULL
- `provider_ref` VARCHAR NULL
- `status` VARCHAR NOT NULL
- `created_at` TIMESTAMP NOT NULL

## 16.11 Notifications and analytics

### `notifications`
- `id` UUID PK
- `user_id` UUID FK
- `channel` VARCHAR NOT NULL
- `type` VARCHAR NOT NULL
- `payload` JSONB NOT NULL
- `status` VARCHAR NOT NULL
- `created_at` TIMESTAMP NOT NULL
- `sent_at` TIMESTAMP NULL

### `event_log`
- `id` UUID PK
- `user_id` UUID NULL
- `session_id` VARCHAR NULL
- `event_name` VARCHAR NOT NULL
- `occurred_at` TIMESTAMP NOT NULL
- `properties` JSONB NOT NULL

### `feature_flags`
- `id` UUID PK
- `key` VARCHAR UNIQUE NOT NULL
- `description` TEXT NULL
- `state` VARCHAR NOT NULL
- `rules_json` JSONB NULL

### `audit_logs`
- `id` UUID PK
- `actor_user_id` UUID NULL
- `actor_role` VARCHAR NULL
- `action` VARCHAR NOT NULL
- `object_type` VARCHAR NOT NULL
- `object_id` VARCHAR NOT NULL
- `before_json` JSONB NULL
- `after_json` JSONB NULL
- `created_at` TIMESTAMP NOT NULL

---

## 17. Attempt and evaluation state machines

## 17.1 Attempt state machine

States:
- `started`
- `drafting`
- `submitted`
- `processing`
- `evaluated`
- `awaiting_human_review`
- `reviewed`
- `abandoned`
- `failed`

Transitions:
- start -> drafting
- drafting -> submitted
- submitted -> processing
- processing -> evaluated
- processing -> awaiting_human_review
- awaiting_human_review -> reviewed
- drafting -> abandoned
- processing -> failed

## 17.2 Review request state machine

States:
- `requested`
- `queued`
- `assigned`
- `in_review`
- `completed`
- `returned`
- `cancelled`

## 17.3 Evaluation state machine

States:
- `queued`
- `running`
- `completed`
- `low_confidence`
- `escalated`
- `failed`

---

## 18. API design

All external APIs should be versioned under `/v1`.

## 18.1 Auth and profile APIs

### `POST /v1/auth/signup`
Create account.

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

### `POST /v1/auth/forgot-password`

### `POST /v1/auth/reset-password`

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

## 18.2 Taxonomy and content APIs

### `GET /v1/professions`

### `GET /v1/subtests`

### `GET /v1/criteria?subtest=writing`

### `GET /v1/content`
Query params:
- professionId
- subtest
- difficulty
- criteria
- contentType
- mode
- page
- pageSize

### `GET /v1/content/{contentId}`

### `GET /v1/content/{contentId}/preview`

## 18.3 Attempts and submissions APIs

### `POST /v1/attempts`
```json
{
  "contentItemId": "cnt_123",
  "mode": "practice",
  "source": "planner"
}
```

### `GET /v1/attempts/{attemptId}`

### `PATCH /v1/attempts/{attemptId}/draft`
For Writing draft save.

```json
{
  "responseText": "Dear Dr Smith..."
}
```

### `POST /v1/attempts/{attemptId}/upload-audio`
Returns presigned upload URL.

### `POST /v1/attempts/{attemptId}/submit`

### `POST /v1/attempts/{attemptId}/abandon`

### `GET /v1/me/attempts`

## 18.4 Evaluations and feedback APIs

### `GET /v1/attempts/{attemptId}/evaluation`

### `GET /v1/evaluations/{evaluationId}`

### `GET /v1/evaluations/{evaluationId}/feedback`

Example response:
```json
{
  "evaluationId": "eval_123",
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

### `POST /v1/attempts/{attemptId}/re-evaluate`
For revised content or model refresh.

## 18.5 Study plan and readiness APIs

### `GET /v1/me/study-plan`

### `POST /v1/me/study-plan/regenerate`

### `PATCH /v1/me/study-plan/items/{itemId}`
```json
{
  "status": "rescheduled",
  "scheduledFor": "2026-03-21T18:00:00Z"
}
```

### `GET /v1/me/readiness`

Example response:
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

## 18.6 Reviews APIs

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

## 18.7 Billing APIs

### `GET /v1/plans`

### `GET /v1/me/subscription`

### `POST /v1/billing/checkout-session`

### `POST /v1/me/credits/purchase`

### `GET /v1/me/transactions`

## 18.8 Admin APIs

### `GET /v1/admin/content`

### `POST /v1/admin/content`

### `PATCH /v1/admin/content/{contentId}`

### `POST /v1/admin/content/{contentId}/publish`

### `POST /v1/admin/content/{contentId}/archive`

### `GET /v1/admin/review-queue`

### `POST /v1/admin/evaluation-configs`

### `GET /v1/admin/analytics/quality`

### `GET /v1/admin/audit-logs`

---

## 19. Evaluation pipelines

## 19.1 Writing evaluation pipeline

1. attempt submitted
2. payload normalized
3. task expectations loaded from content service
4. evaluator computes:
   - task completion indicators
   - content inclusion/exclusion analysis
   - structure analysis
   - language analysis
   - criterion reasoning
5. confidence model computes output confidence
6. low-confidence case may be escalated automatically
7. evaluation stored with criterion scores and feedback anchors
8. study plan regenerated if needed
9. user notified when evaluation ready

### Writing evaluator output requirements
- score range estimate
- six-criteria breakdown
- issue prioritization
- missing relevant details
- unnecessary detail flags
- tone/register issues
- revision suggestions
- anchor mapping to text spans
- confidence score

## 19.2 Speaking evaluation pipeline

1. audio upload completed
2. transcription job runs
3. speech features extracted
4. role/task context loaded
5. evaluator computes:
   - intelligibility indicators
   - fluency/pacing indicators
   - language control indicators
   - clinical communication behaviors
6. feedback anchors mapped to transcript spans and timestamps
7. confidence model runs
8. low-confidence case routed if needed
9. evaluation stored
10. study plan updated
11. user notified

### Speaking evaluator output requirements
- score range estimate
- criteria breakdown
- transcript annotations
- pronunciation/intelligibility flags
- pacing/fluency flags
- empathy/structure/explanation feedback
- better-phrasing suggestions
- confidence score

## 19.3 Reading/Listening scoring pipeline

1. answers submitted
2. answer key scored
3. explanations attached/generated
4. weakness tags assigned
5. results stored
6. recommendation service updated

---

## 20. Recommendation and study planning logic

Use a hybrid rules-plus-model approach.

## 20.1 Inputs
- last attempts
- criterion history
- exam date
- weekly availability
- skipped/completed tasks
- readiness snapshots
- review feedback
- mode preference

## 20.2 Outputs
- today’s task queue
- next best action
- weak-skill drills
- next mock timing
- retake rescue plans
- readiness summary

## 20.3 Example rules
- if `writing_readiness` is lowest and exam date is near, prioritize timed Writing every 48 hours
- if empathy-related Speaking flags repeat across 3 attempts, inject targeted clinical communication drills
- if learner skips tasks for 3 days, reduce plan complexity and shorten session durations
- if low-confidence evaluator outputs recur, recommend expert review sooner

---

## 21. AI/ML governance requirements

### 21.1 Non-negotiable rules
- do not claim official scoring
- do not give false certainty around pass/fail
- do not provide unsupported immigration/licensing guidance
- always show ranges and explanation where prediction exists
- route low-confidence cases conservatively

### 21.2 Model versioning
Each evaluation must store:
- model version
- prompt/rubric version if applicable
- timestamp
- confidence score
- routing reason if escalated

### 21.3 Quality measurement
Track:
- AI-human agreement
- criterion-level agreement
- false reassurance risk
- error clusters by profession
- disagreement by accent/location where ethically and legally appropriate
- helpfulness ratings

### 21.4 Human-in-the-loop conditions
Escalate or soften when:
- confidence below threshold
- speech transcription quality too low
- submission quality anomalous
- high-value premium review requested
- model disagreement across ensemble/checks

---

## 22. Security, privacy, and access control

## 22.1 Access model

### Learner
- access own goals, attempts, evaluations, reviews, billing

### Reviewer
- access assigned review cases and related learner context only as permitted

### Tutor
- reviewer rights plus session/coaching tools if enabled

### Content manager
- content and taxonomy permissions, no billing access by default

### Admin
- full operational access with audit logging

## 22.2 Security requirements
- encrypted transport (TLS)
- encrypted storage for sensitive submission data where supported
- signed URLs for media access
- role checks on every privileged API
- audit logging for all admin and reviewer actions
- secure secret management
- webhook verification for billing providers
- rate limiting on auth and submission endpoints

## 22.3 Privacy requirements
- data retention policy for audio/text submissions
- transparent handling of learner content used for evaluation
- controls for deleting or anonymizing user data where legally required
- limited reviewer data exposure

---

## 23. Observability and operations

## 23.1 Logs
Must collect:
- application logs
- API error logs
- job worker logs
- evaluation pipeline logs
- auth security logs

## 23.2 Metrics
Must collect:
- API latency
- queue depth
- evaluator failure rate
- transcription latency
- review SLA breach risk
- DB health
- storage errors

## 23.3 Tracing
Enable distributed tracing across:
- attempt submission
- upload
- evaluation pipeline
- readiness regeneration
- review completion notification

## 23.4 Alerts
Critical alerts:
- auth failure spikes
- payment webhook failures
- evaluation queue backlog
- transcription failure spikes
- high 5xx rates
- review SLA breach thresholds

---

## 24. Analytics and event taxonomy

## 24.1 Core events
- `signup_completed`
- `goal_setup_completed`
- `diagnostic_started`
- `diagnostic_completed`
- `task_started`
- `task_submitted`
- `evaluation_ready`
- `evaluation_viewed`
- `revision_started`
- `revision_completed`
- `expert_review_requested`
- `review_completed`
- `mock_started`
- `mock_completed`
- `readiness_viewed`
- `plan_upgraded`
- `subscription_started`
- `subscription_cancelled`

## 24.2 Event payload requirements
Each event should include where applicable:
- user id
- session id
- profession
- sub-test
- content id
- attempt id
- plan id
- feature flag context
- platform/device
- timestamp

---

## 25. Content operations specification

## 25.1 Content object rules
Every content item must have:
- profession binding or shared flag
- sub-test binding
- difficulty level
- criteria tags
- estimated duration
- quality status
- version
- exemplar or answer logic

## 25.2 Authoring workflow
States:
- draft
- in_review
- approved
- published
- archived

## 25.3 Content QA checklist
- OET-aligned format
- profession accuracy
- difficulty consistency
- rubric mapping
- no duplicated tasks
- correct metadata
- exemplar quality
- safe and appropriate language

---

## 26. QA and test strategy

## 26.1 Frontend QA
- route coverage
- form validation coverage
- editor autosave coverage
- recording flow coverage
- async states and retry coverage
- accessibility checks
- responsive checks for app layouts

## 26.2 Backend QA
- schema migrations tested
- API contract tests
- idempotency tests for submit endpoints
- queue retry tests
- webhook signature tests
- RBAC tests

## 26.3 Evaluation QA
- golden dataset comparisons
- confidence threshold tests
- review routing tests
- hallucination checks for feedback templates
- transcript anchoring accuracy tests

## 26.4 UAT scenarios
- new learner completes diagnostic and first task
- repeater targets one weak sub-test
- premium user requests review
- reviewer completes Writing and Speaking review
- admin publishes new task and it appears correctly

---

## 27. Delivery roadmap and build sequence

## 27.1 Phase 0 — foundation
Build:
- auth and roles
- learner goals
- profession/subtest taxonomy
- content schema and CMS foundations
- event instrumentation baseline
- plans and entitlements baseline
- review request foundation

## 27.2 Phase 1 — Writing wedge MVP
Build:
- onboarding
- diagnostic v1
- study plan v1
- Writing library
- Writing player
- Writing evaluation pipeline
- Writing feedback screens
- billing for plans and review credits
- reviewer Writing console

Exit criteria:
- new learner can get value end-to-end in Writing
- expert review can be requested and delivered
- study plan updates from Writing results

## 27.3 Phase 2 — Speaking core
Build:
- speaking library
- mic check
- recording/upload
- transcription pipeline
- Speaking evaluation pipeline
- transcript review UI
- reviewer Speaking console
- calibration center baseline

Exit criteria:
- speaking flow is stable end-to-end
- transcript anchored feedback works
- low-confidence routing works

## 27.4 Phase 3 — Full exam prep core
Build:
- Reading module
- Listening module
- mock center
- readiness center
- progress dashboards
- improved recommendation engine

Exit criteria:
- learner can prepare across all four sub-tests
- full mock flow available
- readiness center functioning conservatively

## 27.5 Phase 4 — Operations and scale
Build:
- quality dashboards
- fairness and agreement monitoring
- advanced CMS tools
- support/admin tooling
- institution features if prioritized
- low-bandwidth improvements

---

## 28. MVP boundary

## 28.1 MVP promise
A learner can sign up, set their goal, complete a diagnostic, practice profession-specific OET Writing and Speaking, receive useful feedback quickly, request expert review, and know what to study next.

## 28.2 MVP must-have list
- auth
- goals
- diagnostics
- Writing end-to-end
- Speaking end-to-end
- study plan
- dashboard
- review requests
- subscriptions/credits
- content CMS base

## 28.3 MVP must-not-miss operational items
- audit logs
- evaluator confidence flags
- autosave
- media upload resilience
- review queueing
- payment webhooks
- event tracking

---

## 29. Launch-readiness checklist

A launch is not ready unless all items below are true.

### Product
- learner can complete core flow without confusion
- every major screen has clear CTA and recovery state
- readiness language is conservative and accurate

### Frontend
- no critical UI blockers
- writing autosave tested
- speaking recording tested on supported browsers
- async states visible and understandable

### Backend
- submissions and evaluations are idempotent
- queueing stable under load test
- review assignments work
- billing events reconcile cleanly

### Content
- sufficient initial task volume exists
- exemplars and metadata are validated
- profession coverage for launch scope is real, not placeholder

### QA
- critical flow regression suite passes
- role/permission tests pass
- failure recovery tested

### Operations
- alerts configured
- dashboards configured
- incident runbooks defined
- support/admin tools ready

---

## 30. Open implementation decisions

These are the key choices the team must finalize early.

1. Primary initial professions for launch scope
2. Subscription pricing and review-credit strategy
3. AI provider stack and fallback policy
4. Whether to ship PWA enhancements in MVP or phase 2
5. Whether reviewers are in-house only initially
6. Whether readiness scoring uses pure rules first or rules plus statistical models

---

## 31. Immediate engineering start plan

If development starts now, the recommended order is:

1. establish repo structure and environments
2. implement auth, roles, and base app shells
3. implement taxonomy and content model
4. implement learner goals and onboarding
5. implement Writing task delivery and draft save
6. implement evaluation orchestration skeleton
7. implement Writing evaluation result storage and display
8. implement review request workflow
9. implement Speaking recording and upload
10. implement transcription + Speaking evaluation pipeline
11. implement planner and readiness snapshots
12. implement Reading, Listening, and mocks
13. harden operations, analytics, and admin tooling

---

## 32. Final implementation directive

This platform should be built as a **serious OET operating system**, not as a generic course app. The center of gravity is:

- profession-specific Writing
- profession-specific Speaking
- criterion-based evaluation
- adaptive planning
- expert review operations
- conservative readiness support

If the team preserves those priorities in implementation order, the product will be aligned with the actual OET structure and positioned to become a category-leading preparation platform.

---

## 33. Source validation note

This document’s OET-specific structural assumptions were aligned against current official OET public materials covering:

- OET test structure and professions
- Writing format and criteria
- Speaking criteria and assessment framing
- results and scoring model
- official preparation ecosystem and sample-test orientation

These official points should be re-checked during product launch planning in case OET updates public guidance, but they are sufficient to begin product and engineering work immediately.

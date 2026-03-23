# OET Platform — Frontend Developer Handoff

## Document purpose
This file is the implementation-ready frontend handoff for the product surfaces only. It intentionally excludes the marketing/public website and focuses on the application areas required to start development immediately:

1. Learner App
2. Expert Console
3. Admin / CMS

This spec is aligned to the current official OET structure: four sub-tests, profession-specific Writing and Speaking, six official Writing criteria, official Speaking linguistic and clinical communication criteria, sample tests across professions and modes, and separate reported scores by sub-test. The product must therefore behave as a serious assessment and preparation system, not a generic LMS.

---

# 1. Product overview

## 1.1 Product mission
Build the most trusted, profession-specific OET preparation platform by combining:
- assessment-grade practice flows
- criterion-based feedback
- adaptive study planning
- AI speed
- human review trust

## 1.2 Frontend mission
The frontend must make the platform feel:
- clear
- high-trust
- exam-focused
- efficient for time-poor healthcare professionals
- stable under long writing and audio workflows
- understandable even when scoring is probabilistic

## 1.3 Surfaces in scope
- Learner app
- Expert console
- Admin/CMS

## 1.4 Out of scope
- Public marketing website
- Blog / SEO pages
- External landing pages
- Non-OET exams

---

# 2. Product principles the UI must reflect

1. **OET-native, not generic ESL**  
   Every screen must reinforce profession-specific workflows, OET sub-tests, OET criteria, and readiness.

2. **Criterion-first**  
   Feedback views must always connect to criteria, not vague comments.

3. **Practice-first**  
   The app should quickly route users into action: diagnostic, task, revision, mock, review.

4. **Trust-first**  
   Estimated scores must be shown as ranges or confidence-based guidance, never as overconfident “official” results.

5. **Time-poor user UX**  
   Users should always know what to do next, how long it will take, and why it matters.

6. **Professional tone**  
   UI language must feel credible, measured, and educational.

---

# 3. User roles and surfaces

## 3.1 Learner
Capabilities:
- complete onboarding
- set goals and exam date
- take diagnostics
- use study plan
- do Writing, Speaking, Reading, Listening tasks
- take mocks
- review feedback
- request expert reviews
- view readiness and progress
- manage billing and settings

## 3.2 Reviewer / Expert
Capabilities:
- access assigned review queue
- review Writing submissions
- review Speaking submissions
- use calibration tools
- view learner context needed for review

## 3.3 Admin / Content Manager
Capabilities:
- manage content and metadata
- create and version tasks
- configure AI evaluation settings
- inspect quality dashboards
- manage feature flags and operational states

---

# 4. Application information architecture

## 4.1 Learner app IA
- Dashboard
- Study Plan
- Diagnostic
- Writing
  - Task Library
  - Active Task
  - Results
  - Revision Mode
  - Model Answer Explainer
  - History
- Speaking
  - Task Library
  - Mic Check
  - Role Card
  - Live Task
  - Results
  - Transcript Review
  - Better Phrasing
  - History
- Reading
- Listening
- Mock Center
- Readiness
- Progress
- Reviews
- Submission History
- Billing
- Settings

## 4.2 Expert console IA
- Review Queue
- Writing Review Workspace
- Speaking Review Workspace
- Assigned Learners
- Calibration Center
- Schedule / Availability
- Performance Metrics

## 4.3 Admin / CMS IA
- Content Library
- Task Builder
- Content Revisions
- Profession Taxonomy
- Rubrics / Criteria Mapping
- AI Evaluation Config
- Review Ops Dashboard
- Quality Analytics
- User Ops
- Billing Ops
- Feature Flags
- Audit Logs

---

# 5. Route map

## 5.1 Learner app routes
- `/app/dashboard`
- `/app/onboarding`
- `/app/goals`
- `/app/diagnostic`
- `/app/diagnostic/results`
- `/app/study-plan`
- `/app/writing`
- `/app/writing/tasks`
- `/app/writing/tasks/:id`
- `/app/writing/attempt/:attemptId`
- `/app/writing/result/:evaluationId`
- `/app/writing/revision/:attemptId`
- `/app/writing/model-answer/:contentId`
- `/app/speaking`
- `/app/speaking/tasks`
- `/app/speaking/mic-check`
- `/app/speaking/task/:id`
- `/app/speaking/attempt/:attemptId`
- `/app/speaking/result/:evaluationId`
- `/app/speaking/review/:attemptId`
- `/app/reading`
- `/app/reading/task/:id`
- `/app/listening`
- `/app/listening/task/:id`
- `/app/mocks`
- `/app/mocks/:id`
- `/app/readiness`
- `/app/progress`
- `/app/reviews`
- `/app/history`
- `/app/billing`
- `/app/settings`

## 5.2 Expert console routes
- `/expert/queue`
- `/expert/review/writing/:reviewRequestId`
- `/expert/review/speaking/:reviewRequestId`
- `/expert/learners/:learnerId`
- `/expert/calibration`
- `/expert/metrics`
- `/expert/schedule`

## 5.3 Admin routes
- `/admin/content`
- `/admin/content/new`
- `/admin/content/:id`
- `/admin/content/:id/revisions`
- `/admin/taxonomy`
- `/admin/criteria`
- `/admin/ai-config`
- `/admin/review-ops`
- `/admin/analytics/quality`
- `/admin/users`
- `/admin/billing`
- `/admin/flags`
- `/admin/audit-logs`

---

# 6. UX foundation

## 6.1 Global layout rules

### Learner app
- top app bar with context-aware title and actions
- left sidebar on desktop, bottom navigation on mobile/tablet-compact
- persistent “next recommended action” strip on dashboard/study pages
- task views should support distraction-free mode

### Expert console
- dense information layout
- split panes for submission vs rubric
- keyboard-first workflows for fast reviewing

### Admin / CMS
- data-table heavy
- filters visible by default
- revision and version history always accessible

## 6.2 Visual tone
- clinical, clean, high-trust
- no gamification that makes the app feel childish
- progress should feel motivating but credible
- use status colors conservatively; scoring risk should not feel alarmist unless necessary

## 6.3 Mobile strategy
The product is web-first but must be highly usable on mobile.

Required:
- responsive navigation
- sticky primary CTA in task/result screens
- readable transcript and feedback cards on small screens
- writing editor optimized for tablet and mobile landscape where possible
- reliable audio upload from mobile networks

## 6.4 Accessibility
Required from first release:
- keyboard navigation for all core paths
- visible focus states
- accessible form labels and validation
- high contrast compliance
- support for screen readers on dashboard, forms, results pages
- captions/transcript access where relevant
- scalable typography
- reduced-motion preference support

---

# 7. Design system requirements

## 7.1 Core UI primitives
- AppShell
- Sidebar
- TopNav
- BottomNav
- Card
- Table
- FilterBar
- Tabs
- Accordion
- Modal / Drawer
- Toast / Inline alert
- Skeleton loader
- Empty state
- Error state
- Retry state
- Audio player
- Waveform viewer
- Transcript viewer
- Rich text editor / structured writing editor
- Timer
- Progress bar
- Stepper
- Status badge
- Score range badge
- Confidence badge
- Criterion chip
- Review comment anchor
- Task card
- Submission card

## 7.2 Domain-specific components
- ProfessionSelector
- SubtestSwitcher
- CriterionBreakdownCard
- ReadinessMeter
- WeakestLinkCard
- StudyPlanItem
- WritingCaseNotesPanel
- WritingEditor
- WritingIssueList
- RevisionDiffViewer
- SpeakingRoleCard
- MicCheckPanel
- TranscriptFlagList
- BetterPhraseCard
- MockReportSummary
- ReviewRequestDrawer
- ReviewerRubricPanel
- ContentMetadataPanel
- VersionHistoryDrawer

## 7.3 States every component must support
- loading
- empty
- success
- partial data
- error
- permission denied where relevant
- stale data warning where relevant

---

# 8. Learner app screen-by-screen specifications

## 8.1 Onboarding and goal setup

### Screen: Onboarding entry
Purpose:
- welcome learner
- explain setup value
- set expectation of diagnostic and personalized study path

UI elements:
- headline
- progress stepper
- short explainer cards
- CTA to begin

Acceptance criteria:
- learner can start onboarding in one action
- step count is clear

### Screen: Goal setup
Fields:
- profession
- target exam date
- target score by sub-test
- previous attempts
- weak sub-test self-report
- study hours per week
- target country / organization optional

Validation:
- profession required
- sub-test targets optional but encouraged
- exam date cannot be in the past

Edge cases:
- no exam date yet
- user only knows overall goal, not sub-test targets

Acceptance criteria:
- saves partial progress
- allows return later
- feeds study plan generation

---

## 8.2 Diagnostic flow

### Screen: Diagnostic intro
Contents:
- diagnostic components
- estimated duration
- “training estimate, not official score” notice
- CTA to start

### Screen: Diagnostic hub
UI:
- four diagnostic cards: Writing, Speaking, Reading, Listening
- progress indicator
- resume later functionality

### Screen: Writing diagnostic task
Layout:
- case notes left
- editor center
- timer/checklist right

Requirements:
- auto-save draft
- confirm before exit
- practice vs timed mode support

### Screen: Speaking diagnostic task
Requirements:
- mic permission flow
- prep timer
- record/upload flow
- transcript preview after upload when ready

### Screen: Reading diagnostic
Requirements:
- time tracking
- answer persistence
- fast transition between items

### Screen: Listening diagnostic
Requirements:
- stable audio controls
- answer persistence
- mobile-safe playback behavior

### Screen: Diagnostic results
Sections:
- readiness by sub-test
- likely blockers
- top weak criteria
- recommended intensity
- first study week suggestion
- upgrade prompt if relevant

Acceptance criteria:
- user sees an actionable first plan
- results feel specific and personalized
- score estimates are clearly marked as training estimates

---

## 8.3 Dashboard

### Screen: Dashboard home
Purpose:
This is the app command center.

Required cards:
- readiness snapshot
- next exam date
- today’s tasks
- latest evaluated submission
- weak criteria
- streak / completion momentum
- next mock recommendation
- pending expert reviews

Primary CTAs:
- resume study plan
- start next task
- view latest feedback

Acceptance criteria:
- within 5 seconds user knows what to do next
- content is personalized, not generic
- dashboard remains useful even for low activity users via strong empty states

---

## 8.4 Study plan

### Screen: Study plan
Sections:
- today
- this week
- next checkpoint
- weak-skill focus
- retake rescue mode banner if applicable

Per task item show:
- title
- sub-test
- duration
- why this is recommended
- due date
- status

Actions:
- start now
- reschedule
- swap
- mark complete

Acceptance criteria:
- user can act on plan without opening multiple pages
- plan updates correctly after completion or skip

---

## 8.5 Writing module

### Screen: Writing home
Sections:
- recommended Writing task
- practice library
- criterion drill library
- past submissions
- expert review credits
- full mock entry

Filters:
- profession
- difficulty
- criteria
- mode

### Screen: Writing task library
Card data:
- title
- difficulty
- profession
- time
- criteria focus
- scenario type

### Screen: Writing player
Layout:
- case notes panel
- response editor
- timer
- checklist
- scratchpad

Functional requirements:
- auto-save every few seconds
- save status visible
- warning on accidental navigation away
- distraction-free mode
- font size controls
- dark mode support if enabled platform-wide

### Screen: Writing result summary
Show:
- estimated score range
- grade range
- confidence label
- top strengths
- top issues
- CTA to detailed feedback
- CTA to revise
- CTA to request expert review

### Screen: Writing detailed feedback
Must include all six Writing criteria:
- Purpose
- Content
- Conciseness & Clarity
- Genre & Style
- Organisation & Layout
- Language

UI blocks:
- criterion score card
- explanation
- anchored comments
- omissions
- unnecessary details
- revision suggestions

### Screen: Writing revision mode
Requirements:
- split view of original vs revision
- highlighted diffs
- criterion delta summary
- unresolved issue list

### Screen: Model answer explainer
Must not be raw sample text only.

Show:
- annotated model answer
- paragraph-level rationale
- include/exclude note logic
- criterion mapping
- profession-specific language notes

### Screen: Writing expert review request
Inputs:
- turnaround speed
- focus areas
- notes for reviewer
- credit/payment selector

Acceptance criteria across Writing module:
- entire flow works on desktop and tablet
- mobile can view results and feedback well even if authoring is desktop-optimized
- users can clearly distinguish AI estimate vs human review

---

## 8.6 Speaking module

### Screen: Speaking home
Sections:
- recommended role play
- common issues to improve
- pronunciation drills
- empathy/clarification drills
- past attempts
- expert review credits

### Screen: Mic and environment check
Must verify:
- microphone permission
- recording works
- playback works
- noise warning
- device compatibility warning if needed

### Screen: Speaking task selection
Show:
- scenario type
- difficulty
- profession
- criteria focus
- duration

### Screen: Role card preview
Show:
- role card
- prep timer
- notes area
- start task CTA

### Screen: Live speaking task
Modes:
- AI interlocutor
- self-practice
- exam simulation

Requirements:
- clear live recording state
- robust reconnect/retry behavior if supported
- visible elapsed time
- safe stop/submit controls

### Screen: Speaking result summary
Show:
- estimated score range
- confidence label
- strengths
- top improvement areas
- next recommended drill
- CTA to transcript review
- CTA to request expert review

### Screen: Transcript + audio review
Layout:
- transcript pane
- waveform/audio pane
- inline markers

Marker types:
- unclear phrase
- long pause
- empathy miss
- weak explanation
- abrupt register
- structure miss

### Screen: Better phrasing view
Per flagged segment show:
- original phrase
- issue explanation
- stronger alternative
- repeat drill prompt

### Screen: Speaking expert review request
Inputs:
- focus areas
- reviewer notes
- priority / turnaround
- credit/payment selector

Acceptance criteria across Speaking module:
- recording and playback must be reliable
- transcript review must be usable on small screens
- expert review handoff must preserve role card, transcript, audio, and AI findings

---

## 8.7 Reading module

### Screen: Reading home
Sections:
- Part A / B / C entry points
- speed drills
- accuracy drills
- explanations
- mock sets

### Screen: Reading player
Requirements:
- timer
- easy question navigation
- answer persistence
- practice vs exam mode behaviors

### Screen: Reading results
Show:
- score
- item-by-item review
- explanation for errors
- error-type clustering
- recommended next drill

---

## 8.8 Listening module

### Screen: Listening home
Sections:
- part-based practice
- transcript-backed review
- distractor drills
- mock sets

### Screen: Listening player
Requirements:
- audio stability
- answer persistence
- practice vs exam behaviors
- safe mobile playback handling

### Screen: Listening results
Show:
- correctness
- transcript reveal when allowed
- distractor explanation
- recommended next drill

---

## 8.9 Mock center

### Screen: Mock center
Sections:
- sub-test mocks
- full mocks
- purchased mock reviews
- previous mock reports
- recommended next mock

### Screen: Mock setup
Options:
- sub-test or full mock
- mode
- profession for Writing/Speaking
- include expert review
- strict timer on/off depending on mode

### Screen: Mock report
Show:
- overall summary
- sub-test breakdown
- weakest criterion
- comparison to prior mock
- study plan update CTA

---

## 8.10 Readiness and progress

### Screen: Readiness center
Show:
- readiness by sub-test
- weakest-link indicator
- target-date risk
- recommended study remaining
- evidence behind the estimate
- key blockers

### Screen: Progress dashboard
Charts:
- sub-test trend
- criterion trend
- completion trend
- submission volume
- review turnaround / usage if relevant

### Screen: Submission history
List items:
- task name
- sub-test
- attempt date
- score estimate
- review status

Actions:
- reopen feedback
- compare attempts
- request review

---

## 8.11 Billing and settings

### Screen: Billing
Show:
- current plan
- next renewal
- review credits
- invoices
- upgrade/downgrade/purchase extras

### Screen: Settings
Sections:
- profile
- goals
- notifications
- privacy
- accessibility
- low-bandwidth mode
- audio preferences
- exam date and study preferences

---

# 9. Expert console specifications

## 9.1 Review queue
Columns:
- review id
- learner
- profession
- sub-test
- AI confidence
- priority
- SLA due
- assigned reviewer
- status

Required filters:
- Writing/Speaking
- profession
- priority
- overdue
- confidence band
- assigned/unassigned

## 9.2 Writing review workspace
Layout:
- case notes
- learner response
- AI draft feedback
- rubric entry panel
- final comment composer
- send/rework controls

Requirements:
- keyboard shortcuts
- anchored comment support
- save draft review
- SLA visibility

## 9.3 Speaking review workspace
Layout:
- role card
- audio player/waveform
- transcript
- AI flags
- rubric panel
- final response panel

Requirements:
- timestamp anchoring
- playback speed controls
- side-by-side AI and human notes

## 9.4 Calibration center
Views:
- benchmark cases
- reviewer alignment scores
- disagreements
- notes/history

---

# 10. Admin / CMS specifications

## 10.1 Content library
Must support:
- data table view
- card view optional
- saved filters
- bulk actions
- publish/archive states
- revision indicators

## 10.2 Task builder
For each content type support:
- metadata entry
- profession selection
- criteria mapping
- difficulty
- estimated duration
- model answer / rubric notes
- versioning

## 10.3 AI evaluation config
Show:
- active model version
- thresholds
- confidence routing rules
- experiment flags
- prompt/config labels

## 10.4 Quality analytics
Show:
- AI-human disagreement
- content performance
- review SLA
- feature adoption
- risk cases

---

# 11. Frontend data contracts and integration needs

## 11.1 General integration rules
- all core pages must tolerate partial data
- optimistic updates only where low risk
- explicit loading and stale states for evaluations, study plans, and reviews
- polling or subscription support for async evaluation states

## 11.2 Required API-driven entities
Frontend should strongly type these entities:
- user
- learnerGoal
- profession
- subtest
- criterion
- contentItem
- attempt
- evaluation
- criterionScore
- feedbackItem
- readinessSnapshot
- studyPlan
- reviewRequest
- subscription
- wallet/credits

## 11.3 Async workflow handling
The following flows are async and need proper interim states:
- speaking transcription
- speaking evaluation
- writing evaluation
- human review completion
- study plan regeneration
- report generation

Required UI states:
- queued
- processing
- completed
- failed with retry guidance

---

# 12. State management and frontend architecture

## 12.1 Recommended frontend architecture
- React + TypeScript
- route-based code splitting
- query library for server state
- lightweight client store for session/task-local state
- form library with schema validation
- design system as component package or shared module

## 12.2 State layers
- server state: content, attempts, evaluations, plans, reviews
- local UI state: filters, drawers, editors, playback state
- persisted client state: draft recovery, onboarding progress where appropriate

## 12.3 Editor-specific state
Writing editor must preserve:
- unsaved content protection
- local recovery snapshot
- server draft sync state
- timer state

Speaking task must preserve:
- audio upload state
- transcript availability state
- recording interruption state

---

# 13. Validation, empty states, and error design

## 13.1 Validation rules
- input validation should be immediate but calm
- scoring fields in review/admin must validate before submit
- required diagnostic/goal fields must show clear reason and fix path

## 13.2 Empty states
Every empty state should guide action.
Examples:
- no attempts yet → start diagnostic or recommended task
- no reviews → explain expert review value and CTA
- no progress data → complete first evaluated task

## 13.3 Error states
Must support:
- retry
- save locally where possible
- “contact support” route only for true blockers
- preserving user work in long tasks

Critical errors needing special handling:
- writing draft save failure
- speaking audio upload failure
- evaluation timeout
- review purchase or entitlement mismatch

---

# 14. Analytics instrumentation requirements

Track at minimum:
- onboarding started/completed
- goals saved
- diagnostic started/completed
- task started/submitted
- evaluation viewed
- revision started/submitted
- mock started/completed
- review requested
- readiness viewed
- plan item completed/skipped/rescheduled
- subscription started/changed

Every tracked event should include where relevant:
- user id
- profession
- sub-test
- content id
- attempt id
- evaluation id
- mode
- device type
- timestamp

---

# 15. Frontend performance requirements

Targets:
- dashboard interactive within acceptable modern app standards on average broadband
- route transitions feel immediate for local navigation
- writing editor input latency stays low during long essays
- transcript view handles long content without jank
- tables in expert/admin areas support virtualization or efficient pagination where needed

Key performance focus areas:
- writing editor
- waveform/transcript sync
- data-heavy admin tables
- diagnostic results and mock reports

---

# 16. Security and privacy requirements for frontend

Required:
- role-based route protection
- avoid exposing hidden admin/expert routes in learner bundles where practical
- signed upload flows for audio
- no sensitive scoring config exposed client-side
- secure handling of tokens and session refresh
- explicit consent messaging for audio capture where required

---

# 17. QA checklist for frontend

## 17.1 Learner critical path
- onboarding works
- diagnostic works end to end
- writing draft saves and restores
- speaking recording uploads and evaluates
- study plan updates after evaluated task
- review request flow works
- billing flow works

## 17.2 Expert critical path
- reviewer can filter queue
- reviewer can complete writing review
- reviewer can complete speaking review
- reviewer can save draft without losing comments

## 17.3 Admin critical path
- content can be created
- revision history visible
- content can be published/unpublished
- AI config page loads and is permission-gated

## 17.4 Device coverage
- desktop latest Chrome/Safari/Edge
- tablet for writing and result review
- mobile iOS/Android browsers for diagnostics, speaking, feedback, progress, and billing

---

# 18. Frontend release slicing recommendation

## Slice 1
- app shell
- auth
- onboarding/goals
- dashboard skeleton
- study plan read-only
- taxonomy integration

## Slice 2
- Writing library
- Writing player
- Writing result view
- Writing revision view
- expert review request

## Slice 3
- Speaking home
- mic check
- speaking task flow
- transcript review
- better phrasing view

## Slice 4
- Reading/Listening flows
- mock center
- readiness center
- progress/history

## Slice 5
- expert console
- admin/CMS
- quality dashboards

---

# 19. Open frontend decisions to resolve early

1. Rich text editor strategy for Writing: plain text with structured helpers vs richer editor
2. Waveform library choice for Speaking review
3. Real-time vs polling for evaluation state changes
4. Dark mode from v1 or later
5. Mobile authoring experience scope for long Writing tasks

---

# 20. Final build instruction to frontend developer

Build the frontend as a high-trust assessment application, not as a course website. The most important UX outcomes are:
- the learner always knows what to do next
- long-task reliability is excellent
- feedback is specific and criterion-based
- expert and admin workflows are fast and operationally realistic
- estimated results never overpromise

This file is intentionally complete enough for implementation planning, route creation, component breakdown, and sprint slicing to start immediately.

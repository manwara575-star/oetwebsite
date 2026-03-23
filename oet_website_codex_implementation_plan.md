# OET Coaching Website Implementation Plan (Opax Theme - Marketing Consulting Demo)

## Project goal
Build a professional, conversion-focused business website for Dr. Ahmed Hesham's OET coaching platform by repurposing the **Opax HTML theme, Demo 03: Marketing Consulting** into a healthcare-education website that feels credible, modern, and exam-outcome driven.

This plan is written for a web developer using **OpenAI ChatGPT Codex in the IDE** to edit the existing HTML theme efficiently and safely.

---

## 1) What is already publicly visible about the business

### Verified public signals
From the public footprint around the Facebook group and connected channels, the business appears to be:

- an **OET online coaching / preparation platform** led by **Dr. Ahmed Hesham**
- connected to the public YouTube identity **"The Pathway to UK - Dr Ahmed Hesham"**
- positioned around healthcare career pathways and OET preparation
- publicly associated with these audience segments:
  - **nurses**
  - **doctors**
  - **pharmacists**
  - at least some **non-Arabic-speaking** learners
- using **Facebook group + WhatsApp + YouTube**, and likely Telegram, as part of its marketing and lead funnel
- promoting **orientation sessions, courses, packages, clinchers, and student feedback**

### Public brand/persona cues
Public descriptions indicate Dr. Ahmed Hesham presents himself as:

- **Professional OET instructor**
- **Gastroenterologist**
- **Assistant Lecturer - Ain Shams University Hospitals**

This is a strong trust signal and should be used carefully throughout the website.

### Strategic conclusion
This is not just a generic course website. It is a **high-trust, exam-success, healthcare-career-enablement business**. The website must therefore feel:

1. professional and medically credible
2. exam-focused and practical
3. conversion-oriented without looking spammy
4. clear about who the platform serves and how candidates move from confusion to a booking or contact action

---

## 2) Why the current theme demo works - and where it does not

### Why Opax Demo 03 is a good choice
The Marketing Consulting demo already has strong structure for:

- authority-led hero section
- services grid
- about section
- process/workflow section
- pricing section
- testimonials
- blog/resources
- contact CTA blocks

These are all useful for an OET education business.

### What is wrong with the current demo content
The current demo is misaligned because it contains:

- generic consulting headlines
- corporate growth messaging
- fake company stats
- irrelevant portfolio projects
- fake consultant team profiles
- placeholder contact details
- missing images
- pricing language built for consulting retainers, not coaching packages
- FAQ content that is obviously unrelated

### Core redevelopment principle
**Keep the layout, spacing, components, section ordering, and front-end behavior. Replace nearly all text, most icons, most image assets, many labels, some CTA hierarchy, and some page purposes.**

Do **not** rebuild the theme from scratch. Repurpose it intelligently.

---

## 3) Recommended website strategy

### Recommended brand architecture
Use a simple endorsed structure:

- **Primary customer-facing name:** `OET with Dr Hesham`
- **Endorsed by / supporting identity:** `The Pathway to UK`

Reason:

- "OET with Dr Hesham" is highly specific and immediately understandable
- "The Pathway to UK" is broader and works as a parent identity or tagline
- together they create both clarity and aspiration

### Recommended value proposition
**Healthcare-specific OET coaching that helps doctors, nurses, pharmacists, and serious international candidates prepare strategically, improve real exam performance, and move closer to registration, migration, or career goals.**

### Recommended site objectives
The website should do 5 jobs:

1. explain what the platform is
2. show who it is for
3. prove credibility and outcomes
4. present packages and learning options
5. convert traffic into WhatsApp conversations, enquiries, and enrollments

### Primary conversion actions
Use these in descending priority:

1. **Join on WhatsApp / Message on WhatsApp**
2. **View Packages**
3. **Book a Consultation / Free Orientation**
4. **Watch Orientation Video**
5. **Join Facebook Community**

Do not make the site depend on the Facebook group alone. The website should become the central trust asset.

---

## 4) Audience definition

### Primary audience
#### A. Nurses preparing for OET for UK or international pathways
Pain points:
- need required scores for professional registration
- confusion about writing/speaking requirements
- fear of repeated attempts
- need profession-specific coaching
- may be balancing work shifts and study

#### B. Doctors preparing for OET
Pain points:
- need efficient preparation with clinical relevance
- limited time
- need high-level feedback rather than beginner English teaching
- want pathway clarity tied to career goals

#### C. Pharmacists preparing for OET
Pain points:
- fewer targeted OET resources than nurses/doctors
- need profession-specific speaking and writing support
- want examples aligned with pharmacy practice

### Secondary audience
#### D. Other healthcare candidates who may fit OET's 12-profession scope
This should not dominate the homepage, but the website can mention it as expansion potential.

#### E. Candidates searching pathway guidance
These may not be ready to buy immediately, but they search for:
- OET vs IELTS
- OET score requirements
- OET writing/speaking help
- UK registration pathway questions
- exam format and timing questions

These users are your SEO and top-of-funnel audience.

### Geographic language reality
The public footprint suggests a strong appeal to **Arabic-speaking** learners, but some content also addresses **non-Arabic speakers**. That means:

- the website should be in **clear professional English**
- it should support optional Arabic touchpoints later
- wording should be internationally readable, not region-locked

---

## 5) Business positioning the website should communicate

The website should present the platform as a blend of:

- **expert-led OET preparation**
- **profession-specific coaching**
- **practical exam strategy**
- **career-pathway awareness**
- **community + support**

### Positioning statement
`An expert-led OET coaching platform for healthcare professionals who need focused preparation, honest feedback, and a structured path toward exam success.`

### Trust anchors to emphasize
- expert instructor identity
- healthcare background
- profession-specific training
- packages / structured programs
- recorded + live support options if available
- student feedback / testimonials
- community-based support channels

---

## 6) Recommended sitemap

## Core pages
1. `index.html` - Home
2. `about.html` - About Dr. Ahmed Hesham + platform
3. `courses.html` - All programs / services overview
4. `course-single.html` templates duplicated into multiple offer pages
5. `packages.html` - Pricing / plans
6. `success-stories.html` - Testimonials / results / transformations
7. `faq.html` - High-intent FAQs
8. `resources.html` - Blog / articles / guides
9. `contact.html` - Contact + WhatsApp + enquiry form
10. `404.html`

## Recommended course detail pages
Use duplicate copies of the service-single template:

- `oet-for-nurses.html`
- `oet-for-doctors.html`
- `oet-for-pharmacists.html`
- `oet-speaking.html`
- `oet-writing.html`
- `oet-reading-listening.html`
- optional: `recorded-course.html`
- optional: `mock-tests-feedback.html`

## Optional supporting pages
- `free-orientation.html`
- `student-policy.html`
- `privacy-policy.html`
- `terms.html`

---

## 7) Global content rules for the whole website

### Tone of voice
Use:
- confident
- supportive
- expert-led
- direct
- clean English
- professional but not corporate-jargon heavy

Avoid:
- vague marketing clichés
- exaggerated guarantees
- fake urgency spam
- overuse of words like "best", "No.1", "guaranteed success"

### Messaging rules
Every page should answer:
- who this is for
- what is offered
- why it is credible
- what to do next

### Call-to-action rules
Every major section should end with one of these CTAs:
- `Join on WhatsApp`
- `View Packages`
- `Explore Courses`
- `Watch Orientation`
- `Contact Us`

### Proof rules
Whenever possible, use proof blocks such as:
- testimonial quotes
- screenshots of student feedback
- orientation thumbnails
- course structure snapshots
- founder credentials

### Compliance rule
Do not promise exam scores or guaranteed passing unless real legal/commercial policy supports it.

---

## 8) Homepage implementation plan (`MarketingConsulting.html` -> `index.html`)

## Section-by-section mapping

### A. Top bar / utility strip
#### Current role
Generic contact strip

#### Replace with
- WhatsApp number or button
- email address
- optionally: "For Nurses, Doctors & Pharmacists"

#### Example content
- Left: `Healthcare-specific OET coaching for Nurses, Doctors & Pharmacists`
- Right: `WhatsApp Us` | `Email` | `Join Facebook Group`

---

### B. Header / navigation
#### Recommended navigation
- Home
- About
- Courses
- Packages
- Success Stories
- Resources
- FAQ
- Contact

#### Primary button
`Join on WhatsApp`

#### Secondary button if header supports two CTAs
`View Packages`

---

### C. Hero section
#### Current role
Marketing consulting hero

#### New purpose
Establish clarity, authority, audience, and next action in under 5 seconds.

#### Recommended headline
**Expert OET Coaching for Healthcare Professionals**

#### Recommended subheadline
`Prepare with confidence through profession-specific OET guidance for nurses, doctors, pharmacists, and serious international candidates who need practical strategy, real feedback, and a clearer path to exam success.`

#### Recommended supporting bullets
- Profession-specific coaching
- Speaking and writing feedback
- Live guidance + structured practice
- Packages for different study needs

#### Hero CTAs
Primary: `Join on WhatsApp`
Secondary: `Explore Packages`
Tertiary text link: `Watch Orientation`

#### Hero visual recommendation
Use a real, high-quality healthcare-learning image. Best options:
1. Dr. Ahmed Hesham portrait in clean professional setting
2. doctor/nurse candidate using laptop with notes
3. collage combining educator + OET learning context

#### Add credibility bar under hero
Examples:
- `Led by a healthcare professional and OET instructor`
- `Profession-specific support`
- `Community + course + feedback model`

---

### D. Services quick highlights block
#### Current role
Marketing service icons

#### Replace with 4 homepage pillars
1. `OET for Nurses`
2. `OET for Doctors`
3. `OET for Pharmacists`
4. `Speaking, Writing, Reading & Listening Support`

Each card should have:
- relevant icon
- 1-line explanatory text
- link to full course/service page

---

### E. About summary block
#### Current role
Generic "About Us"

#### New purpose
Introduce the educator and platform.

#### Recommended headline
**Learn OET with expert guidance that understands healthcare communication**

#### Recommended body copy theme
Explain:
- who Dr. Ahmed Hesham is
- why the teaching is profession-aware
- what makes the platform practical
- that learners get structure, clarity, and actionable correction

#### Add 3 mini values cards
- `Exam Strategy That Makes Sense`
- `Healthcare-Relevant Training`
- `Feedback That Helps You Improve`

---

### F. Main services / solutions grid
#### Current role
Large consulting grid

#### Replace with 8 academic-commercial offers
1. `Full OET Preparation`
2. `OET Speaking Coaching`
3. `OET Writing Correction`
4. `Reading & Listening Practice`
5. `Mock Tests & Performance Review`
6. `Recorded Courses`
7. `Live Orientation Sessions`
8. `Profession-Specific Modules`

Each card should include:
- title
- 20-30 word description
- CTA: `Learn More`

---

### G. Portfolio / case study section
#### Current role
Corporate portfolio gallery

#### Replace with
**Student Success Stories** or **Learning Outcomes & Transformations**

Recommended items:
- nurses success story
- doctor feedback story
- pharmacist support story
- before/after confidence story

Use screenshots only if consent exists. Otherwise use designed testimonial cards.

#### Rename section
`Success Stories from Real OET Candidates`

#### CTA
`Read More Success Stories`

---

### H. Process / How We Work section
#### Current role
3-step consulting workflow

#### Replace with a 4- or 5-step learner journey

Recommended version:
1. `Assess Your Starting Point`
2. `Choose the Right Package`
3. `Study with Structured Guidance`
4. `Receive Feedback and Corrections`
5. `Move Toward Exam Readiness`

This is one of the most important sections because it reduces uncertainty.

---

### I. Pricing section
#### Current role
Consulting retainers

#### Replace with OET packages
Use realistic educational packaging language:

#### Recommended pricing card labels
- `Starter`
- `Focused`
- `Intensive`

#### Package logic
**Starter**
- access to core materials / recorded guidance
- community support
- limited support

**Focused**
- structured learning path
- live or scheduled support
- writing/speaking feedback

**Intensive**
- highest-touch plan
- priority feedback
- mocks / review / close support

Do not publish fake prices. Use either:
- real current prices
- `Contact for latest package details`
- or `Custom plans available`

If pricing is still variable, show package structure first and reveal actual amounts after business approval.

---

### J. Team section
#### Current role
fake consultants

#### Recommendation
Do **not** keep a fake large team block.

Use one of these options:

**Option A - Recommended**
Turn it into `Meet Your Instructor` with one strong founder profile and maybe 1-2 support roles only if they are real.

**Option B**
Replace with `Why Students Learn With Us` cards instead of people profiles.

If real team data is unavailable, delete most profile cards.

---

### K. Testimonials carousel
#### Current role
generic client testimonials

#### Replace with real student voice
Use categories:
- nurse testimonial
- doctor testimonial
- pharmacist testimonial
- confidence / feedback / support testimonial

#### Important
The website should avoid overly polished fake-sounding testimonials. Keep them believable and specific.

Good structure:
- result or experience
- what part helped most
- role/profession
- country optional

---

### L. Contact CTA section
#### Current role
generic business contact block

#### Replace with strong enquiry conversion block
Headline:
**Not sure where to start with OET? Let's guide you.**

Text:
`Message us on WhatsApp, send an enquiry, or join the learning community to find the package and study path that fit your profession and current level.`

Buttons:
- `WhatsApp Us Now`
- `Send Enquiry`
- `Join Facebook Group`

---

### M. Blog / insights section
#### Current role
marketing articles

#### Replace with high-intent educational SEO content
Homepage should show 3 posts like:
- `OET vs IELTS for Healthcare Professionals`
- `How Nurses Should Prepare for OET Writing`
- `Common OET Speaking Mistakes and How to Fix Them`

---

## 9) About page implementation (`about.html`)

### Page goal
Build trust and convert uncertainty into credibility.

### Recommended structure
1. hero banner: `About OET with Dr Hesham`
2. founder story
3. why this platform exists
4. what makes the teaching approach different
5. learner types served
6. mission / teaching philosophy
7. real proof / testimonials
8. CTA to courses or WhatsApp

### What to remove from the current template
- fake numeric achievements
- fake global office statistics
- fake timeline unless real dates exist
- fake team slider if not real

### What to add instead
#### Founder profile block
Include:
- professional identity
- relevance to healthcare communication
- experience as OET instructor
- why students trust the platform

#### Teaching philosophy section
Example themes:
- clarity over confusion
- profession-specific preparation
- exam realism
- actionable correction and feedback
- supportive but serious coaching

#### Why students choose this platform
- healthcare-aware coaching
- practical exam strategy
- support through confusion points
- community access
- targeted packages

---

## 10) Courses / services overview page (`service.html` -> `courses.html`)

### Page goal
Show all offers in a way that users can self-select.

### Recommended sections
#### A. Hero
`Choose the OET support that matches your profession and your current level`

#### B. Offer categories
Split into 3 groups:

**Profession-specific**
- OET for Nurses
- OET for Doctors
- OET for Pharmacists

**Skill-specific**
- Speaking
- Writing
- Reading
- Listening

**Format-specific**
- Recorded course
- Live sessions
- Mock tests
- Feedback / correction support

#### C. Selection helper block
Add a section:
`Not sure which package or course is right for you?`
Then list scenarios:
- first-time candidate
- repeating candidate
- weak writing
- weak speaking
- limited time before exam

#### D. CTA
`Get guidance on the right package`

---

## 11) Course detail pages (`service-single.html` duplicates)

Each course page should follow the same architecture.

## Recommended structure for each detail page
1. hero with specific audience
2. who this course is for
3. problems it solves
4. what is included
5. learning format
6. expected student profile
7. FAQs
8. CTA

### A. `oet-for-nurses.html`
Key messaging:
- profession-specific OET nursing prep
- writing/discharge/referral relevance
- speaking confidence in patient-facing scenarios

### B. `oet-for-doctors.html`
Key messaging:
- practical and efficient preparation
- advanced support for busy clinicians
- communication precision and case-style performance

### C. `oet-for-pharmacists.html`
Key messaging:
- targeted help for a less-served profession
- relevant speaking/writing scenarios
- confidence building through structured practice

### D. `oet-speaking.html`
Key messaging:
- role-play preparation
- confidence, structure, fluency, empathy
- correction and performance refinement

### E. `oet-writing.html`
Key messaging:
- referral / transfer / discharge style writing
- structure, grammar, tone, purpose, selection of case notes
- correction-led improvement

### F. `oet-reading-listening.html`
Key messaging:
- time management
- strategy
- exam technique
- repeated guided practice

### Reusable course-page section titles
- `Who This Is For`
- `What You Will Work On`
- `What Is Included`
- `How Support Works`
- `Why This Helps`
- `Next Step`

---

## 12) Packages / pricing page (`pricing.html` -> `packages.html`)

### Page goal
Help users compare options quickly and reduce friction before enquiry.

### Recommended pricing presentation
If pricing is approved and fixed, use pricing cards.
If pricing changes often, use package cards without public numbers and send users to WhatsApp.

### Recommended plans
#### 1. Starter Plan
For:
- new candidates
- budget-sensitive learners
- those needing structure and materials

Includes example items:
- core lessons or recorded access
- basic community support
- limited guidance
- recommended study plan

#### 2. Focused Plan
For:
- candidates needing structured improvement
- candidates with one or two weak skills
- those wanting more feedback

Includes example items:
- more guided support
- writing/speaking review
- structured plan
- milestone check-ins

#### 3. Intensive Plan
For:
- near-exam candidates
- repeat test takers
- learners who need close support

Includes example items:
- priority review
- mock support
- direct feedback loops
- rapid correction cycle

### Critical note
Do not leave consulting-style items like "30 hours/month of advisory" or "executive planning sessions".
Everything must sound like an exam-preparation product.

### Add comparison table below cards
Columns:
- plan
- best for
- feedback level
- live support
- mock review
- WhatsApp support
- CTA

---

## 13) Success Stories / portfolio page (`portfolio.html` -> `success-stories.html`)

### Page goal
Replace fake portfolio projects with proof of student trust and transformation.

### Best ways to use this template
#### Option 1 - Most recommended
Use it as a **student stories gallery**.

Each card can represent:
- profession
- main struggle
- what helped
- result or feeling of readiness

#### Option 2
Use it as **learning proof / case study cards** such as:
- writing improvement journey
- speaking confidence journey
- orientation-to-enrollment journey

### Card formula
- candidate role: Nurse / Doctor / Pharmacist
- challenge: weak writing / repeated attempts / no strategy
- intervention: structured practice + feedback
- result: improved clarity / confidence / readiness / success story

### CTA
`Talk to us about the right preparation plan`

---

## 14) Testimonials page (`testimonial.html` -> `success-stories.html` or separate testimonials page)

### Page goal
Provide high-density social proof.

### Best content types
- written testimonial cards
- video testimonial embeds or thumbnails
- screenshots from learners with permission
- categorized by profession

### Best testimonial categories
- support quality
- clarity of teaching
- improvement in writing
- confidence in speaking
- usefulness for busy healthcare workers

### Recommended filters
- Nurses
- Doctors
- Pharmacists
- Speaking
- Writing
- Overall Experience

---

## 15) FAQ page (`faq.html`)

The current FAQ content is irrelevant and must be fully rewritten.

## Recommended FAQ set

### General
1. What is OET and who is it for?
2. Who can join your courses?
3. Are your courses only for nurses and doctors?
4. Do you support pharmacists as well?
5. Is this suitable for first-time test takers?
6. Can repeat test takers join?

### Course / support
7. What kind of packages do you offer?
8. Do you offer live classes, recorded classes, or both?
9. Do you provide writing correction?
10. Do you provide speaking feedback?
11. How do I know which package is right for me?
12. Can I get help with only one skill?

### Exam practicalities
13. How should I prepare for OET writing?
14. How long does OET preparation usually take?
15. Is OET better than IELTS for healthcare professionals?
16. What score do I need?

### Contact / enrollment
17. How do I enroll?
18. Can I contact you on WhatsApp before booking?
19. Do you have a Facebook group or community?
20. Where can I find orientation content?

### FAQ writing rule
Answers should be concise, practical, and CTA-aware. Some answers should end with:
`If you are unsure, message us on WhatsApp and we will guide you to the right option.`

---

## 16) Blog / resources page (`blog-style-one.html` -> `resources.html`)

### Page goal
Capture search traffic, build trust, and warm up uncertain leads.

### Content clusters to build
#### Cluster 1 - OET basics
- What is OET and who should take it?
- OET vs IELTS for healthcare professionals
- How OET is structured

#### Cluster 2 - Skill-specific help
- OET speaking mistakes
- OET writing structure tips
- How to improve reading speed for OET
- Listening strategies for busy healthcare candidates

#### Cluster 3 - Profession-specific content
- OET for Nurses: what to focus on
- OET for Doctors: how to prepare efficiently
- OET for Pharmacists: profession-specific preparation tips

#### Cluster 4 - Career pathway content
- Why OET matters for international healthcare careers
- Understanding score requirements before you book
- How to plan your exam preparation timeline

### Best blog structure
- problem-focused title
- short intro
- useful teaching content
- internal links to course pages
- CTA at end: WhatsApp / packages / orientation

### Recommended first 12 article titles
1. OET vs IELTS for Healthcare Professionals: Which One Fits You Better?
2. How Nurses Should Prepare for OET Writing
3. How Doctors Can Prepare for OET with Limited Study Time
4. OET Speaking: Common Mistakes That Lower Confidence
5. A Simple Study Plan for First-Time OET Candidates
6. How to Choose the Right OET Course or Package
7. OET for Pharmacists: What Makes Preparation Different?
8. How Mock Feedback Improves OET Performance
9. What to Do If You Have Repeated the OET Exam Before
10. How to Improve Selection of Case Notes in OET Writing
11. OET Reading and Listening: Smart Strategy for Busy Professionals
12. How to Know You Are Ready to Book the OET Exam

---

## 17) Contact page (`contact.html`)

### Page goal
Turn interest into direct conversation.

### Required elements
- WhatsApp CTA at top
- contact form
- email address
- optional Telegram / Facebook community links
- expected response time statement
- trust reminder: `Tell us your profession and your target exam timeline`

### Recommended contact page structure
1. Hero: `Talk to us about your OET plan`
2. Short intro
3. WhatsApp first CTA
4. enquiry form
5. contact details
6. common reasons to contact us
7. mini FAQ

### Recommended form fields
- Full name
- Email
- WhatsApp number
- Profession
- Country
- Target exam date
- Skill(s) you need help with
- Message

### Recommended form CTA
`Send Enquiry`

### Add helper text
`Please tell us your profession, current level, and whether you need help with speaking, writing, or full OET preparation.`

---

## 18) Footer implementation

### Footer columns
#### Column 1 - brand summary
Short statement:
`Expert-led OET coaching for healthcare professionals preparing for international opportunities.`

#### Column 2 - quick links
- About
- Courses
- Packages
- Success Stories
- FAQ
- Contact

#### Column 3 - resources
- Blog
- Orientation
- OET for Nurses
- OET for Doctors
- OET Writing

#### Column 4 - contact/community
- WhatsApp
- Email
- Facebook Group
- YouTube
- optional Telegram

### Footer legal
Add:
- Privacy Policy
- Terms & Conditions
- Disclaimer

### Recommended disclaimer line
`OET is a registered trademark of its respective owners. This website is an independent coaching platform and is not the official OET website.`

---

## 19) Image and visual asset plan

The missing images are a major issue. This must be solved professionally.

## Image categories needed
### 1. Founder imagery
- professional portrait of Dr. Ahmed Hesham
- optional teaching / speaking / webinar screenshot

### 2. Healthcare learner imagery
- nurses studying
- doctors with laptop / notes
- pharmacists / healthcare professionals in professional settings
- remote learning scenes

### 3. Proof imagery
- testimonial screenshots
- orientation video thumbnails
- course dashboard or lesson snapshots
- WhatsApp support visuals if appropriate

### 4. Article/blog imagery
Use a consistent editorial style:
- clean medical / study visuals
- exam-prep desk scenes
- subtle UK/international pathway imagery only where relevant

## Visual style rules
Use images that feel:
- clean
- credible
- educational
- healthcare-relevant
- human

Avoid:
- cheesy corporate stock photos
- obviously fake boardroom scenes
- irrelevant business charts
- random smiling office teams

## File naming convention
Use SEO-friendly filenames:
- `dr-ahmed-hesham-oet-coach.jpg`
- `oet-nurses-training.jpg`
- `oet-speaking-feedback.jpg`
- `oet-writing-support.jpg`

## Alt text rules
Each image needs meaningful alt text, for example:
- `Dr Ahmed Hesham providing OET coaching guidance`
- `Nurse preparing for OET exam on laptop`
- `Student feedback for OET coaching program`

---

## 20) Content blocks you need from the business owner before final publish

Even with strong public research, some details should be confirmed before launch.

## Mandatory missing inputs
1. official business name preference
2. official logo files
3. exact WhatsApp number
4. official email address
5. exact package names and prices
6. whether live classes, recorded classes, or both are offered
7. whether mocks and correction services are sold separately
8. approved founder bio
9. approved testimonials and consent status
10. real team members, if any
11. refund / policy details
12. legal business name for footer and policies

## Optional but valuable
13. success metrics
14. pass/result stories that can be published
15. orientation video links
16. Facebook group confirmation
17. Telegram link confirmation
18. future expansion to other professions

---

## 21) SEO implementation plan

### Primary keyword themes
- OET coaching
- OET online coaching
- OET for nurses
- OET for doctors
- OET for pharmacists
- OET writing correction
- OET speaking practice
- OET preparation course

### On-page SEO rules
For every page:
- unique title tag
- unique meta description
- one H1 only
- keyword-aligned URL slug
- internal links to related pages
- descriptive image alt text
- FAQ schema where relevant

### Recommended title examples
- `OET Coaching for Nurses, Doctors & Pharmacists | OET with Dr Hesham`
- `OET Packages and Courses | OET with Dr Hesham`
- `OET Speaking and Writing Support | OET with Dr Hesham`

### Recommended meta example for homepage
`Expert-led OET coaching for nurses, doctors, pharmacists, and serious healthcare candidates. Explore packages, profession-specific support, and practical OET preparation.`

### Structured data recommendations
Add schema where possible:
- Organization
- Person (Dr. Ahmed Hesham)
- FAQPage
- BlogPosting
- BreadcrumbList

---

## 22) Conversion optimization plan

### High-converting elements to include
- sticky WhatsApp button
- CTA in hero
- CTA after every major section
- package comparison clarity
- trust section near the top
- FAQ near decision points
- visible profession segmentation
- contact prompt for unsure users

### Lead funnel recommendation
#### Top of funnel
- blog articles
- YouTube orientation
- Facebook community

#### Middle of funnel
- service pages
- package page
- success stories
- about page

#### Bottom of funnel
- WhatsApp CTA
- direct enquiry form
- package consultation CTA

### Suggested microcopy
- `Not sure where to begin?`
- `Tell us your profession and target exam date`
- `We’ll help you choose the right preparation path`

---

## 23) Technical implementation rules for editing the theme

### Keep
- theme CSS architecture
- JS plugins unless unnecessary
- responsive layout behavior
- existing section wrappers and classes where possible

### Change
- file names if needed for cleaner IA
- page titles
- navigation labels
- section headings
- placeholder images
- fake stats
- fake people
- fake addresses
- blog titles
- testimonial content
- CTA labels

### Remove or hide if no real content exists
- fake counters
- fake awards
- fake timeline
- fake offices / locations
- duplicate profile sliders
- irrelevant portfolio location labels

### Front-end best practice
Make **minimal structural changes, maximum semantic and content changes**.

---

## 24) Best workflow for using Codex in the IDE

Official OpenAI guidance for Codex emphasizes:
- using the IDE extension when working in-editor
- treating Codex like a teammate with explicit context and a clear definition of done
- using Git checkpoints before and after meaningful changes
- using `AGENTS.md` so Codex sees project-level instructions before it starts work

## Recommended workflow
### Step 1 - Create a new Git branch
Example:
`feature/oet-site-rebrand`

### Step 2 - Add an `AGENTS.md` file at repo root
This gives Codex persistent project instructions.

### Step 3 - Create a `content/` folder with source-of-truth docs
Recommended files:
- `content/brand.md`
- `content/site-copy.md`
- `content/packages.md`
- `content/testimonials.md`
- `content/faqs.md`
- `content/blog-topics.md`

### Step 4 - Give Codex focused tasks page by page
Do not ask for the entire site in one giant prompt first.

### Step 5 - Review diffs after each prompt
Keep changes bounded.

### Step 6 - Run responsive QA after each page cluster
Desktop, tablet, mobile.

### Step 7 - Final SEO/accessibility pass
Meta, alt text, headings, links, buttons.

---

## 25) Recommended `AGENTS.md` for this project

```md
# AGENTS.md

## Project overview
This repository is a static HTML/CSS/JS website based on the Opax HTML theme.
The goal is to transform the Marketing Consulting demo into a professional website for an OET online coaching business led by Dr. Ahmed Hesham.

## Core objective
Preserve the visual quality and responsiveness of the theme while replacing dummy consulting content with real, healthcare-education-focused content.

## Mandatory rules
- Do not rebuild the site from scratch.
- Reuse existing sections, spacing, CSS classes, and component patterns where possible.
- Keep HTML semantic and clean.
- Do not introduce a new framework.
- Do not remove vendor assets unless they are clearly unused.
- Replace fake people, fake testimonials, fake locations, fake stats, and fake consulting language.
- Keep edits ASCII unless the file already uses non-ASCII.
- Ensure every edited page has one clear H1 and meaningful meta tags.
- Add alt text for all meaningful images.
- Preserve responsiveness.

## Brand direction
Primary brand name: OET with Dr Hesham
Supporting identity: The Pathway to UK
Positioning: expert-led OET coaching for healthcare professionals
Primary audience: nurses, doctors, pharmacists
Primary CTA: Join on WhatsApp
Secondary CTA: View Packages

## Content direction
Use clear, supportive, professional English.
Avoid hype and vague claims.
Do not promise guaranteed scores or guaranteed passing.
Each page must clearly explain who it is for, what is offered, why it is credible, and what to do next.

## Page mapping
- MarketingConsulting.html -> index.html
- about.html -> about.html
- service.html -> courses.html
- pricing.html -> packages.html
- portfolio.html -> success-stories.html
- testimonial.html -> testimonials.html or success-stories.html
- faq.html -> faq.html
- blog-style-one.html -> resources.html
- contact.html -> contact.html

## Quality bar
Before finishing a task:
1. verify headings are relevant
2. verify CTA labels are consistent
3. verify no dummy contact info remains
4. verify no fake business-consulting text remains
5. verify layout still matches theme quality
6. verify mobile layout still works
```

---

## 26) Recommended source-of-truth content docs for Codex

Create these markdown files first.

### `content/brand.md`
Include:
- brand name
- tagline
- founder short bio
- tone rules
- CTAs
- primary audiences

### `content/site-copy.md`
Include approved copy for:
- homepage hero
- about summary
- service summaries
- CTA microcopy
- footer text

### `content/packages.md`
Include:
- package names
- target learner type
- included features
- pricing status

### `content/testimonials.md`
Include:
- approved testimonials
- profession
- source/consent status

### `content/faqs.md`
Include:
- final FAQ questions and answers

### `content/blog-topics.md`
Include:
- initial editorial topics
- categories
- SEO targets

This makes Codex dramatically more reliable because the task becomes grounded.

---

## 27) Codex prompt pack for implementation

Use these prompts one by one.

## Prompt 1 - Repository audit
```text
Audit this static HTML theme repository and identify all files related to the Marketing Consulting demo. Create a concise implementation map showing which files should become the OET coaching website pages, which pages can be removed or hidden from navigation, and which repeated sections still contain dummy business consulting content. Do not make edits yet. Return the result as a markdown checklist.
```

## Prompt 2 - Global brand replacement plan
```text
Using the project AGENTS.md and the files in content/, create a precise content-replacement plan for the website. Identify all repeated global elements that must be updated across pages: brand name, navigation labels, CTA buttons, footer text, contact details, page titles, meta descriptions, and dummy placeholders. Do not edit code yet. Return a file-by-file action list.
```

## Prompt 3 - Homepage implementation
```text
Edit the homepage based on the Marketing Consulting demo so it becomes a professional homepage for an OET coaching platform led by Dr. Ahmed Hesham. Keep the layout and styling architecture, but replace the dummy consulting text with audience-specific OET content for nurses, doctors, pharmacists, and serious healthcare candidates. Replace fake stats, fake people, and fake portfolio language with relevant trust, offers, process, packages, testimonials, and CTA messaging. Preserve responsiveness. After editing, summarize all changed sections.
```

## Prompt 4 - Courses page implementation
```text
Transform the services overview page into a Courses page for the OET website. Group offerings into profession-specific, skill-specific, and format-specific categories. Keep the theme design language, but rewrite all cards, headings, supporting text, and CTAs to suit an OET coaching business. Remove all consulting-specific language. Preserve visual consistency with the homepage.
```

## Prompt 5 - Course detail templates
```text
Use the service single template to create the following pages: oet-for-nurses.html, oet-for-doctors.html, oet-for-pharmacists.html, oet-speaking.html, oet-writing.html, and oet-reading-listening.html. Reuse the same structural template, but customize each page's H1, intro, audience fit, included support, FAQs, and CTA around the specific offer. Keep the HTML maintainable and avoid duplicating unnecessary boilerplate beyond what the theme structure requires.
```

## Prompt 6 - About and trust pages
```text
Rewrite about.html into a strong founder-and-platform credibility page for OET with Dr Hesham. Remove fake team scale, fake milestones, fake global stats, and any generic consulting claims that are not grounded. Replace them with founder bio, teaching philosophy, learner types served, platform strengths, and a conversion-ready CTA. Keep the design polished and professional.
```

## Prompt 7 - Packages page
```text
Rewrite pricing.html into packages.html for an OET coaching business. Keep the card layout, but change all package names, descriptions, included items, and CTA wording so they reflect OET learning packages rather than consulting retainers. If no approved price exists in content/packages.md, do not invent numbers. Use contact-oriented language where needed and keep the page conversion-focused.
```

## Prompt 8 - FAQ and contact pages
```text
Rewrite faq.html and contact.html for the OET coaching platform. The FAQ page should answer high-intent questions about OET, packages, writing/speaking support, enrollment, profession fit, and contact flow. The contact page should prioritize WhatsApp, include a relevant enquiry form, remove all fake addresses and business-consulting copy, and align CTA language with the rest of the site.
```

## Prompt 9 - Success stories and testimonials
```text
Transform portfolio.html and testimonial.html into proof-oriented pages for the OET website. Use student-success framing instead of corporate portfolio framing. Replace location labels, project labels, and fake people with testimonial categories, profession labels, outcome-focused cards, and clean CTA pathways. Keep the theme interactions intact.
```

## Prompt 10 - Blog/resources page
```text
Rewrite the blog listing page into a Resources page for OET with Dr Hesham. Replace all dummy article titles with SEO-relevant OET article titles and summaries. Make sure each card looks publish-ready and aligns with the audience segments on the site. Also prepare the page for future blog detail pages with consistent metadata and CTA patterns.
```

## Prompt 11 - Image pass
```text
Scan all edited pages and replace empty image placeholders, broken image paths, missing alt text, and generic visual labels. Keep the theme layout intact while using a consistent naming convention for images and meaningful alt text for all user-visible media. Return a list of image assets still needed from the client.
```

## Prompt 12 - Final QA pass
```text
Run a final quality pass across all edited pages. Check for any remaining consulting-specific copy, fake contact details, broken internal links, inconsistent CTA labels, missing meta tags, repeated H1s, weak alt text, and mobile-unfriendly sections. Make minimal high-confidence fixes directly, then return a final QA summary grouped by content, SEO, accessibility, and consistency.
```

---

## 28) Recommended prompt style for GPT-5.4 and Codex work

To get reliable results, your prompts should always contain:

1. **task** - what page or file cluster to edit
2. **constraints** - keep layout, preserve responsiveness, do not invent facts
3. **context** - refer to AGENTS.md and source-of-truth markdown docs
4. **definition of done** - what the finished state must include
5. **verification request** - ask Codex to summarize changed sections and remaining open items

### Prompt skeleton
```text
Task: [exact page or file group]
Context: Use AGENTS.md and the content/*.md files as the source of truth.
Constraints:
- preserve the Opax visual structure
- do not introduce a new framework
- remove all dummy consulting copy
- do not invent facts that are not in content/ files
- keep mobile responsiveness intact
Definition of done:
- relevant page title and H1
- all visible copy aligned to the OET business
- CTA labels consistent with the site
- no fake contacts, fake people, fake stats, or consulting-specific text remains
Verification:
- after edits, summarize what changed
- list any missing inputs still required from the client
```

---

## 29) Quality checklist before launch

## Content quality
- [ ] No generic consulting language remains
- [ ] No irrelevant FAQ items remain
- [ ] No fake names, fake teams, fake addresses, or fake locations remain
- [ ] Founder profile is accurate and approved
- [ ] Package content is accurate
- [ ] Testimonials are approved

## UX quality
- [ ] Hero clearly states offer and audience
- [ ] Navigation is clean and logical
- [ ] CTAs are consistent
- [ ] WhatsApp CTA is visible on every major page
- [ ] Users can self-select by profession or skill

## Technical quality
- [ ] All internal links work
- [ ] No broken images
- [ ] Mobile layout is preserved
- [ ] Meta titles/descriptions are set
- [ ] Favicons and logos are correct

## SEO quality
- [ ] One H1 per page
- [ ] alt text added
- [ ] headings are hierarchical
- [ ] URLs are clean
- [ ] resource pages are keyword-aligned

## Accessibility quality
- [ ] buttons have descriptive labels
- [ ] images have alt text
- [ ] forms have labels
- [ ] color contrast remains acceptable
- [ ] important text is not embedded only in images

---

## 30) Final recommendation on what to build first

### Phase 1 - launchable core
Build and approve first:
- Home
- About
- Courses
- Packages
- FAQ
- Contact

### Phase 2 - proof and SEO
Then build:
- Success Stories
- Testimonials
- Resources / Blog
- Course single pages

### Phase 3 - optimization
Then add:
- schema
- blog detail pages
- analytics
- events/conversion tracking
- multilingual support if needed

---

## 31) My strongest strategic recommendation

Do **not** make this website feel like a generic online course site or a recycled corporate template.

Its real commercial advantage is the combination of:
- expert-led teaching
- healthcare-specific relevance
- profession segmentation
- practical exam support
- community plus direct contact pathway

That means the homepage and navigation should always make these three things obvious:

1. **This is for healthcare professionals preparing for OET.**
2. **This is led by a credible instructor with medical identity and OET teaching relevance.**
3. **There is a clear next step: WhatsApp, package, orientation, or course page.**

If those three are clear, the website will feel far more premium and trustworthy than the current Facebook-group-only footprint.

---

## 32) Suggested copy starter pack (ready to adapt)

### Homepage hero
**Expert OET Coaching for Healthcare Professionals**

Prepare with confidence through profession-specific support for nurses, doctors, pharmacists, and serious candidates who need practical OET strategy, clear feedback, and a more structured path to exam success.

Buttons:
- Join on WhatsApp
- View Packages

### About intro
OET with Dr Hesham is an expert-led coaching platform designed for healthcare professionals preparing for the OET exam. Our goal is to help serious candidates study more clearly, improve more strategically, and move toward exam readiness with support that makes sense for real healthcare communication.

### Packages intro
Choose the level of support that fits your profession, your timeline, and the areas where you need the most help.

### Contact intro
Tell us your profession, your target exam date, and the skill areas you need help with. We will guide you toward the preparation path that fits you best.

---

## 33) Reference notes for the developer

This plan assumes:
- the theme files already exist locally
- you are editing static HTML pages
- actual brand assets and final commercial details will be supplied or confirmed before publish

Where business facts are not yet verified, the safest implementation pattern is:
- use true public identity and broad offer framing
- avoid invented operational details
- create clean placeholders where the client must approve the final content

That approach will keep the site both professional and honest.

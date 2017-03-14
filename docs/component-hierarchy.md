## Component Hierarchy

**AuthFormContainer**
 - AuthForm

**HomeContainer**
 - Home
 - Navbar

**GuideContainer**
 - Guide
  + GuideIndex
  + CreaterBar

**StepContainer**
 - Step
  + StepIndex

**CommentContainer**
  - Comment
    + Writer

**NewGuideContainer**
 - NewGuide

**NewStepContainer**
 - NewStep

**NewCommentContainer**
 - NewComment

## Routes

|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/home" | "HomeContainer" |
| "/guide/:guideId" | "GuideContainer" |
| "/new-guide" | "NewGuideContainer" |
| "/new-step" | "NewStep" |

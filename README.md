# Kalamo - A Simple Web Editor

- First idea
    
    [https://github.com/barelyhuman/mark](https://github.com/barelyhuman/mark)
    
    Simple, to the point, webeditor
    
    - Clean ui
    - Left panel triggered by icon. User/workspace (repo) type of content
        - Settings
        - File list
        - On hover, last mod and blame
    - Right panel triggered by icon
        - Metadata (front matter)
        - Media repo (settings)
    - Main pane
        - WYSIWYG editor with toolbar at the bottom
        - Mode switched (zen, code)
        - Code has Split View: preview and code
        - Preview can be toggled
    
    # Flow 1 - posts/pages
    
    1. Auth screen. GitHub only first (to get the repos)
    2. User select repo to scaffold the workspace 
    3. App detects framework and prepare tree view with content collections
    4. User clicks on a file, editor loads (wysiwyg)
    5. Panels slide out, icons stay (iCloud web style)
    
    # Architecture
    
    1. kamal 2 for deployment [https://kamal-deploy.org/](https://kamal-deploy.org/)
    2. ExpressJS
    3. PocketDB for user auth, settings and user data (and possibly temp images)
    4. Github for auth initially
    5. Content comes from git repo (md files and images)
    6. Store images on blobs before git commit
    7. When user commits, stores data on github
    8. App always run on container. Dev locally, production is a machine in Hetzner managed by kamal
    9. Use bun instead of npm 

<aside>
<img src="https://www.notion.so/icons/thought-dialogue_yellow.svg" alt="https://www.notion.so/icons/thought-dialogue_yellow.svg" width="40px" />

The word "Kalamo" (κάλαμο) in Greek translates to "reed" or "pen." In ancient times, a reed pen was commonly used for writing, making it a fitting name for a web editor focused on writing and content creation. It symbolizes the tool used for crafting words and ideas, aligning well with the purpose of your project.

</aside>

**Author**: [Mauricio Wolff](https://mauriciowolff.com)

**Domain**: [`kalamo.org`](http://kalamo.org) ✅

**Github**: 

## **Objective**

Kalamo is a streamlined web editor designed for developers and writers who need a simple, efficient tool to manage markdown content and media within git (initially GitHub) repositories. The goal is to provide a clean, distraction-free interface that integrates seamlessly with git.

## **Key Features**

- **Clean UI:** Minimalist design with a focus on usability.
- **GitHub Integration:** Authenticate and interact directly with repositories.
- **Framework detection**: Detect if repo is Astro, Gatsby, Jekyll, and shows only content files
- **WYSIWYG Editor:** Rich text editing with markdown support.
- **Split View Mode:** Toggle between code and preview modes for complex layouts or if the user prefers to write md code.
- **Temporary Media Storage:** Manage media files before committing to GitHub.

## **Target Audience**

Developers and content creators who frequently use markdown and GitHub for content management, and don’t want to handle git operations or edit content only in IDEs

## **Technology Stack**

- Frontend: Custom CSS, TypeScript
- Backend: ExpressJS, PocketDB, simple-git
- Deployment: Docker, Kamal, Hetzner
- Version Control: GitHub

## Success Metrics

- User adoption and retention rates
- Feedback from early adopters
- Performance benchmarks (loading times, editor responsiveness)

---

## Philosophy and business model

My first thinking is to make this as a learning project on how to develop and deploy small apps in a simple and scalable way. 

Provide it free for 1 repo, and probably €5 for unlimited. Run on a very small Hetzner machine in the beginning, and scale as needed.

Also use it for Miro’s design documentation, removing the barrier for designers to interact with a doc repo.

---

[**Product Requirements Document (PRD)**](https://www.notion.so/Product-Requirements-Document-PRD-11d02a468ed380d38ed0e7d66e97dd9e?pvs=21)

---
# Leave the homepage title empty to use the site title
title: ""
date: 2022-10-24
type: landing

design:
  # Default section spacing
  spacing: "3rem"

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      text: ""
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: /uploads/resume.pdf
    design:
      css_class: dark
      background:
        color: black
        image:
          # Add your image background to `assets/media/`.
          filename: invasion.svg
          filters:
            brightness: 1.0
          size: cover
          position: center
          parallax: false
  - block: collection
    id: post
    content:
      show_date: false
      title: Research notes
      count: 9
      filters:
        show_date: false
        folders:
          - post
        featured_only: false
    design:
      show_date: false
      view: article-grid
      fill_image: true
      columns: 3
  - block: collection
    id: project
    content:
      title: Projects and experiments
      count: 6
      filters:
        folders:
          - project
        featured_only: false
    design:
      view: article-grid
      fill_image: true
      columns: 3
  - block: collection
    id: teaching
    content:
      title: Teaching
      count: 10
      filters:
        folders:
          - teaching
        featured_only: true
    design:
      view: citation
  - block: collection
    id: publication
    content:
      title: Non-random sample of publications
      count: 6
      filters:
        folders:
          - publication
        featured_only: true
    design:
      view: citation
---

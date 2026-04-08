---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2022-10-24
type: landing

design:
  # Default section spacing
  spacing: "0rem"

sections:
  - block: collection
    id: post
    content:
      title: Research notes
      count: 9
      filters:
        folders:
          - post
        featured_only: false
    design:
      show_date: false
      show_read_time: false
      show_read_more: false
      view: article-grid
      fill_image: true
      columns: 3

  - block: collection
    id: project
    content:
      title: Projects and experiments
      count: 9
      filters:
        folders:
          - project
        featured_only: false
    design:
      show_date: false
      show_read_time: false
      show_read_more: false
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

  - block: resume-biography-3
    id: bio
    content:
      # Choose a user profile to display
      username: thibaultlatrille
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: uploads/Thibault_Latrille_CV.pdf
      headings:
        about: 'Micro and macro evolution'
        education: 'Education'
        interests: 'Interests'
    design:
      css_classes: 'compact-bio'
      background:
        # Disable gradient mesh
        gradient_mesh:
          enable: false
        # Use image from assets/media/
        image:
          filename: invasion.svg
          filters:
            brightness: 1.0
          size: cover # cover, contain, auto
          position: center
          parallax: false

      # Name heading sizing
      name:
        size: xs # xs, sm, md, lg, xl

      # Avatar customization
      avatar:
        size: small # small, medium, large, xl, xxl
        shape: circle # circle, square, rounded
---

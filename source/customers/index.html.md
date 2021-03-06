---
title: Customer API

language_tabs: # must be one of https://git.io/vQNgJ
  - shell--json: JSON
  - shell--kv: Key/Value

includes:
  - intro
  - customers/auth
  - customers/company
  - customers/clients
  - customers/clients/contacts
  - customers/projects
  - customers/projects/items
  - customers/projects/options
  - customers/projects/rooms
  - customers/projects/purchasing
  - customers/purchasing/sources
  - customers/time_sessions
  - customers/users
  - errors

toc_footers:

search: true
---

# Introduction

Welcome to the Jetbuilt Customer API! As a customer, you can use this API to access your data.

<aside class="notice">
  The Customer API is <strong>Read-only</strong> by default.
</aside>

<aside class="notice">
  <strong>Write Access</strong> must be enabled within your company's
  Integration Settings.
</aside>

Currently only some records can be created/modified using the API (e.g. Projects).
Please write with care.

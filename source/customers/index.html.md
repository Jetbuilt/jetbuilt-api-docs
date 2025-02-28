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
  - customers/labor_presets
  - customers/labor_programs
  - customers/market_segments
  - customers/phases
  - customers/products
  - customers/projects
  - customers/projects/items
  - customers/projects/options
  - customers/projects/rooms
  - customers/projects/systems
  - customers/projects/tags
  - customers/projects/discussions
  - customers/projects/proposals
  - customers/projects/purchasing
  - customers/projects/service_packages
  - customers/purchasing/sources
  - customers/purchase_orders
  - customers/tasks
  - customers/time_sessions
  - customers/stock/items
  - customers/stock/locations
  - customers/stock/products
  - customers/users
  - customers/vendors
  - customers/vendors/products
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

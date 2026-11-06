# AkatePilot ✈️🍻 — Stock & Sales Autopilot for Small Businesses

> An end-to-end, macro-free Excel / Google Sheets system that turns a paper notebook into automatic **sales, stock, profit, customer, credit and expense** reporting — built for **Akate Bar** (Nigeria) and reusable for any shop, bar, pharmacy, supermarket or kiosk.

![status](https://img.shields.io/badge/status-portfolio%20project-green) ![excel](https://img.shields.io/badge/Excel-365%20%7C%202019%2B-217346) ![currency](https://img.shields.io/badge/currency-NGN%20%E2%82%A6-orange) ![data](https://img.shields.io/badge/demo%20data-synthetic-blue)

## The problem
Akate Bar had never recorded sales or stock systematically, so the owner could not answer three basic questions: *How much do I make? How much do I lose? What is on my shelves?*

## The solution
Type **only** what happens (a sale, a delivery, a breakage). Everything else is automatic:

| You type | The workbook does it for you |
|---|---|
| Date, product, sale type, quantity, payment | Price lookup, total, cost, **profit**, customer ID, week/month keys, stock deduction |
| Stock bought (unit + cost + supplier) | Pieces conversion, weighted average cost, **old vs new price**, supplier record |
| A *brand-new* product name | New row in PRODUCTS with auto category/subcategory, ID, flagged for price set-up |
| A new customer / supplier name | New CUSTOMERS / SUPPLIERS row, ID, spend, visits, credit owed, VIP rank |
| A weekly shelf count | Difference, and exactly what to record to correct stock |

**Highlights:** 44-product catalogue with keyword-rule auto-categorisation · retail / half-pack / full-pack wholesale maths · sachet water in **bags** · credit & repayments · breakage / leakage / personal-use cost · expenses & owner drawings · live "pivot-style" reports · interactive dashboard (period + product-type selectors) · rule-based **business recommendations** · opening/closing stock for any day · star-schema CSV/SQL export for Python & Power BI/Tableau.

## What's in this repo
```
workbooks/  AkatePilot_Akate-Bar_TEMPLATE.xlsx   <- blank, ready for real use
            AkatePilot_DEMO_Anonymised.xlsx      <- 61 days of synthetic data (safe to share)
data/       10 CSVs (star schema)  ·  sql/ schema + 7 queries  ·  python/ analysis.py
docs/       01 Project documentation · 02 Security, backup & licensing
            03 Pricing, pitch & publishing       · 04 Roadmap & upgrades · 05 Daily notebook guide
```

## Quick start
1. Open the **TEMPLATE** in Excel (desktop or mobile) and save it to OneDrive (AutoSave on).
2. Read **START HERE**. Fill prices on **PRODUCTS**, opening stock on **STOCK IN-OUT**.
3. Record sales daily on **SALES**. Open **DASHBOARD**.
Try the **DEMO** first to see a full dashboard.

## Skills demonstrated
Data modelling (star schema, surrogate keys) · advanced Excel (SUMIFS/COUNTIFS/INDEX-MATCH/SUMPRODUCT, dynamic ranking without macros, data validation, conditional formatting, charts) · business logic (inventory valuation, margin, shrinkage, credit control, RFM-style segmentation) · UX for low-digital-literacy users · documentation · SQL & Python hand-off.

## Honest limitations
Built with formulas only (no VBA) so it is safe on phones and in Google Sheets. Consequences: input columns cannot be force-capitalised on typing (a cleaned copy is created beside them); "pivot tables" are live formula tables, not native PivotTable objects (native pivots do not auto-refresh); capacity is ~8,000 sales lines per file (about a year) — start a new yearly file after that. Demo prices and pack sizes are **illustrative assumptions**.

## Licence
© 2026 — All rights reserved. The DEMO workbook and CSVs may be viewed and shared for portfolio purposes; the TEMPLATE and formula logic may not be resold or redistributed. See `LICENSE`.

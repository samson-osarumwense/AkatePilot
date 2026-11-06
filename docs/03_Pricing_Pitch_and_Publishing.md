# 03 · Pricing, Pitch, Advertising & Publishing Steps

*All prices are starting suggestions — check what comparable freelancers charge on Upwork/Fiverr and in your local market, then adjust.*

## A. Pricing tiers (per client)
| Tier | Best for | What is included | Suggested price |
|---|---|---|---|
| **Starter – "Notebook to Sheet"** | One-shop owner | Template with their product list, prices and pack sizes loaded; 1-hour video/phone walkthrough; printed notebook guide | ₦45,000 – ₦80,000 (≈ $40–60) |
| **Growth – "Autopilot"** | Bars, supermarkets, pharmacies | Starter + custom categories/rules, credit & expense set-up, security set-up (roles, backup), 2 training sessions, 30 days support | ₦120,000 – ₦250,000 (≈ $100–180) |
| **Pro – "Insight"** | Multi-branch / growing business | Growth + multi-store, Power BI/Tableau dashboard, SQL database, monthly report & recommendations call, 90 days support | ₦350,000 – ₦750,000 (≈ $250–500) |
| **Care plan** (add-on) | all | Monthly check, backup test, updates, bug fixes | ₦10,000 – ₦40,000 / month |
| **Template shop** (digital product) | DIY owners | Blank template + guide PDF + 1 video | ₦12,000 – ₦25,000 (≈ $10–18), per business licence |
Tips: quote **fixed price per milestone**; charge extra for data entry/clean-up of old records; offer a free 15-minute discovery call; give a "first-month results" guarantee (you fix errors for free).

## B. Pitch to a potential client (30 seconds)
> "Most small shops don't know their real profit because they don't track stock. I turn your paper notebook into an automatic system: you write what you sell, type it once in the evening, and the workbook shows profit, what to restock, who owes you and your best-selling items — on your phone, even offline. I built it for a bar with 44 products; here's the live demo. Can I set it up for your shop in a week?"

**Discovery questions:** How do you record sales/stock today? How many products and suppliers? Do customers buy on credit? Who else records data? Do you use a phone or a laptop? What decision would you make if you knew your real profit?

**Objection handling:** *"Too complicated"* → it has a 5-minute daily routine and drop-downs. *"I have no computer"* → works in the free Excel/Sheets mobile apps. *"What if I lose my phone?"* → cloud AutoSave + backup plan (see doc 02). *"Why not buy software?"* → no monthly fee, fully yours, custom to your products.

## C. Where to advertise
Upwork & Fiverr gigs · LinkedIn (project post + short video) · X/Twitter and Instagram reels ("how I found ₦104,880 owed to a bar") · WhatsApp Status/Business catalogue · local WhatsApp groups of market traders, bar/restaurant owners, SME associations · Facebook groups for small business owners in Nigeria · direct visits to nearby shops with a printed one-page flyer + QR to the demo video · YouTube tutorial series · referral bonus (10% to the person who recommends you) · partner with accountants and POS agents · Selar/Gumroad for the DIY template.

## D. Ready-to-paste Upwork project catalogue entry
**Title:** *Automated Sales & Inventory Tracker in Excel/Google Sheets (Profit, Stock Alerts, Dashboard)*
**Description:** I built **AkatePilot**, a macro-free, mobile-friendly workbook that records sales and stock and automatically calculates profit, stock left, low-stock alerts, supplier price changes, customer credit and a business dashboard with recommendations. Designed for small shops and bars in Nigeria and easily adapted to any retail business. Includes: product list set-up, retail/wholesale pricing logic, credit tracking, expense tracking, weekly stock-count method, notebook templates, security and backup guidance, and training.
**Skills:** Microsoft Excel · Google Sheets · Data Analysis · Dashboard · Inventory Management · Power BI · SQL · Data Visualisation.
**Project length / budget:** use the Starter/Growth/Pro tiers above. Upload: dashboard screenshots (3), a 90-second screen-recording, and the DEMO workbook link.

## E. Publishing steps — GitHub
1. Create an account → **New repository** → name `akatepilot-stock-sales-tracker` → Public → add README (skip; we have one) → licence "None" (we supply `LICENSE`).
2. Prepare the folder: keep `README.md`, `LICENSE`, `docs/`, `data/`, `sql/`, `python/`, and **only** `workbooks/AkatePilot_DEMO_Anonymised.xlsx` (not the template, if you plan to sell it). Add 3 dashboard screenshots to `docs/images/` and link them in the README.
3. In the repo: **Add file → Upload files** (drag the folders) → commit message `Initial release v1.0`. Or with Git:
```
git init && git add . && git commit -m "Initial release v1.0"
git branch -M main && git remote add origin https://github.com/<you>/akatepilot-stock-sales-tracker.git
git push -u origin main
```
4. Settings → About: description, topics (`excel`, `inventory`, `sales-dashboard`, `data-analytics`, `nigeria`, `power-bi`, `sql`). Pin the repo on your profile. Create a **Release v1.0** and attach the demo.
5. Add `CHANGELOG.md` for every new version.

## F. Publishing steps — Upwork / LinkedIn / portfolio site
* **Upwork:** Profile → Portfolio → *Add project* → paste section D, upload screenshots/video, add the GitHub link. Add a **Project Catalog** offer with the three tiers.
* **LinkedIn:** Profile → Featured → add the GitHub link + video. Post: *"Akate Bar didn't know its profit… so I built AkatePilot. 3 lessons from automating a bar's stock & sales in Excel (no macros). Demo + code: link."* Add "Data Analyst | Excel | SQL | Power BI" keywords.
* **Behance / Notion / Google Sites:** one-page case study: Problem → Approach → Solution → Results → What I'd do next.
* **CV / internship bullet:** *"Designed and built an automated Excel inventory & sales system (273k formulas, 0 errors) for a Nigerian bar: profit, stock alerts, credit, supplier price tracking and a self-updating dashboard; exported a star-schema dataset for SQL/Python/Power BI."*

## G. Case-study talking points (use the real numbers once Akate Bar has data)
Baseline (no records) → 5-min daily routine → first-month findings (profit margin, top 5 products, items losing money, breakage cost, credit outstanding, price increases from suppliers) → actions taken and results (₦ saved / stockouts avoided).

# 04 · Roadmap, Upgrades & Further Suggestions

## Near term (v1.1 – 1 month)
* Test in Google Sheets and Excel mobile; fix any incompatible function. Provide a Sheets-native copy if needed.
* Record a 5-minute Yoruba/Pidgin/English walkthrough for Mum and staff; print the NOTEBOOK GUIDE pages.
* Add real prices and pack sizes for Akate Bar, enter opening stock (do a full count on a Sunday morning), run 2 weeks in parallel with the notebook.
* Add Excel *Table* objects and Power Query connections for one-click refresh into Power BI.
* Add a **monthly profit & loss** sheet and a **cash-up** sheet (expected cash vs counted cash at closing).

## Medium term (v2.0 – 3 months)
* **Barcode/QR scanning** (phone camera → Google Form / Power Apps / AppSheet) to log sales faster.
* **Apps Script / Office Scripts** (optional, outside the macro-free core) for: one-click daily close, true auto-capitalising on entry, auto-archive at year end, WhatsApp/Email alert when stock is low or debt is overdue.
* **Price history table** (selling-price changes over time) and a price-suggestion helper (target margin → selling price).
* **Demand forecasting** (moving average / seasonal) feeding "Suggested Buy"; ABC/Pareto classification; stock-turnover and days-of-inventory KPIs; dead-stock alerts.
* **Customer CRM**: birthdays, WhatsApp click-to-chat, loyalty points, credit-limit rules.
* Staff/shift attribution (who recorded the sale) and cash variance.

## Software application path
1. **No-code:** AppSheet or Power Apps over the same tables → mobile app with offline mode, barcode scanner, role-based access.
2. **Low-code web app:** Streamlit or Flask + SQLite/PostgreSQL using `sql/schema.sql` (already normalised); Python reads the CSV format unchanged.
3. **Product:** React/Flutter mobile app + Supabase/Firebase backend, multi-tenant, roles, offline-first sync, Paystack/Flutterwave payment-reconciliation, WhatsApp receipts, subscription pricing (₦3,000–₦10,000/month per shop), an admin portal for you, and a Power BI/Metabase analytics layer. Validate with 5–10 paying shops before building.
4. **Data science extras:** product-affinity ("people who buy X also buy Y"), churn prediction on customers, anomaly detection for stock shrinkage.

## Other expenses worth tracking (already in the EXPENSES list)
Transport & delivery of stock · loading/offloading · repairs & maintenance (fridge, solar, furniture) · backup fuel · airtime & data · POS/bank charges · levies, taxes & licences · cleaning & waste · security · ice/cooling · family-helper pay (even if unpaid, record a notional wage to know the *true* profit) · marketing/events · one-off equipment · **owner drawings** (cash taken — tracked separately). Consider adding *depreciation of fridges/solar* (cost ÷ years ÷ 12) later.

## Best stock-count practice (summary — full steps in the NOTEBOOK GUIDE sheet)
Weekly count of fast sellers, monthly count of slow items; same time each week; two people; count full packs then loose pieces; fridge and store separately; no selling during the count; re-count differences above 2 pieces; record loss/gain on STOCK IN-OUT so the system matches the shelf.

## What to write in the notebook (summary)
Four page types — **Product page** (name, how bought, pieces per pack, cost per pack, retail & pack price, reorder level), **Daily sales page** (date, product, R/WH/WF, quantity, special price, payment, customer if regular/credit), **Stock in/out page** (date, product, bought/broken/leaked/personal/returned, quantity, unit, cost per unit, supplier), **Weekly count page** (packs + loose pieces). Sachet water: one tick per *bag* finished. Layouts with examples are in the **NOTEBOOK GUIDE** sheet.

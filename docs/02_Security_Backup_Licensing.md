# 02 · Security, Backup, Access & Copyright

*I am not a lawyer — confirm copyright and contract points with a qualified Nigerian IP/contract lawyer.*

## A. Automatic saving, backup and sync (so a stolen or lost phone never loses data)
1. Keep the live file **only** in OneDrive (Excel) or Google Drive (Sheets). Turn **AutoSave ON** (Excel top-left toggle). Every edit saves in seconds.
2. Install the Excel app + OneDrive app on the owner's phone and laptop; sign in with the same account. Offline edits sync when data returns (important for power/network cuts).
3. **Version history** (File → Info → Version History / Google "See version history") lets you undo wrong entries or tampering.
4. **3-2-1 backup:** 3 copies, 2 places, 1 offsite. Live file (cloud) + weekly copy named `AkatePilot_Backup_YYYY-MM-DD.xlsx` to a second cloud or flash drive kept at home. Set a phone reminder every Sunday. Optional: Windows File History / OneDrive "Personal Vault".
5. Lost device: sign in to account.microsoft.com → *Devices* → mark lost / sign out everywhere; change the password.

## B. Access: you = admin, others = limited
| Role | Who | How |
|---|---|---|
| **Admin / Owner** | you only | Owns the cloud account and file; holds the sheet-protection password |
| **Editor** | your mum and trusted family | Share → *Can edit*, **specific people only** (no "anyone with link") |
| **Viewer** | an accountant, a client | Share → *Can view* (and "block download" where available) |
1. Turn on **2-step verification** on the owning Microsoft/Google account; use a long passphrase, store it in a password manager.
2. **Protect structure:** Review → Protect Workbook (password) so nobody can delete or rename sheets. Report sheets and the dashboard are already protected (no password); add a password via Review → Unprotect Sheet → Protect Sheet.
3. **Lock formula columns on data sheets:** select the yellow columns → Format Cells → Protection → untick *Locked*; then Review → Protect Sheet (password, allow *Use AutoFilter* and *Select unlocked cells*). Editors can then type only in yellow cells and cannot overwrite formulas. (Do this *after* set-up, on SALES, STOCK IN-OUT, CREDIT, EXPENSES.)
4. Use **file encryption** for the backup copy: File → Info → Protect Workbook → Encrypt with Password.
5. Never email the live file; share a link. Remove people who stop helping.
6. Each helper should have their **own** login (not a shared one) so version history shows who changed what.
7. Optional audit habit: staff write their initials in the notebook beside each sale/stock line.

## C. Copyright & protecting your work
* Copyright exists automatically when you create original work; in Nigeria you can also **register** works with the Nigerian Copyright Commission (NCC) for stronger evidence — check current procedure and fees.
* Put © and your name in: the START HERE and DASHBOARD sheets (already included — replace with your name), README, LICENSE, document properties (File → Info → Properties → Author) and the file name.
* **Publish only the DEMO** (synthetic data) on GitHub/Upwork. Sell/deliver the formula-live TEMPLATE under a written licence (see LICENSE) or a client contract. For clients, deliver a *protected* copy (structure password) and keep the unprotected master.
* Keep evidence of authorship: dated drafts, Git commit history (every commit is time-stamped), your OneDrive version history, and emailed copies to yourself.
* Add a licence line in every client contract: client owns *their data*; you keep the *template design, formulas and documentation* (or grant a limited licence).
* Watermark idea: a discreet name/ID in the footer of printed dashboards.
* Remember the owner's business data (sales, customers' names/phones) is personal data: keep it private and follow the Nigeria Data Protection Act principles (collect only what you need, keep it secure).

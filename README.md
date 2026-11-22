# Argorant Homebrew tap

Homebrew formulae from Argorant.

## Flatverify CLI

Verify email addresses from your terminal with [Flatverify](https://flatverify.com). Every plan is unlimited;
plans differ only in speed.

```bash
brew install argorant/tap/flatverify

export FLATVERIFY_API_KEY=fv_...   # create a key at https://app.flatverify.com (100 free checks, no card)
flatverify verify maya.chen@amazon.com
flatverify clean leads.csv --keep valid
flatverify account
```

What you can do with it:

1. Check a single address before you paste it into an email: `flatverify verify sam.lee@stripe.com`.
2. Clean a lead export before it reaches your sending tool: `flatverify clean export.csv --keep valid`.
3. Fail a script or CI step when a list contains dead addresses: `flatverify clean list.csv --fail-on invalid`.
4. Pull the results of a job you started in the app or over the API: `flatverify results <job-id> --out results.csv`.

Source and docs: https://github.com/argorant/flatverify-js, https://flatverify.com/docs.
The same CLI runs without Homebrew as `npx flatverify`.

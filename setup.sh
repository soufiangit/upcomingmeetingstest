#!/usr/bin/env bash

# login
echo "Sign in to Microsoft 365..."
npx -p @pnp/cli-microsoft365 -- m365 login --authType browser

# use existing Entra app
echo "Using existing Entra app..."
echo "Please enter your Entra app ID (Client ID):"
read appId
echo "Please enter your tenant ID:"
read tenantId

# write app to env.js
echo "Writing app to env.js..."
echo "const appId = '$appId';" > env.js
echo "const tenantId = '$tenantId'" >> env.js

echo "DONE"

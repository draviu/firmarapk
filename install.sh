#!/bin/bash

# Create the file
touch /usr/local/bin/firmarapk

# Add the code to the file
echo "#!/bin/bash
echo "Ingresa el nombre del archivo keystore (con ruta):"
read varfirma

echo "Ingresa el nombre del archivo APK (con ruta):"
read varapk

echo "Ingresa el alias a usar al firmar el APK:"
read varalias

jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore $varfirma $varapk $varalias" > /usr/local/bin/firmarapk

# Make the file executable
chmod +x /usr/local/bin/firmarapk

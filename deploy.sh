#!/bin/bash

echo "========================================"
echo "    DEPLOIEMENT OUTIL VI CONSEIL"
echo "========================================"
echo

# Vérifier s'il y a des modifications
echo "📊 Vérification des modifications..."
git status --short

# Demander confirmation
read -p "💬 Message du commit (ou ENTER pour message auto): " message
if [ -z "$message" ]; then
    message="chore: mise à jour du $(date '+%Y-%m-%d à %H:%M')"
fi

echo
echo "🚀 Déploiement en cours..."
echo "Message: \"$message\""
echo

# Ajouter tous les fichiers modifiés
git add .
if [ $? -ne 0 ]; then
    echo "❌ Erreur lors de l'ajout des fichiers"
    exit 1
fi

# Commit
git commit -m "$message"
if [ $? -ne 0 ]; then
    echo "⚠️  Aucun changement à commiter"
    exit 0
fi

# Push vers GitHub
git push origin main
if [ $? -ne 0 ]; then
    echo "❌ Erreur lors du push vers GitHub"
    exit 1
fi

echo
echo "✅ Déploiement réussi !"
echo "🌐 Votre outil sera mis à jour sur Vercel dans quelques minutes"
echo
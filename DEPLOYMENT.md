# Guide de Déploiement - Outil VI Conseil

## 🚀 Déploiement Rapide

### Windows
Double-cliquez sur `deploy.bat` ou dans le terminal :
```cmd
deploy.bat
```

### Linux/Mac
```bash
./deploy.sh
```

## 📋 Étapes Manuelles

Si vous préférez faire manuellement :

```bash
# 1. Vérifier les modifications
git status

# 2. Ajouter les fichiers
git add .

# 3. Commit avec message descriptif
git commit -m "feat: nouvelle fonctionnalité XYZ"

# 4. Push vers GitHub
git push origin main
```

## 🏷️ Convention des Messages de Commit

- `feat:` - Nouvelle fonctionnalité
- `fix:` - Correction de bug
- `chore:` - Mise à jour générale
- `docs:` - Mise à jour documentation
- `style:` - Changements visuels/CSS

## 🌐 Déploiement Automatique

Une fois poussé sur GitHub, Vercel déploiera automatiquement :
- **Environnement de test** : sur chaque push
- **Production** : sur merge vers main

## 🔧 Configuration Vercel

Pour connecter le repo à Vercel :
1. Aller sur [vercel.com](https://vercel.com)
2. Importer le repo `viconseil/Outil-Viconseil-suivi-cout-de-revient`
3. Configuration automatique (détection HTML statique)
4. Déploiement automatique activé

## 📊 Monitoring

- **GitHub** : https://github.com/viconseil/Outil-Viconseil-suivi-cout-de-revient
- **Vercel Dashboard** : Accès aux logs de déploiement
- **URL de production** : Fournie par Vercel après premier déploiement
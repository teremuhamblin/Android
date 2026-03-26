 intro :
1) Script C# fonctionnel pour télécharger la doc Android depuis developer.android.com  
2) Rappeler les limites légales/éthiques (important, surtout pour un miroir complet).

---

⚠️ Avant tout : cadre légal & source fiable

- Source officielle : la documentation Android est publiée sur  
  https://developer.android.com (Google, source fiable).   
- Méthode recommandée par Google :  
  télécharger la doc offline via Android Studio (SDK Manager → Documentation).   
- Miroir complet du site :  
  techniquement possible (HTTrack, scripts maison), mais tu dois respecter :
  - les Conditions d’utilisation de Google  
  - le robots.txt du site  
  - un usage strictement personnel / offline

Le script ci-dessous est donc à utiliser pour un usage privé, en restant raisonnable (limite de pages, pas de DDoS, etc.).

---

🧩 Script C# : mini-crawler pour télécharger la doc Android

Ce script :

- part d’URL(s) de départ (par défaut https://developer.android.com/docs)  
- reste strictement sur le domaine developer.android.com  
- suit les liens HTML (<a href="...">)  
- télécharge les pages en HTML brut dans un dossier local  
- évite de retélécharger la même URL  
- te laisse configurer :
  - le dossier de sortie
  - le nombre max de pages
  - les URL de départ

> C’est volontairement simple et autonome (pas de dépendance externe type HtmlAgilityPack).

`csharp
using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

class AndroidDocsDownloader
{
    // Domaine officiel de la doc Android
    private const string BaseDomain = "developer.android.com";

    // Dossier local de sortie
    private static readonly string OutputRoot = Path.Combine(
        Directory.GetCurrentDirectory(),
        "android-docs");

    // Limite de pages à télécharger (à ajuster avec prudence)
    private const int MaxPages = 1000;

    // Regex simple pour extraire les liens href
    private static readonly Regex HrefRegex =
        new Regex("href\\s=\\s\"([^\"]+)\"", RegexOptions.IgnoreCase | RegexOptions.Compiled);

    private static readonly HttpClient Http = new HttpClient
    {
        Timeout = TimeSpan.FromSeconds(30)
    };

    private static readonly HashSet<string> Visited = new HashSet<string>();
    private static readonly Queue<string> ToVisit = new Queue<string>();

    static async Task Main(string[] args)
    {
        Console.WriteLine("=== Android Docs Downloader (developer.android.com) ===");

        // URL(s) de départ – tu peux en ajouter
        var startUrls = new[]
        {
            "https://developer.android.com/docs",
            "https://developer.android.com/reference",
            "https://developer.android.com/guide"
        };

        Directory.CreateDirectory(OutputRoot);

        foreach (var url in startUrls)
        {
            EnqueueUrl(url);
        }

        int count = 0;

        while (ToVisit.Count > 0 && count < MaxPages)
        {
            var url = ToVisit.Dequeue();
            if (Visited.Contains(url))
                continue;

            try
            {
                Console.WriteLine($"[{count + 1}/{MaxPages}] Téléchargement : {url}");
                var html = await DownloadPageAsync(url);
                if (html == null)
                {
                    Console.WriteLine("  -> Échec du téléchargement.");
                    continue;
                }

                SavePage(url, html);
                Visited.Add(url);
                count++;

                // Extraction des liens pour continuer le crawl
                ExtractAndEnqueueLinks(url, html);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"  -> Erreur : {ex.Message}");
            }
        }

        Console.WriteLine("=== Terminé ===");
        Console.WriteLine($"Pages téléchargées : {Visited.Count}");
        Console.WriteLine($"Dossier de sortie : {OutputRoot}");
    }

    private static void EnqueueUrl(string url)
    {
        if (string.IsNullOrWhiteSpace(url))
            return;

        // Normalisation simple
        url = url.Trim();

        // Ignorer les ancres et mailto, etc.
        if (url.StartsWith("#") || url.StartsWith("mailto:", StringComparison.OrdinalIgnoreCase))
            return;

        // On ne garde que le domaine developer.android.com
        if (!url.Contains(BaseDomain))
            return;

        // Éviter les doublons
        if (Visited.Contains(url) || ToVisit.Contains(url))
            return;

        ToVisit.Enqueue(url);
    }

    private static async Task<string> DownloadPageAsync(string url)
    {
        try
        {
            var response = await Http.GetAsync(url);
            if (!response.IsSuccessStatusCode)
                return null;

            var content = await response.Content.ReadAsStringAsync();
            return content;
        }
        catch
        {
            return null;
        }
    }

    private static void SavePage(string url, string html)
    {
        // Transformer l’URL en chemin de fichier
        // Exemple : https://developer.android.com/guide/index.html
        // -> android-docs/guide/index.html
        try
        {
            var uri = new Uri(url);
            var localPath = uri.AbsolutePath;

            if (string.IsNullOrWhiteSpace(localPath) || localPath == "/")
            {
                localPath = "/index.html";
            }
            else if (!Path.HasExtension(localPath))
            {
                // Si pas d’extension, on ajoute index.html
                if (!localPath.EndsWith("/"))
                    localPath += "/";
                localPath += "index.html";
            }

            var fullPath = Path.Combine(OutputRoot, localPath.TrimStart('/'));
            var dir = Path.GetDirectoryName(fullPath);
            if (!Directory.Exists(dir))
                Directory.CreateDirectory(dir!);

            File.WriteAllText(fullPath, html);
        }
        catch (Exception ex)
        {
            Console.WriteLine($"  -> Erreur sauvegarde fichier : {ex.Message}");
        }
    }

    private static void ExtractAndEnqueueLinks(string baseUrl, string html)
    {
        var baseUri = new Uri(baseUrl);

        foreach (Match match in HrefRegex.Matches(html))
        {
            var href = match.Groups[1].Value;
            if (string.IsNullOrWhiteSpace(href))
                continue;

            // Gestion des liens relatifs
            Uri resolved;
            if (Uri.TryCreate(href, UriKind.Absolute, out var abs))
            {
                resolved = abs;
            }
            else if (Uri.TryCreate(baseUri, href, out var rel))
            {
                resolved = rel;
            }
            else
            {
                continue;
            }

            // On ne garde que le domaine cible
            if (!string.Equals(resolved.Host, BaseDomain, StringComparison.OrdinalIgnoreCase))
                continue;

            // On ignore les ressources non HTML évidentes
            if (resolved.AbsolutePath.EndsWith(".png", StringComparison.OrdinalIgnoreCase) ||
                resolved.AbsolutePath.EndsWith(".jpg", StringComparison.OrdinalIgnoreCase) ||
                resolved.AbsolutePath.EndsWith(".jpeg", StringComparison.OrdinalIgnoreCase) ||
                resolved.AbsolutePath.EndsWith(".gif", StringComparison.OrdinalIgnoreCase) ||
                resolved.AbsolutePath.EndsWith(".webp", StringComparison.OrdinalIgnoreCase) ||
                resolved.AbsolutePath.EndsWith(".svg", StringComparison.OrdinalIgnoreCase) ||
                resolved.AbsolutePath.EndsWith(".css", StringComparison.OrdinalIgnoreCase) ||
                resolved.AbsolutePath.EndsWith(".js", StringComparison.OrdinalIgnoreCase))
            {
                continue;
            }

            EnqueueUrl(resolved.ToString());
        }
    }
}
`

---

🧭 Comment l’utiliser

1. Créer un projet console C# :

`bash
dotnet new console -n AndroidDocsDownloader
cd AndroidDocsDownloader
`

2. Remplacer le contenu de Program.cs par le code ci-dessus (ou renommer le fichier en AndroidDocsDownloader.cs et adapter le Main si besoin).

3. Compiler & exécuter :

`bash
dotnet run
`

4. Les fichiers seront téléchargés dans un dossier android-docs à côté de l’exécutable.

---

Si tu veux la voie “officielle” pure

Pour être totalement aligné avec Google, la méthode Android Studio → SDK Manager → Documentation reste la plus propre et la plus fiable pour la doc Android offline.   

---

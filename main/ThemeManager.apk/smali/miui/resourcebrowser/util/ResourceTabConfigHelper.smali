.class public Lmiui/resourcebrowser/util/ResourceTabConfigHelper;
.super Ljava/lang/Object;
.source "ResourceTabConfigHelper.java"

# interfaces
.implements Lmiui/resourcebrowser/ResourceConstants;


# static fields
.field private static final TAB_CONFIG_FILE_NAME:Ljava/lang/String; = "tab_config_%s_%s"

.field private static final TAB_CONFIG_FOLDER:Ljava/lang/String; = "tab_config/"

.field private static sPageTabConfigCodeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lmiui/resourcebrowser/model/PageTabConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/resourcebrowser/util/ResourceTabConfigHelper;->sPageTabConfigCodeCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTabConfig(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;)V
    .locals 10

    invoke-static {p0}, Lmiui/resourcebrowser/util/ResourceTabConfigHelper;->composeLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lmiui/resourcebrowser/controller/online/OnlineJSONDataParser;

    invoke-direct {v4, p1}, Lmiui/resourcebrowser/controller/online/OnlineJSONDataParser;-><init>(Lmiui/resourcebrowser/ResourceContext;)V

    invoke-static {p1}, Lmiui/resourcebrowser/util/ResourceTabConfigHelper;->composeUrl(Lmiui/resourcebrowser/ResourceContext;)Lmiui/resourcebrowser/controller/online/RequestUrl;

    move-result-object v7

    invoke-static {p0, p1, v3}, Lmiui/resourcebrowser/util/ResourceTabConfigHelper;->composeDownloadPath(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lmiui/resourcebrowser/controller/online/DownloadFileTask;

    invoke-virtual {v7}, Lmiui/resourcebrowser/controller/online/RequestUrl;->getUrlId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lmiui/resourcebrowser/controller/online/DownloadFileTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7, v5}, Lmiui/resourcebrowser/controller/online/DownloadFileTask;->downloadFile(Lmiui/resourcebrowser/controller/online/RequestUrl;Ljava/lang/String;)Z

    invoke-virtual {v4, v5}, Lmiui/resourcebrowser/controller/online/OnlineDataParser;->readPageTabConfig(Ljava/lang/String;)Lmiui/resourcebrowser/model/PageTabConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-static {p0, p1, v3}, Lmiui/resourcebrowser/util/ResourceTabConfigHelper;->composeStoredPath(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Lmiui/resourcebrowser/controller/local/PageTabConfigSerializableParser;

    invoke-direct {v1}, Lmiui/resourcebrowser/controller/local/PageTabConfigSerializableParser;-><init>()V

    :try_start_0
    invoke-virtual {v1, v6, v0}, Lmiui/resourcebrowser/controller/local/PageTabConfigParser;->storePageTabConfig(Ljava/io/File;Lmiui/resourcebrowser/model/PageTabConfig;)V
    :try_end_0
    .catch Lmiui/resourcebrowser/controller/local/PersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lmiui/resourcebrowser/controller/local/PersistenceException;->printStackTrace()V

    goto :goto_0
.end method

.method private static composeDownloadPath(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/FileUtils;->normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tab_config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tab_config_%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lmiui/resourcebrowser/ResourceContext;->getResourceCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static composeLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static composeStoredPath(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/resourcebrowser/util/ResourceTabConfigHelper;->getStoreFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tab_config_%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lmiui/resourcebrowser/ResourceContext;->getResourceCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static composeUrl(Lmiui/resourcebrowser/ResourceContext;)Lmiui/resourcebrowser/controller/online/RequestUrl;
    .locals 1

    new-instance v0, Lmiui/resourcebrowser/controller/online/OnlineService;

    invoke-direct {v0, p0}, Lmiui/resourcebrowser/controller/online/OnlineService;-><init>(Lmiui/resourcebrowser/ResourceContext;)V

    invoke-virtual {v0}, Lmiui/resourcebrowser/controller/online/OnlineService;->getTabConfigUrl()Lmiui/resourcebrowser/controller/online/RequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPresetPageTabConfig(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;)Lmiui/resourcebrowser/model/PageTabConfig;
    .locals 9

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStoreFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/FileUtils;->normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tab_config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

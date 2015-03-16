.class public Lmiui/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/drm/DrmManager$DrmNSContext;,
        Lmiui/drm/DrmManager$RightObject;,
        Lmiui/drm/DrmManager$RightObjectCache;,
        Lmiui/drm/DrmManager$DrmResult;
    }
.end annotation


# static fields
.field private static final ASSET_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

.field private static final IMEI_EVERYONE:Ljava/lang/String; = "-1"

.field private static final IMEI_PREFIX:Ljava/lang/String; = "d"

.field private static final INDIVIDUAL_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

.field private static final ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final PAIR_SEPARATOR:Ljava/lang/String; = ":"

.field private static final PUBLIC_KEY_E:Ljava/lang/String; = "10001"

.field private static final PUBLIC_KEY_M:Ljava/lang/String; = "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

.field public static final TAG:Ljava/lang/String; = "drm"

.field private static final TIME_END_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

.field private static final TIME_START_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

.field private static final USER_EVERYONE:Ljava/lang/String; = "-1"

.field private static final USER_PREFIX:Ljava/lang/String; = "m"

.field private static mRightsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/drm/DrmManager$RightObjectCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lmiui/drm/DrmManager$1;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/drm/DrmManager$1;-><init>(IFZ)V

    sput-object v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method private static convertHexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 372
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 373
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 372
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 375
    :cond_0
    return-object v0
.end method

.method public static exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v2, 0x0

    .line 382
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/system/drm.log"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x19000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recreate log file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 387
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create log file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 391
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "export error message into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/drm/DrmManager;->getContextInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 394
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    if-eqz v3, :cond_4

    .line 400
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 406
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 401
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 403
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 396
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    if-eqz v2, :cond_2

    .line 400
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 401
    :catch_2
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_3

    .line 400
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 403
    :cond_3
    :goto_3
    throw v4

    .line 401
    :catch_3
    move-exception v0

    .line 402
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 395
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private static getContextInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 409
    const-string v0, "%s %s_%s %s"

    .line 410
    .local v0, "info":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEncodedImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 415
    invoke-static {p0}, Lmiui/drm/DrmManager;->getOriginImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const-string v1, ""

    .line 420
    :goto_0
    return-object v1

    .line 419
    :cond_0
    invoke-static {v0}, Lmiui/util/HashUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 420
    goto :goto_0
.end method

.method public static getMorePreciseDrmResult(Lmiui/drm/DrmManager$DrmResult;Lmiui/drm/DrmManager$DrmResult;)Lmiui/drm/DrmManager$DrmResult;
    .locals 1
    .param p0, "r1"    # Lmiui/drm/DrmManager$DrmResult;
    .param p1, "r2"    # Lmiui/drm/DrmManager$DrmResult;

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lmiui/drm/DrmManager$DrmResult;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    .end local p0    # "r1":Lmiui/drm/DrmManager$DrmResult;
    :goto_0
    return-object p0

    .restart local p0    # "r1":Lmiui/drm/DrmManager$DrmResult;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method private static getOriginImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 424
    invoke-static {p0}, Lmiui/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const-string v0, ""

    .line 428
    .end local v0    # "imei":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getTime(Ljava/lang/String;)J
    .locals 5
    .param p0, "rfc822"    # Ljava/lang/String;

    .prologue
    .line 296
    const-wide/16 v1, 0x0

    .line 298
    .local v1, "time":J
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 303
    :goto_0
    return-wide v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 301
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static isLegal(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentFile"    # Ljava/io/File;
    .param p2, "rightsFile"    # Ljava/io/File;

    .prologue
    .line 147
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method public static isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "rightsFile"    # Ljava/io/File;

    .prologue
    .line 152
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method private static isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetAsset"    # Ljava/lang/String;
    .param p2, "ro"    # Lmiui/drm/DrmManager$RightObject;

    .prologue
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method public static isPermanentRights(Ljava/io/File;)Z
    .locals 1
    .param p0, "rightsFile"    # Ljava/io/File;

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public static isPermanentRights(Lmiui/drm/DrmManager$RightObject;)Z
    .locals 4
    .param p0, "ro"    # Lmiui/drm/DrmManager$RightObject;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method private static isRightsFileLegal(Ljava/io/File;)Z
    .locals 15
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v14, -0x1

    .line 307
    const/4 v7, 0x0

    .line 309
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 312
    .local v2, "document":Ljava/lang/String;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 354
    .end local v2    # "document":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 355
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    if-eqz v7, :cond_0

    .line 361
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 367
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    const/4 v13, 0x0

    :goto_3
    return v13

    .line 315
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "document":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "contentPart":Ljava/lang/String;
    const/4 v11, 0x0

    .line 320
    .local v11, "signaturePart":Ljava/lang/String;
    const/4 v6, 0x0

    .line 321
    .local v6, "p":Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    .line 322
    .local v5, "m":Ljava/util/regex/Matcher;
    const/4 v12, -0x1

    .line 323
    .local v12, "startIndex":I
    const/4 v4, -0x1

    .line 325
    .local v4, "endIndex":I
    const-string v13, "<o-ex:rights.*?>"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 326
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 327
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 328
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    .line 329
    const-string v13, "</o-ex:rights>"

    invoke-virtual {v2, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 331
    :cond_2
    if-eq v12, v14, :cond_3

    if-eq v4, v14, :cond_3

    .line 332
    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_3
    const-string v13, "<o-ex:rights.*?o-ex:id=\""

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 336
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 337
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 338
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    .line 340
    :cond_4
    const-string v13, "<o-ex:rights.*?o-ex:id=\".*?\""

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 341
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 342
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 343
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .line 345
    :cond_5
    if-eq v12, v14, :cond_6

    if-eq v4, v14, :cond_6

    .line 346
    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 349
    :cond_6
    if-eqz v1, :cond_8

    if-eqz v11, :cond_8

    .line 350
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 351
    .local v0, "contentBytes":[B
    invoke-static {v11}, Lmiui/drm/DrmManager;->convertHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 352
    .local v10, "signatureBytes":[B
    const-string v13, "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

    const-string v14, "10001"

    invoke-static {v13, v14}, Lmiui/util/RSAUtils;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v13

    invoke-static {v0, v13, v10}, Lmiui/util/RSAUtils;->verify([BLjava/security/PublicKey;[B)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v13

    .line 360
    if-eqz v8, :cond_7

    .line 361
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    :goto_4
    move-object v7, v8

    .line 365
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 363
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 364
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 360
    .end local v0    # "contentBytes":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "signatureBytes":[B
    :cond_8
    if-eqz v8, :cond_9

    .line 361
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_9
    move-object v7, v8

    .line 365
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 363
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 364
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 366
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 363
    .end local v1    # "contentPart":Ljava/lang/String;
    .end local v2    # "document":Ljava/lang/String;
    .end local v4    # "endIndex":I
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "signaturePart":Ljava/lang/String;
    .end local v12    # "startIndex":I
    :catch_3
    move-exception v3

    .line 364
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 356
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 357
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 360
    if-eqz v7, :cond_0

    .line 361
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    .line 363
    :catch_5
    move-exception v3

    .line 364
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 359
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 360
    :goto_6
    if-eqz v7, :cond_a

    .line 361
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 365
    :cond_a
    :goto_7
    throw v13

    .line 363
    :catch_6
    move-exception v3

    .line 364
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 359
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 356
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 354
    :catch_8
    move-exception v3

    goto/16 :goto_1
.end method

.method public static parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;
    .locals 23
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 228
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, "path":Ljava/lang/String;
    sget-object v19, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/drm/DrmManager$RightObjectCache;

    .line 230
    .local v5, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    iget-wide v0, v5, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    .line 231
    iget-object v14, v5, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    .line 292
    :cond_0
    :goto_0
    return-object v14

    .line 233
    :cond_1
    invoke-static/range {p0 .. p0}, Lmiui/drm/DrmManager;->isRightsFileLegal(Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 234
    const/4 v14, 0x0

    goto :goto_0

    .line 236
    :cond_2
    new-instance v14, Lmiui/drm/DrmManager$RightObject;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lmiui/drm/DrmManager$RightObject;-><init>(Lmiui/drm/DrmManager$1;)V

    .line 237
    .local v14, "ro":Lmiui/drm/DrmManager$RightObject;
    new-instance v5, Lmiui/drm/DrmManager$RightObjectCache;

    .end local v5    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lmiui/drm/DrmManager$RightObjectCache;-><init>(Lmiui/drm/DrmManager$1;)V

    .line 238
    .restart local v5    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    iput-object v14, v5, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    .line 239
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v5, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    .line 240
    sget-object v19, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v0, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 243
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 244
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 245
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 246
    .local v7, "document":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v18

    .line 247
    .local v18, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v17

    .line 248
    .local v17, "xPath":Ljavax/xml/xpath/XPath;
    new-instance v19, Lmiui/drm/DrmManager$DrmNSContext;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lmiui/drm/DrmManager$DrmNSContext;-><init>(Lmiui/drm/DrmManager$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 249
    const-string v19, "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

    sget-object v20, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v7, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 250
    .local v3, "assetList":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_5

    .line 251
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 252
    invoke-interface {v3, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "content":Ljava/lang/String;
    const-string v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, "pair":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 255
    iget-object v0, v14, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v12, v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 256
    :cond_4
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 257
    iget-object v0, v14, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v12, v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, v14, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v20, v12, v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 283
    .end local v3    # "assetList":Lorg/w3c/dom/NodeList;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "document":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "i":I
    .end local v12    # "pair":[Ljava/lang/String;
    .end local v17    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v18    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_0
    move-exception v8

    .line 284
    .local v8, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .line 262
    .end local v8    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "document":Lorg/w3c/dom/Document;
    .restart local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v17    # "xPath":Ljavax/xml/xpath/XPath;
    .restart local v18    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_5
    :try_start_1
    const-string v19, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

    sget-object v20, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v7, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/NodeList;

    .line 263
    .local v11, "individualList":Lorg/w3c/dom/NodeList;
    if-eqz v11, :cond_8

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_8

    .line 264
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_8

    .line 265
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 266
    .restart local v6    # "content":Ljava/lang/String;
    const-string v19, "d"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 267
    iget-object v0, v14, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "d"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 268
    :cond_7
    const-string v19, "m"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 269
    iget-object v0, v14, Lmiui/drm/DrmManager$RightObject;->users:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "m"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 285
    .end local v3    # "assetList":Lorg/w3c/dom/NodeList;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "document":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "i":I
    .end local v11    # "individualList":Lorg/w3c/dom/NodeList;
    .end local v17    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v18    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_1
    move-exception v8

    .line 286
    .local v8, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 273
    .end local v8    # "e":Lorg/xml/sax/SAXException;
    .restart local v3    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "document":Lorg/w3c/dom/Document;
    .restart local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11    # "individualList":Lorg/w3c/dom/NodeList;
    .restart local v17    # "xPath":Ljavax/xml/xpath/XPath;
    .restart local v18    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_8
    :try_start_2
    const-string v19, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

    sget-object v20, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v7, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/NodeList;

    .line 274
    .local v16, "timeStartList":Lorg/w3c/dom/NodeList;
    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_9

    .line 275
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 276
    .restart local v6    # "content":Ljava/lang/String;
    invoke-static {v6}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v14, Lmiui/drm/DrmManager$RightObject;->startTime:J

    .line 278
    .end local v6    # "content":Ljava/lang/String;
    :cond_9
    const-string v19, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

    sget-object v20, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v7, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/NodeList;

    .line 279
    .local v15, "timeEndList":Lorg/w3c/dom/NodeList;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_0

    .line 280
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 281
    .restart local v6    # "content":Ljava/lang/String;
    invoke-static {v6}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v14, Lmiui/drm/DrmManager$RightObject;->endTime:J
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 287
    .end local v3    # "assetList":Lorg/w3c/dom/NodeList;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "document":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "individualList":Lorg/w3c/dom/NodeList;
    .end local v15    # "timeEndList":Lorg/w3c/dom/NodeList;
    .end local v16    # "timeStartList":Lorg/w3c/dom/NodeList;
    .end local v17    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v18    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_2
    move-exception v8

    .line 288
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 289
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 290
    .local v8, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v8}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    goto/16 :goto_0
.end method

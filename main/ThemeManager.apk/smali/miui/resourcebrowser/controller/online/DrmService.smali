.class public Lmiui/resourcebrowser/controller/online/DrmService;
.super Ljava/lang/Object;
.source "DrmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;,
        Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    }
.end annotation


# instance fields
.field private mDrmAgent:Lmiui/resourcebrowser/jni/DrmAgent;

.field private mResContext:Lmiui/resourcebrowser/ResourceContext;

.field private mService:Lmiui/resourcebrowser/controller/online/OnlineService;

.field private mWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/resourcebrowser/ResourceContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/resourcebrowser/controller/online/DrmService;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    new-instance v0, Lmiui/resourcebrowser/controller/online/OnlineService;

    invoke-direct {v0, p1}, Lmiui/resourcebrowser/controller/online/OnlineService;-><init>(Lmiui/resourcebrowser/ResourceContext;)V

    iput-object v0, p0, Lmiui/resourcebrowser/controller/online/DrmService;->mService:Lmiui/resourcebrowser/controller/online/OnlineService;

    new-instance v0, Lmiui/resourcebrowser/jni/DrmAgent;

    invoke-direct {v0}, Lmiui/resourcebrowser/jni/DrmAgent;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/controller/online/DrmService;->mDrmAgent:Lmiui/resourcebrowser/jni/DrmAgent;

    return-void
.end method

.method private getSubHash(Lmiui/resourcebrowser/model/Resource;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/resourcebrowser/model/Resource;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/resourcebrowser/controller/online/DrmService;->getSubResourceHashMap(Lmiui/resourcebrowser/model/Resource;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getSubResourceHashMap(Lmiui/resourcebrowser/model/Resource;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/resourcebrowser/model/Resource;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/Resource;->getSubResources()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/resourcebrowser/model/RelatedResource;

    new-instance v5, Lmiui/resourcebrowser/model/RelatedResourceResolver;

    iget-object v6, p0, Lmiui/resourcebrowser/controller/online/DrmService;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-direct {v5, v3, v6}, Lmiui/resourcebrowser/model/RelatedResourceResolver;-><init>(Lmiui/resourcebrowser/model/RelatedResource;Lmiui/resourcebrowser/ResourceContext;)V

    invoke-virtual {v5}, Lmiui/resourcebrowser/model/RelatedResourceResolver;->getContentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lmiui/resourcebrowser/model/RelatedResource;->getResourceCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lmiui/resourcebrowser/util/ResourceHelper;->calculateFileHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public downloadRights(Lmiui/resourcebrowser/model/Resource;Z)Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;
    .locals 17

    new-instance v13, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;

    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->FAILED_WITH_OTHER_REASON:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    invoke-direct {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;-><init>(Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/resourcebrowser/controller/online/DrmService;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lmiui/resourcebrowser/util/ResourceHelper;->getParentResource(Lmiui/resourcebrowser/model/Resource;Lmiui/resourcebrowser/ResourceContext;)Lmiui/resourcebrowser/model/Resource;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object/from16 p1, v10

    :cond_0
    new-instance v12, Lmiui/resourcebrowser/model/ResourceResolver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/resourcebrowser/controller/online/DrmService;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v1}, Lmiui/resourcebrowser/model/ResourceResolver;-><init>(Lmiui/resourcebrowser/model/Resource;Lmiui/resourcebrowser/ResourceContext;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lmiui/resourcebrowser/model/ResourceResolver;->getRightsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/resourcebrowser/controller/online/DrmService;->mService:Lmiui/resourcebrowser/controller/online/OnlineService;

    invoke-virtual/range {p1 .. p1}, Lmiui/resourcebrowser/model/Resource;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lmiui/resourcebrowser/model/Resource;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lmiui/resourcebrowser/controller/online/DrmService;->getSubHash(Lmiui/resourcebrowser/model/Resource;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lmiui/resourcebrowser/model/Resource;->getTitle()Ljava/lang/String;

    move-result-object v5

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lmiui/resourcebrowser/controller/online/OnlineService;->getRightsDownloadUrl(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;Z)Lmiui/resourcebrowser/controller/online/RequestUrl;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lmiui/resourcebrowser/controller/online/NetworkHelper;->getUrlInputStream(Lmiui/resourcebrowser/controller/online/RequestUrl;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lmiui/resourcebrowser/controller/online/OnlineJSONDataParser;->parseBaseJsonData(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v11

    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    new-instance v14, Lmiui/resourcebrowser/controller/online/DownloadFileTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rights-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lmiui/resourcebrowser/model/Resource;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lmiui/resourcebrowser/controller/online/DownloadFileTask;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "auth"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/resourcebrowser/controller/online/DrmService;->mService:Lmiui/resourcebrowser/controller/online/OnlineService;

    invoke-virtual {v1, v7}, Lmiui/resourcebrowser/controller/online/OnlineService;->getRightsIssueUrl(Ljava/lang/String;)Lmiui/resourcebrowser/controller/online/RequestUrl;

    move-result-object v1

    invoke-virtual {v14, v1, v15}, Lmiui/resourcebrowser/controller/online/DownloadFileTask;->downloadFile(Lmiui/resourcebrowser/controller/online/RequestUrl;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->SUCCEED:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$002(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/resourcebrowser/controller/online/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    # getter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$000(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    move-result-object v1

    sget-object v2, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->SUCCEED:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/resourcebrowser/controller/online/DrmService;->mDrmAgent:Lmiui/resourcebrowser/jni/DrmAgent;

    invoke-virtual {v12}, Lmiui/resourcebrowser/model/ResourceResolver;->getRightsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lmiui/resourcebrowser/jni/DrmAgent;->saveRightObject(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-object v13

    :cond_2
    :try_start_1
    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->FAILED_CONNECT_ERROR:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$002(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmiui/resourcebrowser/controller/online/HttpStatusException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v8

    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->FAILED_CONNECT_ERROR:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$002(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    goto :goto_0

    :cond_3
    :try_start_2
    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->serverResponseCode:I
    invoke-static {v13, v9}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$102(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;I)I

    const/16 v1, 0x197

    if-eq v9, v1, :cond_4

    const/16 v1, 0x19a

    if-ne v9, v1, :cond_5

    :cond_4
    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->FAILED_EXCEED_MAX_LIMIT:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$002(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lmiui/resourcebrowser/controller/online/HttpStatusException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v8

    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->FAILED_SERVER_ERROR:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$002(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    invoke-virtual {v8}, Lmiui/resourcebrowser/controller/online/HttpStatusException;->getResponseCode()I

    move-result v1

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->serverResponseCode:I
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$102(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;I)I

    invoke-virtual {v8}, Lmiui/resourcebrowser/controller/online/HttpStatusException;->getResponseReason()Ljava/lang/String;

    move-result-object v1

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->serverResponseContent:Ljava/lang/String;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$202(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8}, Lmiui/resourcebrowser/controller/online/HttpStatusException;->printStackTrace()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x270f

    if-ne v9, v1, :cond_6

    :try_start_3
    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->FAILED_WITH_SYSTEM_ALERT_ERROR:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$002(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "serverToast"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->serverResponseContent:Ljava/lang/String;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$202(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lmiui/resourcebrowser/controller/online/HttpStatusException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v8

    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->FAILED_WITH_OTHER_REASON:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$002(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    :try_start_4
    sget-object v1, Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;->FAILED_REJECTED:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;

    # setter for: Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->authCode:Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    invoke-static {v13, v1}, Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;->access$002(Lmiui/resourcebrowser/controller/online/DrmService$GettingRightsResponse;Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;)Lmiui/resourcebrowser/controller/online/DrmService$GettingAuthorizeCode;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lmiui/resourcebrowser/controller/online/HttpStatusException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0
.end method

.method public isLegal(Lmiui/resourcebrowser/model/Resource;)Lmiui/drm/DrmManager$DrmResult;
    .locals 15

    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method public setWhiteList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/resourcebrowser/controller/online/DrmService;->mWhiteList:Ljava/util/Set;

    return-void
.end method

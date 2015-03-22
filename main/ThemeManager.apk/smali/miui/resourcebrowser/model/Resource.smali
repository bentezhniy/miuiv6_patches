.class public Lmiui/resourcebrowser/model/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final STATUS_LOCAL:I = 0x1

.field public static final STATUS_OLD:I = 0x4

.field public static final STATUS_ONLINE:I = 0x2

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private extraMeta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

.field private onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-direct {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    new-instance v0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-direct {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addBuildInPreview(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->addBuildInPreview(Ljava/lang/String;)V

    return-void
.end method

.method public addBuildInThumbnail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->addBuildInThumbnail(Ljava/lang/String;)V

    return-void
.end method

.method public addParentResources(Lmiui/resourcebrowser/model/RelatedResource;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->addParentResources(Lmiui/resourcebrowser/model/RelatedResource;)V

    return-void
.end method

.method public addPreview(Lmiui/resourcebrowser/model/PathEntry;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->addPreview(Lmiui/resourcebrowser/model/PathEntry;)V

    return-void
.end method

.method public addSubResources(Lmiui/resourcebrowser/model/RelatedResource;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->addSubResources(Lmiui/resourcebrowser/model/RelatedResource;)V

    return-void
.end method

.method public addThumbnail(Lmiui/resourcebrowser/model/PathEntry;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->addThumbnail(Lmiui/resourcebrowser/model/PathEntry;)V

    return-void
.end method

.method public clearBuildInPreviews()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->clearBuildInPreviews()V

    return-void
.end method

.method public clearBuildInPreviewsMap()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->clearBuildInPreviewsMap()V

    return-void
.end method

.method public clearBuildInThumbnails()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->clearBuildInThumbnails()V

    return-void
.end method

.method public clearBuildInThumbnailsMap()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->clearBuildInThumbnailsMap()V

    return-void
.end method

.method public clearExtraMeta()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public declared-synchronized clearLocalProperties()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-direct {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearOnlineProperties()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-direct {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearParentResources()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->clearParentResources()V

    return-void
.end method

.method public clearPreviews()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->clearPreviews()V

    return-void
.end method

.method public clearSubResources()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->clearSubResources()V

    return-void
.end method

.method public clearThumbnails()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->clearThumbnails()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/resourcebrowser/model/Resource;->clone()Lmiui/resourcebrowser/model/Resource;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized clone()Lmiui/resourcebrowser/model/Resource;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lmiui/resourcebrowser/model/Resource;

    invoke-direct {v0}, Lmiui/resourcebrowser/model/Resource;-><init>()V

    invoke-virtual {v0, p0}, Lmiui/resourcebrowser/model/Resource;->updateFrom(Lmiui/resourcebrowser/model/Resource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAssemblyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getAssemblyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getBuildInPreviews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviews(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getBuildInPreviews(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviews(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getBuildInPreviews(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviewsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getBuildInPreviewsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getBuildInThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnails(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getBuildInThumbnails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnailsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getBuildInThumbnailsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getContentPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtraMeta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getExtraMeta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getLocalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalInfo()Lmiui/resourcebrowser/model/ResourceInfo;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getInfo()Lmiui/resourcebrowser/model/ResourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMetaPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getMetaPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlineInfo()Lmiui/resourcebrowser/model/ResourceInfo;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getInfo()Lmiui/resourcebrowser/model/ResourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOnlinePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getOnlinePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginPrice()I
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getOriginPrice()I

    move-result v0

    return v0
.end method

.method public getParentResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/RelatedResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getParentResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getPlatform()I

    move-result v0

    return v0
.end method

.method public getPreviews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PathEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getPreviews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductPrice()I
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getProductPrice()I

    move-result v0

    return v0
.end method

.method public getRightsPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getRightsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getScore()F

    move-result v0

    return v0
.end method

.method public getSubResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/RelatedResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getSubResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PathEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getInfo()Lmiui/resourcebrowser/model/ResourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/resourcebrowser/model/ResourceInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->getInfo()Lmiui/resourcebrowser/model/ResourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/resourcebrowser/model/ResourceInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTrialTime()J
    .locals 2

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->getTrialTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isProductBought()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized mergeLocalProperties(Lmiui/resourcebrowser/model/Resource;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    iget-object v1, p1, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->updateFrom(Lmiui/resourcebrowser/model/ResourceLocalProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeOnlineProperties(Lmiui/resourcebrowser/model/Resource;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    iget-object v1, p1, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->updateFrom(Lmiui/resourcebrowser/model/ResourceOnlineProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putBuildInPreviews(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->putBuildInPreviews(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public putBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->putBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public putExtraMeta(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmiui/resourcebrowser/model/Resource;->clearLocalProperties()V

    invoke-virtual {p0}, Lmiui/resourcebrowser/model/Resource;->clearOnlineProperties()V

    invoke-virtual {p0}, Lmiui/resourcebrowser/model/Resource;->clearExtraMeta()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAssemblyId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setAssemblyId(Ljava/lang/String;)V

    return-void
.end method

.method public setBuildInPreviews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setBuildInPreviews(Ljava/util/List;)V

    return-void
.end method

.method public setBuildInPreviewsMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setBuildInPreviewsMap(Ljava/util/Map;)V

    return-void
.end method

.method public setBuildInThumbnails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setBuildInThumbnails(Ljava/util/List;)V

    return-void
.end method

.method public setBuildInThumbnailsMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setBuildInThumbnailsMap(Ljava/util/Map;)V

    return-void
.end method

.method public setContentPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setContentPath(Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setDownloadPath(Ljava/lang/String;)V

    return-void
.end method

.method public setExtraMeta(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setHash(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setLocalId(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalInfo(Lmiui/resourcebrowser/model/ResourceInfo;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setInfo(Lmiui/resourcebrowser/model/ResourceInfo;)V

    return-void
.end method

.method public setMetaPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setMetaPath(Ljava/lang/String;)V

    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setModifiedTime(J)V

    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setOnlineId(Ljava/lang/String;)V

    return-void
.end method

.method public setOnlineInfo(Lmiui/resourcebrowser/model/ResourceInfo;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setInfo(Lmiui/resourcebrowser/model/ResourceInfo;)V

    return-void
.end method

.method public setOnlinePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setOnlinePath(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginPrice(I)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setOriginPrice(I)V

    return-void
.end method

.method public setParentResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/RelatedResource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setParentResources(Ljava/util/List;)V

    return-void
.end method

.method public setPlatform(I)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setPlatform(I)V

    return-void
.end method

.method public setPreviews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PathEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setPreviews(Ljava/util/List;)V

    return-void
.end method

.method public setProductBought(Z)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setProductBought(Z)V

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setProductId(Ljava/lang/String;)V

    return-void
.end method

.method public setProductPrice(I)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setProductPrice(I)V

    return-void
.end method

.method public setRightsPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setRightsPath(Ljava/lang/String;)V

    return-void
.end method

.method public setScore(F)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setScore(F)V

    return-void
.end method

.method public setSubResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/RelatedResource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->localProperties:Lmiui/resourcebrowser/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceLocalProperties;->setSubResources(Ljava/util/List;)V

    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PathEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setThumbnails(Ljava/util/List;)V

    return-void
.end method

.method public setTrialTime(J)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->onlineProperties:Lmiui/resourcebrowser/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1, p2}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->setTrialTime(J)V

    return-void
.end method

.method public declared-synchronized updateFrom(Lmiui/resourcebrowser/model/Resource;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/resourcebrowser/model/Resource;->mergeLocalProperties(Lmiui/resourcebrowser/model/Resource;)V

    invoke-virtual {p0, p1}, Lmiui/resourcebrowser/model/Resource;->mergeOnlineProperties(Lmiui/resourcebrowser/model/Resource;)V

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    iget-object v1, p1, Lmiui/resourcebrowser/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

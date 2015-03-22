.class public Lmiui/resourcebrowser/model/ResourceOnlineProperties;
.super Ljava/lang/Object;
.source "ResourceOnlineProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private assemblyId:Ljava/lang/String;

.field private downloadPath:Ljava/lang/String;

.field private info:Lmiui/resourcebrowser/model/ResourceInfo;

.field private onlineId:Ljava/lang/String;

.field private onlinePath:Ljava/lang/String;

.field private originPrice:I

.field private previews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PathEntry;",
            ">;"
        }
    .end annotation
.end field

.field private productBought:Z

.field private productId:Ljava/lang/String;

.field private productPrice:I

.field private score:F

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PathEntry;",
            ">;"
        }
    .end annotation
.end field

.field private trialTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productPrice:I

    iput v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->originPrice:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->score:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->thumbnails:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->previews:Ljava/util/List;

    new-instance v0, Lmiui/resourcebrowser/model/ResourceInfo;

    invoke-direct {v0}, Lmiui/resourcebrowser/model/ResourceInfo;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->info:Lmiui/resourcebrowser/model/ResourceInfo;

    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addPreview(Lmiui/resourcebrowser/model/PathEntry;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->previews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addThumbnail(Lmiui/resourcebrowser/model/PathEntry;)V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->thumbnails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPreviews()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->previews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearThumbnails()V
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->thumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAssemblyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->assemblyId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lmiui/resourcebrowser/model/ResourceInfo;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->info:Lmiui/resourcebrowser/model/ResourceInfo;

    return-object v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->onlineId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlinePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->onlinePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginPrice()I
    .locals 1

    iget v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->originPrice:I

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

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->previews:Ljava/util/List;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPrice()I
    .locals 1

    iget v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productPrice:I

    return v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->score:F

    return v0
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

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getTrialTime()J
    .locals 2

    iget-wide v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trialTime:J

    return-wide v0
.end method

.method public isProductBought()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAssemblyId(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->assemblyId:Ljava/lang/String;

    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Lmiui/resourcebrowser/model/ResourceInfo;)V
    .locals 0

    iput-object p1, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->info:Lmiui/resourcebrowser/model/ResourceInfo;

    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->onlineId:Ljava/lang/String;

    return-void
.end method

.method public setOnlinePath(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->onlinePath:Ljava/lang/String;

    return-void
.end method

.method public setOriginPrice(I)V
    .locals 0

    iput p1, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->originPrice:I

    return-void
.end method

.method public setPreviews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PathEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->previews:Ljava/util/List;

    return-void
.end method

.method public setProductBought(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productBought:Z

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductPrice(I)V
    .locals 0

    iput p1, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productPrice:I

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->score:F

    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PathEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public setTrialTime(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trialTime:J

    return-void
.end method

.method public updateFrom(Lmiui/resourcebrowser/model/ResourceOnlineProperties;)V
    .locals 2

    if-eq p0, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->onlineId:Ljava/lang/String;

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->onlineId:Ljava/lang/String;

    iget-object v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->assemblyId:Ljava/lang/String;

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->assemblyId:Ljava/lang/String;

    iget-object v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productId:Ljava/lang/String;

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productId:Ljava/lang/String;

    iget v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productPrice:I

    iput v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productPrice:I

    iget v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->originPrice:I

    iput v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->originPrice:I

    iget-boolean v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productBought:Z

    iput-boolean v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->productBought:Z

    iget v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->score:F

    iput v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->score:F

    iget-wide v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trialTime:J

    iput-wide v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->trialTime:J

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->thumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->thumbnails:Ljava/util/List;

    iget-object v1, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->thumbnails:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->previews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->previews:Ljava/util/List;

    iget-object v1, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->previews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->info:Lmiui/resourcebrowser/model/ResourceInfo;

    iget-object v1, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->info:Lmiui/resourcebrowser/model/ResourceInfo;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/model/ResourceInfo;->updateFrom(Lmiui/resourcebrowser/model/ResourceInfo;)V

    iget-object v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->downloadPath:Ljava/lang/String;

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->downloadPath:Ljava/lang/String;

    iget-object v0, p1, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->onlinePath:Ljava/lang/String;

    iput-object v0, p0, Lmiui/resourcebrowser/model/ResourceOnlineProperties;->onlinePath:Ljava/lang/String;

    goto :goto_0
.end method

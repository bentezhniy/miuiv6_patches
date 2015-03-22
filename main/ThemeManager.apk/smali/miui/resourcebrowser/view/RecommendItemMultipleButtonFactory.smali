.class public Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;
.super Lmiui/resourcebrowser/view/RecommendItemBaseFactory;
.source "RecommendItemMultipleButtonFactory.java"


# instance fields
.field protected mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

.field private mImageDecoder:Lmiui/resourcebrowser/util/ImageDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;Lmiui/resourcebrowser/util/ImageDecoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/resourcebrowser/view/RecommendItemBaseFactory;-><init>(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;)V

    iput-object p3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mImageDecoder:Lmiui/resourcebrowser/util/ImageDecoder;

    return-void
.end method

.method private setLocalCornelIconState()V
    .locals 3

    iget-object v0, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/view/CornerIconView;->setVisibility(I)V

    iget-object v0, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/resourcebrowser/util/ResourceHelper;->writeLocalResUpdateInfo(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected createLocalCornerIconCount(Landroid/view/View;)V
    .locals 6

    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/resourcebrowser/util/ResourceHelper;->readLocalResUpdateInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lmiui/resourcebrowser/view/CornerIconView;

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lmiui/resourcebrowser/view/CornerIconView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    const v4, 0x7f020059

    invoke-virtual {v3, v4}, Lmiui/resourcebrowser/view/CornerIconView;->setBackgroundResource(I)V

    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    invoke-virtual {v3, v2}, Lmiui/resourcebrowser/view/CornerIconView;->setCornerIconNumber(I)V

    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/resourcebrowser/view/CornerIconView;->setTextColor(I)V

    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/resourcebrowser/view/CornerIconView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getRecommendItemView(Lmiui/resourcebrowser/model/RecommendItem;I)Landroid/view/View;
    .locals 7

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030030

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0e008a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/resourcebrowser/view/AsyncDecodeImageView;

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mImageDecoder:Lmiui/resourcebrowser/util/ImageDecoder;

    invoke-virtual {v1, v4}, Lmiui/resourcebrowser/view/AsyncDecodeImageView;->setDecoder(Lmiui/resourcebrowser/util/ImageDecoder;)V

    new-instance v0, Lmiui/resourcebrowser/util/ImageJobInfo;

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/RecommendItem;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/RecommendItem;->getOnlineThumbnail()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lmiui/resourcebrowser/util/ImageJobInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lmiui/resourcebrowser/view/AsyncDecodeImageView;->setDecodeInfo(Lmiui/resourcebrowser/util/ImageJobInfo;)V

    const v4, 0x7f0e008b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/RecommendItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kdeveloper/patchapi/Themes;->getTranslatedLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4}, Lmiui/resourcebrowser/ResourceContext;->getResourceFormat()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/RecommendItem;->getItemType()Lmiui/resourcebrowser/model/RecommendItem$RecommendType;

    move-result-object v4

    sget-object v5, Lmiui/resourcebrowser/model/RecommendItem$RecommendType;->LOCAL:Lmiui/resourcebrowser/model/RecommendItem$RecommendType;

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v1}, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->createLocalCornerIconCount(Landroid/view/View;)V

    :cond_0
    return-object v2
.end method

.method protected openForwardActivity(Landroid/view/View;Lmiui/resourcebrowser/model/RecommendItem;)V
    .locals 6

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4}, Lmiui/resourcebrowser/ResourceContext;->getResourceFormat()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p2}, Lmiui/resourcebrowser/model/RecommendItem;->getItemType()Lmiui/resourcebrowser/model/RecommendItem$RecommendType;

    move-result-object v4

    sget-object v5, Lmiui/resourcebrowser/model/RecommendItem$RecommendType;->LOCAL:Lmiui/resourcebrowser/model/RecommendItem$RecommendType;

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->setLocalCornelIconState()V

    :cond_0
    new-instance v4, Lmiui/resourcebrowser/model/RecommendItemResolver;

    iget-object v5, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-direct {v4, p2, v5}, Lmiui/resourcebrowser/model/RecommendItemResolver;-><init>(Lmiui/resourcebrowser/model/RecommendItem;Lmiui/resourcebrowser/ResourceContext;)V

    invoke-virtual {v4}, Lmiui/resourcebrowser/model/RecommendItemResolver;->getForwardIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4}, Lmiui/resourcebrowser/ResourceContext;->getResourceStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lmiui/resourcebrowser/model/RecommendItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "category"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "jump_to_same_designer_page"

    invoke-static {v4, v0}, Lmiui/resourcebrowser/util/AnalyticsHelper;->traceClickEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lmiui/resourcebrowser/util/AnalyticsHelper;->initAnalyticsInfoBeforeStartActivityFromBanner(Landroid/view/View;Lmiui/resourcebrowser/model/RecommendItem;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/resourcebrowser/view/RecommendItemBaseFactory;->openForwardActivity(Landroid/view/View;Lmiui/resourcebrowser/model/RecommendItem;)V

    return-void
.end method

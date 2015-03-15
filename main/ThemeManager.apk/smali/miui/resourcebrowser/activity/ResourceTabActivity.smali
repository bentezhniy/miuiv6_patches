.class public Lmiui/resourcebrowser/activity/ResourceTabActivity;
.super Lmiui/resourcebrowser/activity/BaseTabActivity;
.source "ResourceTabActivity.java"

# interfaces
.implements Lmiui/resourcebrowser/IntentConstants;
.implements Lmiui/resourcebrowser/controller/online/OnlineProtocolConstants;
.implements Lmiui/resourcebrowser/util/AnalyticsHelper$PageKeyLineComponent;


# instance fields
.field mHasGetRequestPageGroups:Z

.field protected mPageGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PageGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageKeyLine:Ljava/lang/String;

.field protected mRelatedId:Ljava/lang/String;

.field protected mService:Lmiui/resourcebrowser/controller/online/OnlineService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/resourcebrowser/activity/BaseTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildDefaultMainPageGroup()Lmiui/resourcebrowser/model/PageGroup;
    .locals 4

    .prologue
    const v3, 0x7f060018

    .line 211
    new-instance v0, Lmiui/resourcebrowser/model/PageGroup;

    invoke-direct {v0}, Lmiui/resourcebrowser/model/PageGroup;-><init>()V

    .line 212
    .local v0, "group":Lmiui/resourcebrowser/model/PageGroup;
    invoke-virtual {p0, v3}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/resourcebrowser/model/PageGroup;->setTitle(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lmiui/resourcebrowser/model/Page;

    invoke-direct {v1}, Lmiui/resourcebrowser/model/Page;-><init>()V

    .line 214
    .local v1, "page":Lmiui/resourcebrowser/model/Page;
    iget-object v2, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mService:Lmiui/resourcebrowser/controller/online/OnlineService;

    invoke-virtual {v2}, Lmiui/resourcebrowser/controller/online/OnlineService;->getSelectedListUrl()Lmiui/resourcebrowser/controller/online/RequestUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/resourcebrowser/model/Page;->setListUrl(Lmiui/resourcebrowser/controller/online/RequestUrl;)V

    .line 215
    iget-object v2, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mService:Lmiui/resourcebrowser/controller/online/OnlineService;

    invoke-virtual {v2}, Lmiui/resourcebrowser/controller/online/OnlineService;->getSelectedItemUrl()Lmiui/resourcebrowser/controller/online/RequestUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/resourcebrowser/model/Page;->setItemUrl(Lmiui/resourcebrowser/controller/online/RequestUrl;)V

    .line 216
    iget-object v2, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mService:Lmiui/resourcebrowser/controller/online/OnlineService;

    invoke-virtual {v2}, Lmiui/resourcebrowser/controller/online/OnlineService;->getSelectedPageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/resourcebrowser/model/Page;->setKey(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v3}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/resourcebrowser/model/Page;->setTitle(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/model/PageGroup;->addPage(Lmiui/resourcebrowser/model/Page;)V

    .line 219
    return-object v0
.end method

.method protected buildDefaultPageGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/model/PageGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lmiui/resourcebrowser/model/PageGroup;>;"
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->buildDefaultMainPageGroup()Lmiui/resourcebrowser/model/PageGroup;

    move-result-object v0

    .line 204
    .local v0, "group":Lmiui/resourcebrowser/model/PageGroup;
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-object v1
.end method

.method protected buildFragmentInfo(Lmiui/resourcebrowser/model/PageGroup;)Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;
    .locals 11
    .param p1, "group"    # Lmiui/resourcebrowser/model/PageGroup;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 231
    invoke-virtual {p1}, Lmiui/resourcebrowser/model/PageGroup;->getPages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/resourcebrowser/model/Page;

    .line 232
    .local v4, "page":Lmiui/resourcebrowser/model/Page;
    invoke-virtual {v4}, Lmiui/resourcebrowser/model/Page;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "pageKey":Ljava/lang/String;
    const-string v6, "%sLocal"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v8}, Lmiui/resourcebrowser/ResourceContext;->getResourceStamp()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getLocalFragmentTab(Lmiui/resourcebrowser/model/PageGroup;)Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;

    move-result-object v6

    .line 259
    .end local v4    # "page":Lmiui/resourcebrowser/model/Page;
    .end local v5    # "pageKey":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 237
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v2, "info":Landroid/os/Bundle;
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 239
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "REQUEST_BATCH_ACTION_FLAG"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 240
    const-string v6, "REQUEST_BATCH_ACTION_FLAG"

    const-string v7, "REQUEST_BATCH_ACTION_FLAG"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    :cond_2
    const-string v6, "REQUEST_CODE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 244
    const-string v6, "REQUEST_CODE"

    const-string v7, "REQUEST_CODE"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    :cond_3
    const-string v6, "REQUEST_EMPTY_VIEW_TYPE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 247
    const-string v6, "REQUEST_EMPTY_VIEW_TYPE"

    const-string v7, "REQUEST_EMPTY_VIEW_TYPE"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    :cond_4
    const-string v6, "REQUEST_FORCE_REFRESH"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 251
    const-string v6, "REQUEST_FORCE_REFRESH"

    const-string v7, "REQUEST_FORCE_REFRESH"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    :cond_5
    const-string v6, "REQUEST_EXPANSION_PAGE_GROUPS_TEMPLATE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 255
    const-string v6, "REQUEST_EXPANSION_PAGE_GROUPS_TEMPLATE"

    const-string v7, "REQUEST_EXPANSION_PAGE_GROUPS_TEMPLATE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 258
    :cond_6
    const-string v6, "REQUEST_DYNAMIC_FRAGMENT_TYPE"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, "fragmentType":I
    invoke-virtual {p0, v0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getDynamicFragmentClass(I)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v9, v2}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->buildFragmentInfo(Lmiui/resourcebrowser/model/PageGroup;Ljava/lang/Class;ZLandroid/os/Bundle;)Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;

    move-result-object v6

    goto :goto_0
.end method

.method protected buildFragmentInfo(Lmiui/resourcebrowser/model/PageGroup;Ljava/lang/Class;ZLandroid/os/Bundle;)Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;
    .locals 2
    .param p1, "group"    # Lmiui/resourcebrowser/model/PageGroup;
    .param p3, "hasActionMenu"    # Z
    .param p4, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/resourcebrowser/model/PageGroup;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;Z",
            "Landroid/os/Bundle;",
            ")",
            "Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    if-nez p4, :cond_0

    .line 265
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "info":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 267
    .restart local p4    # "info":Landroid/os/Bundle;
    :cond_0
    const-string v0, "REQUEST_PAGE_GROUP"

    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 268
    const-string v0, "REQUEST_RELATED_ID"

    iget-object v1, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mRelatedId:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/PageGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p4, p3}, Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method protected computeEntryType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 306
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "REQUEST_ENRTY_TYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "entryType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->isHomePage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    const-string v0, "thememanager"

    .line 314
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    const-string v0, "thirdapp"

    goto :goto_0
.end method

.method protected getCustomizedWindowTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REQUEST_RELATED_TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 131
    iget-object v1, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v1}, Lmiui/resourcebrowser/ResourceContext;->getResourceTitle()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method

.method protected getDefaultVisibleTabIndex()I
    .locals 8

    .prologue
    .line 319
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->hasPageData()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 320
    const/4 v5, 0x0

    .line 321
    .local v5, "suffix":Ljava/lang/String;
    const/4 v4, 0x0

    .line 322
    .local v4, "secondSuffix":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "REQUEST_TAB"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "requestTab":Ljava/lang/String;
    const-string v6, "REQUEST_TAB_SELECTED"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 324
    const-string v5, "Fine"

    .line 333
    :cond_0
    :goto_0
    if-eqz v5, :cond_8

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 335
    iget-object v6, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/resourcebrowser/model/PageGroup;

    invoke-virtual {v6}, Lmiui/resourcebrowser/model/PageGroup;->getPages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/resourcebrowser/model/Page;

    .line 336
    .local v2, "page":Lmiui/resourcebrowser/model/Page;
    invoke-virtual {v2}, Lmiui/resourcebrowser/model/Page;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 349
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "page":Lmiui/resourcebrowser/model/Page;
    .end local v3    # "requestTab":Ljava/lang/String;
    .end local v4    # "secondSuffix":Ljava/lang/String;
    .end local v5    # "suffix":Ljava/lang/String;
    :goto_2
    return v0

    .line 325
    .restart local v3    # "requestTab":Ljava/lang/String;
    .restart local v4    # "secondSuffix":Ljava/lang/String;
    .restart local v5    # "suffix":Ljava/lang/String;
    :cond_2
    const-string v6, "REQUEST_TAB_RANK"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 326
    const-string v5, "SortFree"

    .line 327
    const-string v4, "SortNotFree"

    goto :goto_0

    .line 328
    :cond_3
    const-string v6, "REQUEST_TAB_COMPONENT_CATEGORY"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 329
    const-string v5, "Clazz"

    goto :goto_0

    .line 330
    :cond_4
    const-string v6, "REQUEST_TAB_LOCAL"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    const-string v5, "Local"

    goto :goto_0

    .line 339
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "page":Lmiui/resourcebrowser/model/Page;
    :cond_5
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lmiui/resourcebrowser/model/Page;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 334
    .end local v2    # "page":Lmiui/resourcebrowser/model/Page;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "requestTab":Ljava/lang/String;
    .end local v4    # "secondSuffix":Ljava/lang/String;
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_7
    const-string v6, "Theme"

    const-string v7, "getDefaultVisibleTabIndex should have PageData"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_8
    invoke-super {p0}, Lmiui/resourcebrowser/activity/BaseTabActivity;->getDefaultVisibleTabIndex()I

    move-result v0

    goto :goto_2
.end method

.method protected getDynamicFragmentClass(I)Ljava/lang/Class;
    .locals 1
    .param p1, "fragmentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {p1}, Lmiui/resourcebrowser/activity/ResourceFragmentPolicy;->getDynamicFragmentClass(I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected getFragmentTabs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;>;"
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->hasPageData()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/resourcebrowser/model/PageGroup;

    .line 173
    .local v0, "group":Lmiui/resourcebrowser/model/PageGroup;
    invoke-virtual {p0, v0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->buildFragmentInfo(Lmiui/resourcebrowser/model/PageGroup;)Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v0    # "group":Lmiui/resourcebrowser/model/PageGroup;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 177
    return-object v2
.end method

.method protected getLocalFragmentTab(Lmiui/resourcebrowser/model/PageGroup;)Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;
    .locals 3
    .param p1, "group"    # Lmiui/resourcebrowser/model/PageGroup;

    .prologue
    .line 227
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getLocalListFragmentClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->buildFragmentInfo(Lmiui/resourcebrowser/model/PageGroup;Ljava/lang/Class;ZLandroid/os/Bundle;)Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalListFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    const-class v0, Lmiui/resourcebrowser/activity/LocalResourceListFragment;

    return-object v0
.end method

.method public getPageKeyLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageKeyLine:Ljava/lang/String;

    return-object v0
.end method

.method protected hasPageData()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initAnalyticsData()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageKeyLine:Ljava/lang/String;

    .line 295
    invoke-super {p0}, Lmiui/resourcebrowser/activity/BaseTabActivity;->initAnalyticsData()V

    .line 296
    return-void
.end method

.method protected initAnalyticsDataFromForegroundStored()V
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lmiui/resourcebrowser/util/AnalyticsHelper;->getForegroundPageKeyLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageKeyLine:Ljava/lang/String;

    .line 289
    invoke-super {p0}, Lmiui/resourcebrowser/activity/BaseTabActivity;->initAnalyticsDataFromForegroundStored()V

    .line 290
    return-void
.end method

.method protected initAnalyticsDataFromSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    const-string v0, "ACTIVITY_SAVED_PARAM_PAGE_KEY_LINE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageKeyLine:Ljava/lang/String;

    .line 283
    invoke-super {p0, p1}, Lmiui/resourcebrowser/activity/BaseTabActivity;->initAnalyticsDataFromSavedState(Landroid/os/Bundle;)V

    .line 284
    return-void
.end method

.method protected initParams()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lmiui/resourcebrowser/controller/online/OnlineService;

    iget-object v1, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-direct {v0, v1}, Lmiui/resourcebrowser/controller/online/OnlineService;-><init>(Lmiui/resourcebrowser/ResourceContext;)V

    iput-object v0, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mService:Lmiui/resourcebrowser/controller/online/OnlineService;

    .line 126
    return-void
.end method

.method protected isHomePage()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mHasGetRequestPageGroups:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needOverlayActionBar()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lmiui/resourcebrowser/activity/BaseTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    if-eqz p3, :cond_0

    .line 148
    invoke-virtual {p0, p2, p3}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->finish()V

    .line 151
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 52
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "REQUEST_PAGE_GROUPS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    .line 53
    iget-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    iput-boolean v8, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mHasGetRequestPageGroups:Z

    .line 56
    :cond_0
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "REQUEST_RELATED_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mRelatedId:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->initResourceContextOnce()V

    .line 59
    invoke-static {}, Lmiui/resourcebrowser/AppInnerContext;->getInstance()Lmiui/resourcebrowser/AppInnerContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/resourcebrowser/AppInnerContext;->getResourceContextManager()Lmiui/resourcebrowser/ResourceContextManager;

    move-result-object v4

    iget-object v5, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4, v5}, Lmiui/resourcebrowser/ResourceContextManager;->getResourceController(Lmiui/resourcebrowser/ResourceContext;)Lmiui/resourcebrowser/controller/ResourceController;

    move-result-object v1

    .line 61
    .local v1, "controller":Lmiui/resourcebrowser/controller/ResourceController;
    invoke-virtual {v1}, Lmiui/resourcebrowser/controller/ResourceController;->getResourceDataManager()Lmiui/resourcebrowser/controller/ResourceDataManager;

    move-result-object v4

    iget-object v5, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4, v5}, Lmiui/resourcebrowser/controller/ResourceDataManager;->setResourceContext(Lmiui/resourcebrowser/ResourceContext;)V

    .line 63
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->initParams()V

    .line 65
    iget-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 66
    :cond_1
    iget-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-static {p0, v4}, Lmiui/resourcebrowser/util/ResourceTabConfigHelper;->getPresetPageTabConfig(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;)Lmiui/resourcebrowser/model/PageTabConfig;

    move-result-object v0

    .line 67
    .local v0, "config":Lmiui/resourcebrowser/model/PageTabConfig;
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Lmiui/resourcebrowser/model/PageTabConfig;->getTabInfos()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    .line 70
    iget-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/PageTabConfig;->getTabInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_2
    iget-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 74
    :cond_3
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->buildDefaultPageGroups()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    .line 77
    .end local v0    # "config":Lmiui/resourcebrowser/model/PageTabConfig;
    :cond_4
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->isHomePage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 78
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lmiui/resourcebrowser/activity/ResourceTabActivity$1;

    invoke-direct {v5, p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity$1;-><init>(Lmiui/resourcebrowser/activity/ResourceTabActivity;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :goto_0
    invoke-super {p0, p1}, Lmiui/resourcebrowser/activity/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v4, :cond_5

    .line 92
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getMiuiActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/app/ActionBar;->setTabsMode(Z)V

    .line 93
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->isHomePage()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getMiuiActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    .line 98
    :cond_5
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v3, "searchView":Landroid/widget/ImageView;
    const v4, 0x7f020051

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    new-instance v4, Lmiui/resourcebrowser/activity/ResourceTabActivity$2;

    invoke-direct {v4, p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity$2;-><init>(Lmiui/resourcebrowser/activity/ResourceTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0, v3}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->setActionBarRightMenu(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getCustomizedWindowTitle()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "customizedTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 110
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    :cond_6
    return-void

    .line 86
    .end local v2    # "customizedTitle":Ljava/lang/String;
    .end local v3    # "searchView":Landroid/widget/ImageView;
    :cond_7
    const v4, 0x7f0c0032

    invoke-virtual {p0, v4}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->setTheme(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    const-string v0, "ACTIVITY_SAVED_PARAM_PAGE_KEY_LINE"

    iget-object v1, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageKeyLine:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Lmiui/resourcebrowser/activity/BaseTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 155
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 156
    .local v1, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 157
    .local v2, "searchableInfo":Landroid/app/SearchableInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0, v5}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    const/high16 v3, 0x7f040000

    const v4, 0x7f040001

    invoke-virtual {p0, v3, v4}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->overridePendingTransition(II)V

    .line 161
    return v5
.end method

.method protected supportExchangeEntry()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

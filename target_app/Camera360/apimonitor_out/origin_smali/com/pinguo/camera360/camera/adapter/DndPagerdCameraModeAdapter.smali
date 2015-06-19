.class public Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
.super Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;
.source "DndPagerdCameraModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter",
        "<",
        "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADDNEW_ITEM_KEY:Ljava/lang/String; = "mode_addnew_item"

.field public static final RECOMMENDATION_ITEM_KEY:Ljava/lang/String; = "mode_recomendation_item"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field private mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

.field private mOnePageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V
    .registers 5

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mOnePageCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mOnePageCount:I

    iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mDeleteList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mDeleteList:Ljava/util/List;

    return-object v0
.end method

.method private deleteRecommendationItem()V
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mOnePageCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-super {p0, v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->deleteItem(II)V

    return-void
.end method

.method private getAddNewItem()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>()V

    iput v2, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I

    const-string/jumbo v1, "mode_addnew_item"

    iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const v1, 0x7f08021e

    iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->nameId:I

    iput v2, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I

    const v1, 0x7f0202c0

    iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I

    const-string/jumbo v1, "add"

    iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;

    return-object v0
.end method

.method private getRecommendationItem()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>()V

    const-string/jumbo v1, "mode_recomendation_item"

    iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    iput v2, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I

    const v1, 0x7f080337

    iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->nameId:I

    iput v2, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I

    const v1, 0x7f0202cd

    iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I

    const-string/jumbo v1, "recommendation"

    iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addNewItem()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getAddNewItem()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addRecommendationItemToPostion(I)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getRecommendationItem()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addRecommendationItemToPostion(ILcom/pinguo/camera360/adv/AdvertisementModel$Item;)V
    .registers 5

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getRecommendationItem()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    move-result-object v0

    if-eqz p2, :cond_12

    iget v1, p2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I

    iget-object v1, p2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->iconUrl:Ljava/lang/String;

    iget v1, p2, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->nameDefault:I

    iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->nameId:I

    :cond_12
    invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public columnCount()I
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    const/4 v0, 0x2

    :cond_11
    return v0
.end method

.method public couldItemDelete(I)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_8
    return v1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget-object v0, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string/jumbo v1, "mode_addnew_item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string/jumbo v1, "mode_recomendation_item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2c
    move v1, v2

    goto :goto_8

    :cond_2e
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public couldItemMove(I)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_8
    return v1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget-object v0, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v1, "mode_addnew_item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "mode_recomendation_item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_23
    move v1, v2

    goto :goto_8

    :cond_25
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public deleteItem(II)V
    .registers 5

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mOnePageCount:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->deleteRecommendationItem()V

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->deleteItem(II)V

    iget v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mOnePageCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->addRecommendationItemToPostion(I)V

    :goto_19
    return-void

    :cond_1a
    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->deleteItem(II)V

    goto :goto_19
.end method

.method public deleteItem(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)V
    .registers 8

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_25

    :goto_8
    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->rowCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->columnCount()I

    move-result v5

    mul-int/2addr v4, v5

    div-int v2, v3, v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->rowCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->columnCount()I

    move-result v5

    mul-int/2addr v4, v5

    rem-int v1, v3, v4

    invoke-virtual {p0, v2, v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->deleteItem(II)V

    :cond_24
    return-void

    :cond_25
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget-object v4, v4, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    iget-object v5, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move v3, v0

    goto :goto_8

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public bridge synthetic deleteItem(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->deleteItem(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)V

    return-void
.end method

.method public getOnePageCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mOnePageCount:I

    return v0
.end method

.method public isEnable(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onGridStopEditMode()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->updateOriData()V

    return-void
.end method

.method public refreshRecommendationItemIfAdded(Lcom/pinguo/camera360/adv/AdvertisementModel$Item;)Z
    .registers 7

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    iget-object v2, p1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_7
    move v2, v3

    :goto_8
    return v2

    :cond_9
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_23

    :goto_11
    if-eqz v1, :cond_44

    iget-object v2, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_3e

    iget-object v2, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->iconUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    move v2, v3

    goto :goto_8

    :cond_23
    const-string/jumbo v4, "mode_recomendation_item"

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    goto :goto_11

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3e
    iget-object v2, p1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->iconUrl:Ljava/lang/String;

    const/4 v2, 0x1

    goto :goto_8

    :cond_44
    move v2, v3

    goto :goto_8
.end method

.method public rowCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public updateOriData()V
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mDeleteList:Ljava/util/List;

    invoke-virtual {v2, v1, v3}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->updateCameraModeList(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->loadProductList()Ljava/util/List;

    :cond_26
    iget-object v2, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mDeleteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget-object v3, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v4, "mode_addnew_item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v4, "mode_recomendation_item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public view(II)Landroid/view/View;
    .registers 16

    const/4 v8, 0x0

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0300bb

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getItemAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I

    if-ne v9, v12, :cond_d9

    move v4, v8

    :goto_19
    const v9, 0x7f0a0429

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0a042c

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const-string/jumbo v9, "mode_recomendation_item"

    iget-object v10, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dd

    iget-object v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->iconUrl:Ljava/lang/String;

    if-eqz v9, :cond_dd

    iget-object v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->iconUrl:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_dd

    iget v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I

    invoke-virtual {v2, v9}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V

    iget-object v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    :goto_4d
    const v9, 0x7f0a0348

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->nameId:I

    if-nez v9, :cond_e4

    const-string/jumbo v9, ""

    :goto_5d
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v10, "mode_addnew_item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isShowMoreCameraNewPoint()Z

    move-result v9

    if-eqz v9, :cond_7f

    const v9, 0x7f0a042d

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_7f
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f2

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->setSelected(Z)V

    :goto_92
    const v8, 0x7f0a029b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v8, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v9, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_af

    invoke-virtual {v1, v12}, Landroid/view/View;->setClickable(Z)V

    new-instance v8, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

    invoke-direct {v8, p0, v3}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;-><init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_af
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v8, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v9, "mode_recomendation_item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d0

    iget-object v8, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v9, "mode_addnew_item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d0

    new-instance v8, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$2;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$2;-><init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_d0
    new-instance v8, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;-><init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v7

    :cond_d9
    const/16 v4, 0x8

    goto/16 :goto_19

    :cond_dd
    iget v9, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I

    invoke-virtual {v2, v9}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageResource(I)V

    goto/16 :goto_4d

    :cond_e4
    iget-object v9, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, v3, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->nameId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5d

    :cond_f2
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setSelected(Z)V

    goto :goto_92
.end method

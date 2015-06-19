.class public Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "EffectItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;,
        Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private INSTALLING_TAG:Ljava/lang/String;

.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUseType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V

    const-string/jumbo v0, "_installing"

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->INSTALLING_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mUseType:I

    iput p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mUseType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->INSTALLING_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkNetWorkAvailable(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkSdkVersionAvailable(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;ILcom/pinguo/camera360/shop/model/entity/Product;Landroid/content/Context;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkMemberOnly(ILcom/pinguo/camera360/shop/model/entity/Product;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->doInstall(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->showInterruptDialog(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->doUseEffect(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v0

    return v0
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 20

    invoke-virtual/range {p0 .. p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;

    const/4 v11, 0x0

    instance-of v2, v13, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    if-eqz v2, :cond_7a

    move-object v9, v13

    check-cast v9, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    iget-object v11, v9, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->icon:Ljava/lang/String;

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemName:Landroid/widget/TextView;

    iget-object v4, v9, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemMidDesc:Landroid/widget/TextView;

    const v4, 0x7f080265

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v9, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->productCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemDescribe:Landroid/widget/TextView;

    iget-object v4, v9, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->description:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setVisibility(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->roundCornerImage:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->moreIndicator:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->categoryNewPoint:Landroid/widget/ImageView;

    iget-object v4, v9, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->isCategoryNew(Lcom/pinguo/camera360/shop/model/entity/ProductCategory;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->categoryNewPoint:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6c
    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    invoke-virtual {v2, v11}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_6

    :cond_72
    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->categoryNewPoint:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6c

    :cond_7a
    instance-of v2, v13, Lcom/pinguo/camera360/shop/model/entity/Product;

    if-eqz v2, :cond_6

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->categoryNewPoint:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v14, v13

    check-cast v14, Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v11, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->icon:Ljava/lang/String;

    iget v15, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-eqz v15, :cond_91

    const/4 v2, 0x2

    if-ne v15, v2, :cond_145

    :cond_91
    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    iget-object v0, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    move-object/from16 v16, v0

    iget v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->purchaseType:I

    iget v5, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->price:I

    iget v6, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->coin:I

    iget v7, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->promoteType:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->getPrice(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setTag(Ljava/lang/Object;)V

    :cond_b5
    :goto_b5
    iget v2, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->recommendType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d9

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->newFlag:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c0
    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemName:Landroid/widget/TextView;

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemMidDesc:Landroid/widget/TextView;

    const v4, 0x7f080264

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->itemCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->itemCount:I

    const/4 v4, 0x1

    if-gt v2, v4, :cond_110

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemMidDesc:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "effects"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_110

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemMidDesc:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "effects"

    const-string/jumbo v5, "effect"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemMidDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_110
    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemDescribe:Landroid/widget/TextView;

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->description:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->moreIndicator:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setVisibility(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->roundCornerImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    new-instance v4, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v14, v1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;I)V

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setOnInstallBtnClickListener(Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v4}, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->getEffectIconLocalPathByGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_145
    const/4 v2, 0x1

    if-ne v15, v2, :cond_15f

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v4, 0x7f08023a

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_b5

    :cond_15f
    const/4 v2, 0x3

    if-ne v15, v2, :cond_1c2

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->INSTALLING_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iget v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->installProgress:I

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b5

    new-instance v8, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14, v2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v5, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    invoke-virtual {v2, v4, v5, v8}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    goto/16 :goto_b5

    :cond_1c2
    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v4, 0x7f08025f

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(I)V

    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iget-object v4, v14, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_b5

    :cond_1d9
    iget-object v2, v10, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->newFlag:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c0
.end method

.method private checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getFrontImageVersion()I

    move-result v0

    iget-object v1, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    iget v1, v1, Lcom/pinguo/camera360/shop/model/entity/Requirements;->engineMin:I

    if-le v1, v0, :cond_14

    const/4 v1, 0x0

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private checkMemberOnly(ILcom/pinguo/camera360/shop/model/entity/Product;Landroid/content/Context;)Z
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p2, Lcom/pinguo/camera360/shop/model/entity/Product;->promoteType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_47

    move v2, v4

    :goto_8
    invoke-static {p3}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v1

    if-eqz v2, :cond_49

    if-nez v1, :cond_49

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-direct {v0, p3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080196

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    const v6, 0x7f0802ce

    invoke-virtual {p3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;

    invoke-direct {v7, p0, p3, p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Landroid/content/Context;I)V

    invoke-virtual {v0, v4, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v4, -0x2

    const v6, 0x7f08028c

    invoke-virtual {p3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$6;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$6;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;)V

    invoke-virtual {v0, v4, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    :goto_46
    return v5

    :cond_47
    move v2, v5

    goto :goto_8

    :cond_49
    move v5, v4

    goto :goto_46
.end method

.method private checkNetWorkAvailable(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->downloadPath:Ljava/lang/String;

    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_29

    const v0, 0x7f08032a

    const/16 v2, 0xbb8

    invoke-static {v0, p2, v2, v1}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/view/View;II)V

    move v0, v1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x1

    goto :goto_28
.end method

.method private checkSdkVersionAvailable(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z
    .registers 10

    invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I

    move-result v6

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->sdkMin:I

    if-ge v6, v0, :cond_26

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080234

    const v2, 0x7f080184

    const v3, 0x7f0802fd

    new-instance v4, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;

    invoke-direct {v4, p0, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Landroid/view/View;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    const/4 v0, 0x0

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method private doInstall(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    .registers 8

    const/4 v3, 0x3

    iput v3, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    move-object v2, p2

    check-cast v2, Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    move-object v2, p2

    check-cast v2, Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->INSTALLING_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateFrontImage()V

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5e

    new-instance v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;

    invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    iget-object v3, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v4, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    invoke-virtual {v2, v3, v4, v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    :cond_5e
    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    :goto_65
    return-void

    :cond_66
    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    new-instance v3, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    goto :goto_65
.end method

.method private doUseEffect(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    .registers 10

    const/4 v6, 0x0

    iget-object v4, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeEffectOpen(Ljava/lang/String;)V

    sget-object v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v4

    iget-object v5, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByPackKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;

    :cond_24
    iget v4, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mUseType:I

    if-eqz v4, :cond_2d

    iget v4, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mUseType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44

    :cond_2d
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v4

    new-instance v5, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;

    invoke-direct {v5, v3}, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-static {v4, v5}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityFromStore(Landroid/content/Context;Ljava/lang/String;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget v4, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mUseType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_43

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveCpuCmd()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z

    move-result v4

    if-nez v4, :cond_66

    const v4, 0x7f080233

    const/16 v5, 0xbb8

    invoke-static {v4, p2, v5, v6}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/view/View;II)V

    goto :goto_43

    :cond_66
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v4

    new-instance v5, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;

    invoke-direct {v5, v3}, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_43
.end method

.method private getPrice(Landroid/content/Context;IIII)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x2

    if-eqz p3, :cond_5

    if-nez p4, :cond_17

    :cond_5
    if-ne p5, v4, :cond_f

    const v1, 0x7f08021c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const v1, 0x7f080251

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_62

    packed-switch p2, :pswitch_data_70

    const-string/jumbo v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p3}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4f

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :pswitch_54
    const-string/jumbo v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :pswitch_5b
    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_62
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_54
        :pswitch_5b
    .end packed-switch
.end method

.method private showInterruptDialog(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    .registers 12

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080236

    const v4, 0x7f080235

    new-instance v5, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;

    invoke-direct {v5, p0, p1, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    new-instance v6, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$3;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$3;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;)V

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_4e

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030078

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v2, 0x7f020165

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setProgressBackgroundColor(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setProgressColor(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v2, 0x7f0200eb

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setUnintallState(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v2, 0x7f0200e7

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setInstallFailedState(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4e
    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->bindView(ILandroid/view/View;)V

    return-object p2
.end method

.method public unregisterAll()V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    return-void

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v3

    sget-object v4, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-virtual {v3, v0, v4, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->unregistListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    goto :goto_a
.end method

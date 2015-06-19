.class public Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "CameraModeItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ShopCallback;,
        Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;
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
            "Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ShopCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V

    const-string/jumbo v0, "_installing"

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->INSTALLING_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->mCallbackMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->mCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->INSTALLING_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 13

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v9, 0x8

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;

    instance-of v4, v2, Lcom/pinguo/camera360/shop/model/entity/Product;

    if-eqz v4, :cond_b

    move-object v3, v2

    check-cast v3, Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v4, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-eqz v4, :cond_22

    iget v4, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6c

    :cond_22
    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {v4, v6}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->purchaseType:I

    iget v7, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->price:I

    iget v8, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->coin:I

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->getPrice(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setTag(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_46
    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->icon:Ljava/lang/String;

    iget-object v6, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->getCameraIconCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemName:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemDescribe:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    new-instance v5, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;)V

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setOnInstallBtnClickListener(Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;)V

    goto :goto_b

    :cond_6c
    iget v4, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v4, v7, :cond_8a

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {v4, v7}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v5, 0x7f08025d

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(I)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setTag(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_46

    :cond_8a
    iget v4, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v4, v8, :cond_ea

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {v4, v8}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->INSTALLING_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setTag(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iget v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installProgress:I

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setProgress(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->mCallbackMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e3

    new-instance v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ShopCallback;

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v0, p0, v3, v4}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ShopCallback;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/ViewGroup;)V

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->mCallbackMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v4

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v6, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    invoke-virtual {v4, v5, v6, v0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    :cond_e3
    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_46

    :cond_ea
    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v5, 0x7f080260

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(I)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setTag(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_46
.end method

.method private getPrice(Landroid/content/Context;III)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_4

    if-nez p4, :cond_c

    :cond_4
    const v1, 0x7f080251

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_b
    return-object v1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_58

    packed-switch p2, :pswitch_data_66

    const-string/jumbo v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p3}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_45

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :pswitch_4a
    const-string/jumbo v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_51
    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_58
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_51
    .end packed-switch
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_56

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03006c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v2, 0x7f0202c2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setProgressBackgroundColor(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setProgressColor(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v2, 0x7f0200eb

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setUnintallState(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v2, 0x7f0200e7

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setInstallFailedState(I)V

    iget-object v1, v0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setInstalledState(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_56
    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->bindView(ILandroid/view/View;)V

    return-object p2
.end method

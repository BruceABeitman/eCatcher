.class Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field categoryNewPoint:Landroid/widget/ImageView;

.field installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

.field itemDescribe:Landroid/widget/TextView;

.field itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

.field itemMidDesc:Landroid/widget/TextView;

.field itemName:Landroid/widget/TextView;

.field moreIndicator:Landroid/widget/TextView;

.field newFlag:Landroid/widget/ImageView;

.field roundCornerImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v0, 0x7f0a0260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemName:Landroid/widget/TextView;

    const v0, 0x7f0a029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemMidDesc:Landroid/widget/TextView;

    const v0, 0x7f0a0263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->itemDescribe:Landroid/widget/TextView;

    const v0, 0x7f0a02a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->moreIndicator:Landroid/widget/TextView;

    const v0, 0x7f0a0262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;

    const v0, 0x7f0a029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->newFlag:Landroid/widget/ImageView;

    const v0, 0x7f0a029e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->categoryNewPoint:Landroid/widget/ImageView;

    const v0, 0x7f0a02a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ViewHolder;->roundCornerImage:Landroid/widget/ImageView;

    return-void
.end method

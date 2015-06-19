.class  Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CameraModeItemAdapter.java"
.field  installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
.field  itemDescribe:Landroid/widget/TextView;
.field  itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
.field  itemName:Landroid/widget/TextView;
.field  itemSummary:Landroid/widget/TextView;
.method public constructor <init>(Landroid/view/View;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f0a025f
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemIcon:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
const v0, 0x7f0a0260
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemName:Landroid/widget/TextView;
const v0, 0x7f0a0261
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemSummary:Landroid/widget/TextView;
const v0, 0x7f0a0263
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->itemDescribe:Landroid/widget/TextView;
const v0, 0x7f0a0262
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;
iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ViewHolder;->installButton:Lcom/pinguo/camera360/shop/view/ItemInstallButton;
return-void
.end method
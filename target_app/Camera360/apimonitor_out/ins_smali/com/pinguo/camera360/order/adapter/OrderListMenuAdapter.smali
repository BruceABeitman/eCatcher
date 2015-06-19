.class public Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "OrderListMenuAdapter.java"
.field private mActivity:Landroid/app/Activity;
.field  mIcons:[I
.field  mItems:[Ljava/lang/String;
.field private mSelectedOrderPos:I
.method public constructor <init>(Landroid/app/Activity;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [I
fill-array-data v0, :array_1c
iput-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mIcons:[I
iput-object p1, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mActivity:Landroid/app/Activity;
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0d0014
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mItems:[Ljava/lang/String;
return-void
nop
:array_1c
.array-data 0x4
0x3ct 0x3t 0x2t 0x7ft
0x39t 0x3t 0x2t 0x7ft
0x33t 0x3t 0x2t 0x7ft
0x36t 0x3t 0x2t 0x7ft
.end array-data
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mItems:[Ljava/lang/String;
array-length v0, v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getTitle(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mItems:[Ljava/lang/String;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mItems:[Ljava/lang/String;
array-length v0, v0
if-gt v0, p1, :cond_d
:cond_9
const-string/jumbo v0, ""
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mItems:[Ljava/lang/String;
aget-object v0, v0, p1
goto :goto_c
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
if-nez p2, :cond_56
iget-object v1, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mActivity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f0300b2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;-><init>(Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;)V
const v1, 0x7f0a03f6
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;
const v1, 0x7f0a03f7
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;->mCheckIV:Landroid/widget/ImageView;
const v1, 0x7f0a03f5
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;->mIcIV:Landroid/widget/ImageView;
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_39
iget-object v1, v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;->mIcIV:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mIcons:[I
aget v2, v2, p1
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v1, v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;
iget-object v2, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mItems:[Ljava/lang/String;
aget-object v2, v2, p1
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget v1, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mSelectedOrderPos:I
if-ne v1, p1, :cond_5d
iget-object v1, v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;->mCheckIV:Landroid/widget/ImageView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_55
return-object p2
:cond_56
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;
goto :goto_39
:cond_5d
iget-object v1, v0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter$ViewHolder;->mCheckIV:Landroid/widget/ImageView;
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_55
.end method
.method public setSelectedOrderPos(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->mSelectedOrderPos:I
return-void
.end method
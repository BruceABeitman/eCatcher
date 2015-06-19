.class public Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "MyCenterGridViewAdapter.java"
.field private static final TAG:Ljava/lang/String;
.field private mActivity:Landroid/app/Activity;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;->mActivity:Landroid/app/Activity;
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
if-nez p2, :cond_10
iget-object v7, p0, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;->mActivity:Landroid/app/Activity;
invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v7
const v8, 0x7f0300b4
const/4 v9, 0x0
invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_10
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;
if-nez v3, :cond_19
:goto_18
return-object p2
:cond_19
iget v6, v3, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mUnreadCount:I
const v7, 0x7f0a03ff
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
const v7, 0x7f0a0400
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v7, 0x7f0a0401
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
if-lez v6, :cond_a9
if-nez p1, :cond_82
const/16 v7, 0x8
invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V
const v7, 0x7f0a0402
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
const/4 v8, 0x0
invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
:goto_46
:cond_46
const/16 v7, 0x8
invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V
const/4 v7, 0x1
if-ne p1, v7, :cond_60
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
move-result-object v7
const-string/jumbo v8, "key_my_center_show_new"
const/4 v9, 0x1
invoke-virtual {v7, v8, v9}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->getBoolean(Ljava/lang/String;Z)Z
move-result v7
if-eqz v7, :cond_60
const/4 v7, 0x0
invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V
:cond_60
const v7, 0x7f0a03fe
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iget v7, v3, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mIconId:I
invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V
const v7, 0x7f0a0403
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
iget v7, v3, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mTitleId:I
invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V
iget-object v7, v3, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mListener:Landroid/view/View$OnClickListener;
invoke-virtual {p2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_18
:cond_82
const/4 v7, 0x0
invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V
const v7, 0x7f0a0402
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
const/16 v8, 0x8
invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
const/16 v7, 0x64
if-ge v6, v7, :cond_9e
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_46
:cond_9e
const/16 v7, 0x64
if-lt v6, v7, :cond_46
const-string/jumbo v7, "99+"
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_46
:cond_a9
const/16 v7, 0x8
invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V
const v7, 0x7f0a0402
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
const/16 v8, 0x8
invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
goto :goto_46
.end method
.class public Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
.super Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
.source "ClothesController.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;
.field private static final CLOTHES_MAN_ICONS:[I
.field private static final CLOTHES_MAN_TEXTURE:[I
.field private static final CLOTHES_WOMAN_ICONS:[I
.field private static final CLOTHES_WOMAN_TEXTURE:[I
.field private static mClothesClickTimes:I
.field private mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
.field private mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
.field private mClothesButtom:Landroid/view/View;
.field private mClothesSelectView:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
.field private mClothesTop:Landroid/view/View;
.field private mDoneView:Landroid/view/View;
.field private mIsManClothes:Z
.field private mMainButtom:Landroid/view/View;
.field private mMainTop:Landroid/view/View;
.field private mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
.field private mQuitView:Landroid/view/View;
.field private mSexSelectView:Landroid/widget/TextView;
.field private mTempMatrixForCancel:Landroid/graphics/Matrix;
.field private mTempTextureResIdForCancel:I
.field private mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x6
new-array v0, v1, [I
fill-array-data v0, :array_1e
sput-object v0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_MAN_ICONS:[I
new-array v0, v1, [I
fill-array-data v0, :array_2e
sput-object v0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_MAN_TEXTURE:[I
new-array v0, v1, [I
fill-array-data v0, :array_3e
sput-object v0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_WOMAN_ICONS:[I
new-array v0, v1, [I
fill-array-data v0, :array_4e
sput-object v0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_WOMAN_TEXTURE:[I
return-void
:array_1e
.array-data 0x4
0x31t 0x1t 0x2t 0x7ft
0x32t 0x1t 0x2t 0x7ft
0x35t 0x1t 0x2t 0x7ft
0x34t 0x1t 0x2t 0x7ft
0x33t 0x1t 0x2t 0x7ft
0x36t 0x1t 0x2t 0x7ft
.end array-data
:array_2e
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0x37t 0x1t 0x2t 0x7ft
0x3at 0x1t 0x2t 0x7ft
0x39t 0x1t 0x2t 0x7ft
0x38t 0x1t 0x2t 0x7ft
0x3bt 0x1t 0x2t 0x7ft
.end array-data
:array_3e
.array-data 0x4
0x31t 0x1t 0x2t 0x7ft
0x3dt 0x1t 0x2t 0x7ft
0x40t 0x1t 0x2t 0x7ft
0x3ft 0x1t 0x2t 0x7ft
0x3ct 0x1t 0x2t 0x7ft
0x3et 0x1t 0x2t 0x7ft
.end array-data
:array_4e
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0x42t 0x1t 0x2t 0x7ft
0x45t 0x1t 0x2t 0x7ft
0x44t 0x1t 0x2t 0x7ft
0x41t 0x1t 0x2t 0x7ft
0x43t 0x1t 0x2t 0x7ft
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
.registers 10
const/4 v6, 0x0
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;-><init>(Landroid/content/Context;Landroid/view/View;)V
const v4, 0x7f0a0310
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
const v4, 0x7f0a02f2
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mMainTop:Landroid/view/View;
const v4, 0x7f0a0300
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mMainButtom:Landroid/view/View;
const v4, 0x7f0a02fd
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesTop:Landroid/view/View;
const v4, 0x7f0a030b
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesButtom:Landroid/view/View;
const v4, 0x7f0a02ff
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mQuitView:Landroid/view/View;
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mQuitView:Landroid/view/View;
invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0a02fe
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mDoneView:Landroid/view/View;
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mDoneView:Landroid/view/View;
invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0a030c
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesSelectView:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
const v4, 0x7f0a030d
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mSexSelectView:Landroid/widget/TextView;
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mSexSelectView:Landroid/widget/TextView;
invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0a0311
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
new-instance v4, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-direct {v4}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;-><init>()V
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
:goto_82
sget-object v4, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_MAN_ICONS:[I
array-length v4, v4
if-lt v1, v4, :cond_bc
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v4, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setData(Ljava/util/List;)V
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v4, p0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setOnClothesItemClickListener(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;)V
new-instance v4, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-direct {v4}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;-><init>()V
iput-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
:goto_9e
sget-object v4, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_WOMAN_ICONS:[I
array-length v4, v4
if-lt v1, v4, :cond_d5
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v4, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setData(Ljava/util/List;)V
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v4, v6}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v4, p0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setOnClothesItemClickListener(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;)V
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesSelectView:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setAdapter(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;)V
iput-boolean v6, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
return-void
:cond_bc
new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;
invoke-direct {v0}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;-><init>()V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_MAN_TEXTURE:[I
aget v4, v4, v1
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->setResId(I)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_MAN_ICONS:[I
aget v4, v4, v1
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->setThumbnailResId(I)V
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_82
:cond_d5
new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;
invoke-direct {v0}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;-><init>()V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_WOMAN_TEXTURE:[I
aget v4, v4, v1
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->setResId(I)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->CLOTHES_WOMAN_ICONS:[I
aget v4, v4, v1
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->setThumbnailResId(I)V
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_9e
.end method
.method private notifyChange()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->getSelectedIndex()I
move-result v0
if-ltz v0, :cond_26
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->notifyDataSetChange()V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesSelectView:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setAdapter(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mSexSelectView:Landroid/widget/TextView;
const v1, 0x7f0801d2
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
goto :goto_12
:cond_26
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->getSelectedIndex()I
move-result v0
if-ltz v0, :cond_4a
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
if-nez v0, :cond_38
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->notifyDataSetChange()V
goto :goto_12
:cond_38
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesSelectView:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setAdapter(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mSexSelectView:Landroid/widget/TextView;
const v1, 0x7f0801d3
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iput-boolean v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
goto :goto_12
:cond_4a
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->notifyDataSetChange()V
goto :goto_12
:cond_59
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->notifyDataSetChange()V
goto :goto_12
.end method
.method public composeClothes(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->addTexture2BgBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public enterChildView()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->enterChildView()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mMainTop:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesTop:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->enterChildViewForTop(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mMainButtom:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesButtom:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->enterChildViewForButtom(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect()Landroid/graphics/RectF;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setContentRectF(Landroid/graphics/RectF;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setGestureEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->notifyDataSetChange()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->getCurTextureResId()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mTempTextureResIdForCancel:I
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->getCurTextureMatrix()Landroid/graphics/Matrix;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mTempMatrixForCancel:Landroid/graphics/Matrix;
return-void
.end method
.method public keyBack()V
.registers 5
const/4 v3, 0x0
const/4 v2, -0x1
invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z
move-result v0
if-nez v0, :cond_e
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->isMain()Z
move-result v0
if-eqz v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyBack()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesTop:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mMainTop:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->backMainViewForTop(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesButtom:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mMainButtom:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->backMainViewForButtom(Landroid/view/View;Landroid/view/View;)V
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mTempTextureResIdForCancel:I
if-eq v0, v2, :cond_52
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mTempTextureResIdForCancel:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setTextureRes(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mTempMatrixForCancel:Landroid/graphics/Matrix;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mTempMatrixForCancel:Landroid/graphics/Matrix;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setMatrix(Landroid/graphics/Matrix;)V
:cond_3b
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mTempTextureResIdForCancel:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndexByResId(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mTempTextureResIdForCancel:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndexByResId(I)V
:goto_49
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->notifyChange()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setGestureEnabled(Z)V
goto :goto_e
:cond_52
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->release()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
goto :goto_49
.end method
.method public keyDone()V
.registers 3
invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->isMain()Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyDone()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesTop:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mMainTop:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->backMainViewForTop(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesButtom:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mMainButtom:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->backMainViewForButtom(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->hasTexture()Z
move-result v0
if-nez v0, :cond_2d
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setVisibility(I)V
:cond_2d
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->notifyChange()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setGestureEnabled(Z)V
const/4 v0, 0x2
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEditLayUse(I)V
goto :goto_c
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/controller/ClothesController; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v5, 0x7f0801d3
const/4 v4, 0x1
const/4 v3, -0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mQuitView:Landroid/view/View;
if-ne p1, v0, :cond_11
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportClothesFunction(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->keyBack()V
:cond_10
:goto_10
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/controller/ClothesController; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_11
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mSexSelectView:Landroid/widget/TextView;
if-ne p1, v0, :cond_73
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mSexSelectView:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mContext:Landroid/content/Context;
invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportClothesFunction(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mSexSelectView:Landroid/widget/TextView;
const v1, 0x7f0801d2
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->getSelectedIndex()I
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
:cond_44
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesSelectView:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setAdapter(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;)V
iput-boolean v4, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
goto :goto_10
:cond_4e
const/4 v0, 0x2
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportClothesFunction(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mSexSelectView:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->getSelectedIndex()I
move-result v0
if-nez v0, :cond_69
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
:cond_69
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesSelectView:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setAdapter(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;)V
iput-boolean v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
goto :goto_10
:cond_73
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mDoneView:Landroid/view/View;
if-ne p1, v0, :cond_10
const/4 v0, 0x3
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportClothesFunction(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->keyDone()V
goto :goto_10
.end method
.method public onClothesItemClick(ILandroid/view/View;)V
.registers 7
const/4 v2, 0x1
const/4 v3, -0x1
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesSelectView:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->deselectAll()V
invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V
if-eqz p1, :cond_31
sget v0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesClickTimes:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesClickTimes:I
sget v0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mClothesClickTimes:I
const/4 v1, 0x2
if-lt v0, v1, :cond_31
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isClothesToastShown()Z
move-result v0
if-nez v0, :cond_31
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setClothesToastShown(Z)V
const v0, 0x7f0801cd
const/16 v1, 0x4b0
const/4 v2, 0x0
invoke-static {v0, p2, v1, v2}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/view/View;II)V
:cond_31
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mIsManClothes:Z
if-eqz v0, :cond_4f
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->getResId()I
move-result v0
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setTextureRes(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportClothesManUse(I)V
:goto_4e
return-void
:cond_4f
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportClothesWomanUse(I)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mWomanClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->getResId()I
move-result v0
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setTextureRes(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->mManClothesAdapter:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
goto :goto_4e
.end method
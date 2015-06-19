.class public Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;
.super Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;
.source "IdPhotoSeventhGuideView.java"
.field private static final START_BTN_ANIMATION:I = 0x4
.field private static final START_FIRST_LINE_ANIMATION:I = 0x1
.field private static final START_SECOND_LINE_ANIMATION:I = 0x2
.field private static final START_THIRD_LINE_ANIMATION:I = 0x3
.field private mFirstLineBitmap:Landroid/graphics/Bitmap;
.field private mFirstLineImageView:Landroid/widget/ImageView;
.field private mFirstLineView:Landroid/view/View;
.field  mHandler:Landroid/os/Handler;
.field private mSecondLineBitmap:Landroid/graphics/Bitmap;
.field private mSecondLineImageView:Landroid/widget/ImageView;
.field private mSecondLineView:Landroid/view/View;
.field private mSixGuideViewCallback:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;
.field private mStartMakeBtn:Landroid/widget/Button;
.field private mThirdLineBitmap:Landroid/graphics/Bitmap;
.field private mThirdLineImageView:Landroid/widget/ImageView;
.field private mThirdLineView:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;-><init>(Landroid/content/Context;)V
new-instance v1, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;-><init>(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mHandler:Landroid/os/Handler;
const-string/jumbo v1, "layout_inflater"
invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v1, 0x7f03005e
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
const v1, 0x7f0a01da
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineView:Landroid/view/View;
const v1, 0x7f0a01db
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineImageView:Landroid/widget/ImageView;
const v1, 0x7f0a01dc
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineView:Landroid/view/View;
const v1, 0x7f0a01dd
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineImageView:Landroid/widget/ImageView;
const v1, 0x7f0a01de
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineView:Landroid/view/View;
const v1, 0x7f0a01df
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineImageView:Landroid/widget/ImageView;
const v1, 0x7f0a01e0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mStartMakeBtn:Landroid/widget/Button;
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mStartMakeBtn:Landroid/widget/Button;
new-instance v2, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$2;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$2;-><init>(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->startFirstLineAnimation()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->startSecondLineAnimation()V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->startThirdLineAnimation()V
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mStartMakeBtn:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->startBtnAnimation()V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSixGuideViewCallback:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;
return-object v0
.end method
.method private startBtnAnimation()V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x1f4
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mStartMakeBtn:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private startFirstLineAnimation()V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x1f4
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private startSecondLineAnimation()V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x1f4
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private startThirdLineAnimation()V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x1f4
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method public clearResource()V
.registers 4
const/4 v2, 0x0
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;
const-string/jumbo v1, "IdPhotoSeventhGuideView clearResource"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->restoreGuideView()V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineBitmap:Landroid/graphics/Bitmap;
:cond_26
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineBitmap:Landroid/graphics/Bitmap;
:cond_31
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineBitmap:Landroid/graphics/Bitmap;
:cond_3c
return-void
.end method
.method public initGuideView()V
.registers 4
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineBitmap:Landroid/graphics/Bitmap;
if-nez v1, :cond_1a
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f02040d
invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineBitmap:Landroid/graphics/Bitmap;
:cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineBitmap:Landroid/graphics/Bitmap;
if-nez v1, :cond_2b
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f02040e
invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineBitmap:Landroid/graphics/Bitmap;
:cond_2b
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineBitmap:Landroid/graphics/Bitmap;
if-nez v1, :cond_3c
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f02040f
invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineBitmap:Landroid/graphics/Bitmap;
:cond_3c
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineImageView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineImageView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineImageView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public restoreGuideView()V
.registers 3
const/4 v1, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mStartMakeBtn:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
return-void
.end method
.method public setSixGuideViewCallback(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSixGuideViewCallback:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;
return-void
.end method
.method public startGuideViewAnimation()V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mHandler:Landroid/os/Handler;
const/4 v1, 0x3
const-wide/16 v2, 0x190
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mHandler:Landroid/os/Handler;
const/4 v1, 0x4
const-wide/16 v2, 0x258
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method
.class public Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
.super Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
.source "SkinController.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
.field private static final GET_SURFACEVIEW_BITMAP:I = 0x4
.field private static final GET_SURFACEVIEW_BITMAP_FAIL:I = 0x6
.field private static final RELOAD_PHOTO:I = 0x3
.field private static final SHOW_BITMAP:I = 0x1
.field private static final SHOW_BITMAP_FOR_EDGE_CUT:I = 0x2
.field private static final TAG:Ljava/lang/String; = "SkinController"
.field private isNeedShowClothesView:Z
.field private mActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
.field private mApplyView:Landroid/view/View;
.field private mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
.field private mClothesView:Landroid/view/View;
.field private mEntrySelectedView:Landroid/view/View;
.field private mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
.field private mHandler:Landroid/os/Handler;
.field private mHideAlphaAnimation:Landroid/view/animation/AlphaAnimation;
.field private mLastFaceEdgeRate:F
.field private mLastSkinStrongRate:F
.field private mLastSkinWhiteRate:F
.field private mMainButtom:Landroid/view/View;
.field private mMainTop:Landroid/view/View;
.field private mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
.field private mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
.field private mQuitView:Landroid/view/View;
.field private mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
.field private mSeekBarLinearLayout:Landroid/view/View;
.field private mSelectedView:Landroid/view/View;
.field private mShowAlphaAnimation:Landroid/view/animation/AlphaAnimation;
.field private mSkinBeauty:Landroid/view/View;
.field private mSkinButtom:Landroid/view/View;
.field private mSkinEdgeFace:Landroid/view/View;
.field private mSkinTop:Landroid/view/View;
.field private mSkinWhite:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
.registers 11
const-wide/16 v6, 0x0
const/4 v5, 0x1
const/4 v4, 0x0
const/high16 v3, 0x3f80
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;-><init>(Landroid/content/Context;Landroid/view/View;)V
new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$1;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHandler:Landroid/os/Handler;
const v0, 0x7f0a02f2
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mMainTop:Landroid/view/View;
const v0, 0x7f0a0300
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mMainButtom:Landroid/view/View;
const v0, 0x7f0a02f5
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinTop:Landroid/view/View;
const v0, 0x7f0a0304
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinButtom:Landroid/view/View;
const v0, 0x7f0a0313
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBarLinearLayout:Landroid/view/View;
const v0, 0x7f0a0314
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
const v0, 0x7f0a02f7
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mQuitView:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mQuitView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a02f6
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mApplyView:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mApplyView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0305
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinWhite:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinWhite:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0306
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinBeauty:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinBeauty:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinBeauty:Landroid/view/View;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
const v0, 0x7f0a0307
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinEdgeFace:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinEdgeFace:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0311
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mClothesView:Landroid/view/View;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setPGEditRendererMethodActionListener(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHideAlphaAnimation:Landroid/view/animation/AlphaAnimation;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHideAlphaAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHideAlphaAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHideAlphaAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mShowAlphaAnimation:Landroid/view/animation/AlphaAnimation;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mShowAlphaAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mShowAlphaAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mShowAlphaAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/PGGLSurfaceView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->isNeedShowClothesView:Z
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->isNeedShowClothesView:Z
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mClothesView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/view/animation/AlphaAnimation;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mShowAlphaAnimation:Landroid/view/animation/AlphaAnimation;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditSDK;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->backMain()V
return-void
.end method
.method private apply()V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->showProcessDialogInCenter()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$4;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V
return-void
.end method
.method private backMain()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setListener(Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBarLinearLayout:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->endAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBarLinearLayout:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinTop:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mMainTop:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->backMainViewForTop(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinButtom:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mMainButtom:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->backMainViewForButtom(Landroid/view/View;Landroid/view/View;)V
return-void
.end method
.method private quit()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mLastFaceEdgeRate:F
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->changeForFaceLiftEdge(F)Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mLastSkinWhiteRate:F
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->changeForSkinWhiteLevel(F)Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mLastSkinStrongRate:F
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->changeForSkinStrong(F)Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHideAlphaAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->startAnimation(Landroid/view/animation/Animation;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->hideProcessDialogInCenter()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V
:cond_2e
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mEntrySelectedView:Landroid/view/View;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->backMain()V
return-void
.end method
.method public enterChildView()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->enterChildView()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mEntrySelectedView:Landroid/view/View;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->showProcessDialogInCenter()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getWhiteLevelRate()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mLastSkinWhiteRate:F
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getEdgeRate()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mLastFaceEdgeRate:F
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getStrongRate()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mLastSkinStrongRate:F
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mMainTop:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinTop:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->enterChildViewForTop(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mMainButtom:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinButtom:Landroid/view/View;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->enterChildViewForButtom(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$3;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$3;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setListener(Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getMadePicPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->initSkin(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V
return-void
.end method
.method public enterChildViewFinish()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->onClick(Landroid/view/View;)V
return-void
.end method
.method public keyBack()V
.registers 2
invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->isMain()Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyBack()V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->quit()V
goto :goto_c
.end method
.method public keyDone()V
.registers 2
invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->isMain()Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyDone()V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->apply()V
const/4 v0, 0x1
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEditLayUse(I)V
goto :goto_c
.end method
.method public makeSkinEffect(Landroid/graphics/Bitmap;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->isPGImageSDKDestroy()Z
move-result v0
if-eqz v0, :cond_15
invoke-interface {p2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V
const-string/jumbo v0, "SkinController"
const-string/jumbo v1, "fail"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;
invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;Landroid/graphics/Bitmap;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V
goto :goto_14
.end method
.method public makeSkinEffectForEdgeCut(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
.registers 18
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->isPGImageSDKDestroy()Z
move-result v0
if-eqz v0, :cond_15
invoke-interface/range {p7 .. p7}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V
const-string/jumbo v0, "SkinController"
const-string/jumbo v1, "fail"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_14
return-void
:cond_15
iget-object v9, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;
move-object v1, p0
move-object v2, p1
move-object/from16 v3, p7
move-object v4, p2
move-object v5, p3
move/from16 v6, p6
move-object v7, p4
move-object v8, p5
invoke-direct/range {v0 .. v8}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;Landroid/graphics/Bitmap;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v9, v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V
goto :goto_14
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/controller/SkinController; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mQuitView:Landroid/view/View;
if-ne v0, p1, :cond_d
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSkinFunction(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->keyBack()V
:goto_c
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/controller/SkinController; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mApplyView:Landroid/view/View;
if-ne v0, p1, :cond_18
invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSkinFunction(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->keyDone()V
goto :goto_c
:cond_18
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBarLinearLayout:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBarLinearLayout:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->startHideAnimation()V
:cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V
:cond_35
invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinWhite:Landroid/view/View;
if-ne v0, v1, :cond_61
const/4 v0, 0x2
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSkinFunction(I)V
const v0, 0x7f0a0305
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportFaceBeautifulFunctionClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getWhiteLevelRate()F
move-result v1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setCurrentSeekValue(F)V
:goto_5b
:cond_5b
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
invoke-virtual {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V
goto :goto_c
:cond_61
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinEdgeFace:Landroid/view/View;
if-ne v0, v1, :cond_7d
const/4 v0, 0x3
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSkinFunction(I)V
const v0, 0x7f0a0307
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportFaceBeautifulFunctionClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getEdgeRate()F
move-result v1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setCurrentSeekValue(F)V
goto :goto_5b
:cond_7d
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinBeauty:Landroid/view/View;
if-ne v0, v1, :cond_5b
const/4 v0, 0x4
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSkinFunction(I)V
const v0, 0x7f0a0306
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportFaceBeautifulFunctionClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getStrongRate()F
move-result v1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setCurrentSeekValue(F)V
goto :goto_5b
.end method
.method public onPause()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/controller/SkinController; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mClothesView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->isNeedShowClothesView:Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mClothesView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_12
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0700a0
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setBackgroundColor(I)V
invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->onPause()V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/controller/SkinController; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/controller/SkinController; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->onResume()V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/controller/SkinController; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSeekValueChanged(F)V
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinEdgeFace:Landroid/view/View;
if-ne v1, v2, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v1, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->changeForFaceLiftEdge(F)Z
move-result v0
:goto_d
:cond_d
if-eqz v0, :cond_16
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V
:cond_16
return-void
:cond_17
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinWhite:Landroid/view/View;
if-ne v1, v2, :cond_24
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v1, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->changeForSkinWhiteLevel(F)Z
move-result v0
goto :goto_d
:cond_24
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSelectedView:Landroid/view/View;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mSkinBeauty:Landroid/view/View;
if-ne v1, v2, :cond_d
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {v1, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->changeForSkinStrong(F)Z
move-result v0
goto :goto_d
.end method
.method public setCenterImageView(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
return-void
.end method
.method public setFaceInfo(Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;II)V
.registers 10
const/high16 v5, 0x4000
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
iget v3, p1, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F
int-to-float v4, p2
mul-float/2addr v3, v4
iput v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iget v3, p1, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F
int-to-float v4, p3
mul-float/2addr v3, v4
iput v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct {v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
iget v3, p1, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F
int-to-float v4, p2
mul-float/2addr v3, v4
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iget v3, p1, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F
int-to-float v4, p3
mul-float/2addr v3, v4
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct {v1}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
iget v3, p1, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftX:F
iget v4, p1, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightX:F
add-float/2addr v3, v4
div-float/2addr v3, v5
int-to-float v4, p2
mul-float/2addr v3, v4
iput v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iget v3, p1, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthLeftY:F
iget v4, p1, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->mouthRightY:F
add-float/2addr v3, v4
div-float/2addr v3, v5
int-to-float v4, p3
mul-float/2addr v3, v4
iput v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
new-instance v4, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;
invoke-direct {v4, v0, v2, v1}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
invoke-virtual {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setEditThinFaceAnalyer(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;)V
return-void
.end method
.method public setPGEditSdk(Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
return-void
.end method
.method public setPGGLSurfaceView(Lus/pinguo/androidsdk/PGGLSurfaceView;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
invoke-virtual {p1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->getWidth()I
move-result v1
invoke-virtual {p1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->getHeight()I
move-result v2
invoke-virtual {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setShowWidthAndShowHeight(II)V
return-void
.end method
.method public showCenterView(Landroid/graphics/Bitmap;)V
.registers 5
if-eqz p1, :cond_1d
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageBitmap()Landroid/graphics/Bitmap;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHideAlphaAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/PGGLSurfaceView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_1d
return-void
.end method
.class public Lus/pinguo/androidsdk/pgedit/PGEditController;
.super Ljava/lang/Object;
.source "PGEditController.java"
.implements Landroid/view/View$OnClickListener;
.field protected static final MAKE_PHOTO_FAIL:I = 0x3
.field protected static final MAKE_PHOTO_FAIL_FOR_SDCARD:I = 0x8
.field protected static final MAKE_PHOTO_SUCCESS:I = 0x2
.field protected static final SAVE_PHOTO_SUCCESS_FINISH:I = 0x5
.field protected static final SHOW_FIRST_FAIL:I = 0x7
.field protected static final SHOW_FIRST_FAIL_FOR_SDCARD:I = 0x9
.field protected static final SHOW_FIRST_FOR_ORG:I = 0xb
.field protected static final SHOW_FIRST_FOR_SHOW:I = 0xa
.field protected static final SHOW_PHOTO_FOR_STEP:I = 0x4
.field protected static final SURFACEVIEW_LOADEDITPHOTO:I = 0x6
.field protected canClickMoreEffect:Z
.field private mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
.field private mBackFirstView:Landroid/view/View;
.field private mBottomMenuHSVFirst:Landroid/widget/HorizontalScrollView;
.field private mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
.field private mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;
.field private mBottomMenuHSVLinearLayoutThird:Landroid/view/ViewGroup;
.field private mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;
.field private mBottomMenuHSVThird:Landroid/widget/HorizontalScrollView;
.field private mButtomChildMenu:Landroid/view/View;
.field private mContainerTop:Landroid/view/View;
.field protected mContext:Landroid/content/Context;
.field protected mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;
.field protected mEditHandler:Landroid/os/Handler;
.field protected mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
.field private mEditPhotoFrameLayout:Landroid/view/ViewGroup;
.field protected mEditProgressLinearLayout:Landroid/view/View;
.field private mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.field private mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
.field private mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
.field private mEffectClickListener:Landroid/view/View$OnClickListener;
.field private mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
.field protected mExecutorService:Ljava/util/concurrent/ExecutorService;
.field private mFirstTopMenu:Landroid/view/View;
.field private mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
.field private mHasInit:Z
.field private mLastStepImageView:Landroid/widget/ImageView;
.field private mMakePhotoView:Landroid/view/View;
.field private mNextStepImageView:Landroid/widget/ImageView;
.field private mOrgText:Landroid/view/View;
.field private mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.field protected mPGEditMenusBeanList:Ljava/util/List;
.field protected mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
.field protected mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
.field protected mPGGLListener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
.field protected mPhotoPath:Ljava/lang/String;
.field private mQuitEditView:Landroid/view/View;
.field private mReplaceEffect:Landroid/view/View;
.field protected mRootView:Landroid/view/View;
.field protected mSavePhotoPath:Ljava/lang/String;
.field private mSavePhotoView:Landroid/view/View;
.field private mSecondTopMenu:Landroid/view/View;
.field private mSecondTopTitle:Landroid/widget/TextView;
.field private mSeekBarLinearLayout:Landroid/view/View;
.field private mTiltShiftSeekBarLinearLayout:Landroid/view/View;
.field private mTopColor:Landroid/view/View;
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/support/v4/app/FragmentTransaction;Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditController$2;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$2;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGGLListener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$3;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;
iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iput-object p4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mDisplayMetrics:Landroid/util/DisplayMetrics;
iput-object p5, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
iput-object p6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
const/4 v0, 0x0
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->canClickMoreEffect:Z
return-void
.end method
.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method static synthetic access$10(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutThird:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic access$11(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/widget/HorizontalScrollView;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVThird:Landroid/widget/HorizontalScrollView;
return-object v0
.end method
.method static synthetic access$12(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mButtomChildMenu:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$13(Lus/pinguo/androidsdk/pgedit/PGEditController;Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
return-void
.end method
.method static synthetic access$14(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mTiltShiftSeekBarLinearLayout:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
return-object v0
.end method
.method static synthetic access$16(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mFirstTopMenu:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$17(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSecondTopMenu:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$18(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSecondTopTitle:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$19(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/widget/HorizontalScrollView;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVFirst:Landroid/widget/HorizontalScrollView;
return-object v0
.end method
.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
return-object v0
.end method
.method static synthetic access$20(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/widget/HorizontalScrollView;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;
return-object v0
.end method
.method static synthetic access$21(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic access$22(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic access$23(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
return-object v0
.end method
.method static synthetic access$24(Lus/pinguo/androidsdk/pgedit/PGEditController;Landroid/graphics/Bitmap;)V
.registers 2
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditController;->showEditPhoto(Landroid/graphics/Bitmap;)V
return-void
.end method
.method static synthetic access$25(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
.registers 1
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->refreshStep()V
return-void
.end method
.method static synthetic access$26(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
.registers 1
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->backLastMenu()V
return-void
.end method
.method static synthetic access$27(Lus/pinguo/androidsdk/pgedit/PGEditController;)Z
.registers 2
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mHasInit:Z
return v0
.end method
.method static synthetic access$28(Lus/pinguo/androidsdk/pgedit/PGEditController;Z)V
.registers 2
iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mHasInit:Z
return-void
.end method
.method static synthetic access$3(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mTopColor:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$4(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mReplaceEffect:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$5(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSeekBarLinearLayout:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$6(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
return-object v0
.end method
.method static synthetic access$7(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
return-object v0
.end method
.method static synthetic access$8(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mOrgText:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$9(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContainerTop:Landroid/view/View;
return-object v0
.end method
.method private backLastMenu()V
.registers 3
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
if-eqz v1, :cond_11
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->keyBack()Z
move-result v0
if-eqz v0, :cond_11
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->finish()V
:cond_11
return-void
.end method
.method private makeEditPhoto()V
.registers 7
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
if-eqz v0, :cond_4b
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->isNeedMakePhoto()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->getEditRendererMethod()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
if-eqz v0, :cond_4b
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditProgressLinearLayout:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->getFirstMenu()Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->getItems()[Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countMakePhotoEffects(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getNowStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getBigPhoto()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getStepJPGPhotoName()Ljava/lang/String;
move-result-object v3
const/16 v4, 0x64
new-instance v5, Lus/pinguo/androidsdk/pgedit/PGEditController$6;
invoke-direct {v5, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$6;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->makeEffect(Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;Ljava/lang/String;ILus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
:goto_4b
:cond_4b
return-void
:cond_4c
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->backLastMenu()V
goto :goto_4b
.end method
.method private quitEdit()V
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->needShowQuitDialog()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;->showQuitDialog()V
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->sendBroadCastForCancel()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;->activityFinish()V
goto :goto_b
.end method
.method private refreshStep()V
.registers 7
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->hasLastStep()Z
move-result v0
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->hasNextStep()Z
move-result v3
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mLastStepImageView:Landroid/widget/ImageView;
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setClickable(Z)V
if-eqz v0, :cond_37
const-string/jumbo v1, "pg_sdk_edit_last"
:goto_16
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mLastStepImageView:Landroid/widget/ImageView;
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-static {v5, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I
move-result v5
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mNextStepImageView:Landroid/widget/ImageView;
invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setClickable(Z)V
if-eqz v3, :cond_3b
const-string/jumbo v2, "pg_sdk_edit_next"
:goto_2b
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mNextStepImageView:Landroid/widget/ImageView;
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-static {v5, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I
move-result v5
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
:cond_37
const-string/jumbo v1, "pg_sdk_edit_last_disable"
goto :goto_16
:cond_3b
const-string/jumbo v2, "pg_sdk_edit_next_disable"
goto :goto_2b
.end method
.method private showEditPhoto(Landroid/graphics/Bitmap;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setEffectBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mDisplayMetrics:Landroid/util/DisplayMetrics;
invoke-static {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->measure(IILandroid/util/DisplayMetrics;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I
move-result v1
sget-object v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I
move-result v2
invoke-virtual {v0, p1, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showBitmap(Landroid/graphics/Bitmap;II)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
invoke-virtual {v0, v3}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setBackgroundColor(I)V
const/4 v0, 0x2
new-array v0, v0, [Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
aput-object v1, v0, v3
const/4 v1, 0x1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
aput-object v2, v0, v1
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->changeEditViewLayout([Landroid/view/View;)V
return-void
.end method
.method protected changePhotoQuality(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditController$9;
invoke-direct {v1, p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditController$9;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V
return-void
.end method
.method public finish()V
.registers 1
return-void
.end method
.method protected initView()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_org_text"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mOrgText:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_gl_surfaceview"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mOrgText:Landroid/view/View;
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->setOrgText(Landroid/view/View;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_imageview"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mDisplayMetrics:Landroid/util/DisplayMetrics;
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mOrgText:Landroid/view/View;
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setOrgText(Landroid/view/View;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_top_color"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mTopColor:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_first_top"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mFirstTopMenu:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_second_top"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSecondTopMenu:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_second_title"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSecondTopTitle:Landroid/widget/TextView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_replace_tv"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mReplaceEffect:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_seek_bar_ll"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSeekBarLinearLayout:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_bottom_menu_hsv_first"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/HorizontalScrollView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVFirst:Landroid/widget/HorizontalScrollView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_bottom_menu_hsv_ll_first"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_bottom_menu_hsv_second"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/HorizontalScrollView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_bottom_menu_hsv_ll_second"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_bottom_menu_hsv_third"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/HorizontalScrollView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVThird:Landroid/widget/HorizontalScrollView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_bottom_menu_hsv_ll_third"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutThird:Landroid/view/ViewGroup;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_photo_fl"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_seek_bar"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_make_photo"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mMakePhotoView:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mMakePhotoView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_back_first"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBackFirstView:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBackFirstView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_progresss_ll"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditProgressLinearLayout:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_last_step"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mLastStepImageView:Landroid/widget/ImageView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mLastStepImageView:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mLastStepImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_next_step"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mNextStepImageView:Landroid/widget/ImageView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mNextStepImageView:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mNextStepImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_save_photo"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoView:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_first_quit"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mQuitEditView:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mQuitEditView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_tilt_shift_seek_bar_ll"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mTiltShiftSeekBarLinearLayout:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_rate_textview"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_container_top"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContainerTop:Landroid/view/View;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mRootView:Landroid/view/View;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_buttom_child_menu"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mButtomChildMenu:Landroid/view/View;
return-void
.end method
.method public keyBack()V
.registers 5
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
if-eqz v1, :cond_c
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->isFinished()Z
move-result v1
if-eqz v1, :cond_10
:cond_c
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->quitEdit()V
:goto_f
:cond_f
return-void
:cond_10
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditProgressLinearLayout:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
if-nez v1, :cond_3b
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->stopRendererAction()Z
move-result v0
if-eqz v0, :cond_f
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditProgressLinearLayout:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v3, "pg_sdk_edit_stop_save"
invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I
move-result v2
const/4 v3, 0x1
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_f
:cond_3b
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->backLastMenu()V
invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countBackFirstForKeyBack()V
goto :goto_f
.end method
.method protected loadEditPhoto()V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mExecutorService:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditController$5;
invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$5;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public needShowQuitDialog()Z
.registers 4
const/4 v1, 0x0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
if-eqz v2, :cond_d
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getNowStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
move-result-object v2
if-nez v2, :cond_e
:goto_d
:cond_d
return v1
:cond_e
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getNowStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
move-result-object v2
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getBigPhoto()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d
const/4 v1, 0x1
goto :goto_d
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lus/pinguo/androidsdk/pgedit/PGEditController; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mMakePhotoView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v1
if-ne v0, v1, :cond_11
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->makeEditPhoto()V
:cond_10
:goto_10
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditController; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_11
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mLastStepImageView:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I
move-result v1
if-ne v0, v1, :cond_2d
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mLastStepImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mExecutorService:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditController$7;
invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$7;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
goto :goto_10
:cond_2d
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mNextStepImageView:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I
move-result v1
if-ne v0, v1, :cond_49
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mNextStepImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mExecutorService:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditController$8;
invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$8;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
goto :goto_10
:cond_49
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v1
if-ne v0, v1, :cond_59
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->savePhoto()V
goto :goto_10
:cond_59
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBackFirstView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v1
if-ne v0, v1, :cond_6c
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->backLastMenu()V
invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countBackFirstForQuit()V
goto :goto_10
:cond_6c
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mQuitEditView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v1
if-ne v0, v1, :cond_10
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->quitEdit()V
invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countBackBottomClick()V
goto :goto_10
.end method
.method public onCreate()V
.registers 5
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditController; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-direct {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->canClickMoreEffect:Z
invoke-virtual {v0, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->register(Landroid/support/v4/app/FragmentTransaction;Landroid/content/Context;Z)V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->initView()V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditStep;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
const-string/jumbo v3, "pgEditCache"
invoke-static {v2, v3}, Lcom/pinguo/camera360/scenetemplate/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditStep;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGGLListener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-direct {v0, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;-><init>(Lus/pinguo/androidsdk/PGGLSurfaceView;Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;Landroid/content/Context;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditController$4;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$4;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mExecutorService:Ljava/util/concurrent/ExecutorService;
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditController; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditController; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->unRegister(Landroid/support/v4/app/FragmentTransaction;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mExecutorService:Ljava/util/concurrent/ExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_2f
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_2f
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getOrgBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getOrgBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_4c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getOrgBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_4c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->destroyAutoHide()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditController; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method  onPause()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditController; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->onPause()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
if-eqz v0, :cond_e
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->onPause()V
:cond_e
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditController; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method  onResume()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditController; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->onResume()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
if-eqz v0, :cond_e
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->onResume()V
:cond_e
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditController; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public savePhoto()V
.registers 9
const/4 v6, 0x0
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getNowStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
move-result-object v7
if-nez v7, :cond_a
:goto_9
return-void
:cond_a
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getNowStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
move-result-object v7
invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getBigPhoto()Ljava/lang/String;
move-result-object v4
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;
invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_3b
move v1, v6
:goto_1d
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditProgressLinearLayout:Landroid/view/View;
invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V
if-eqz v1, :cond_59
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getList()Ljava/util/List;
move-result-object v3
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getPosition()I
move-result v5
const/4 v2, 0x0
:goto_31
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v6
if-lt v2, v6, :cond_3d
invoke-virtual {p0, v4}, Lus/pinguo/androidsdk/pgedit/PGEditController;->changePhotoQuality(Ljava/lang/String;)V
goto :goto_9
:cond_3b
const/4 v1, 0x1
goto :goto_1d
:cond_3d
if-gt v2, v5, :cond_56
invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getEffectProgressBean()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;
move-result-object v0
if-eqz v0, :cond_56
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;->getFirstMenuName()Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
move-result-object v6
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;->getSecondName()[Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countSavePhotoEffects(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;)V
:cond_56
add-int/lit8 v2, v2, 0x1
goto :goto_31
:cond_59
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->savePhotoForNoChanged()V
goto :goto_9
.end method
.method protected savePhotoForNoChanged()V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mExecutorService:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditController$10;
invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditController$10;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method protected savePhotoInThread(Ljava/lang/String;I)V
.registers 19
:try_start_0
move-object/from16 v0, p0
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/lib/image/Exif;->getExifData(Ljava/lang/String;)[B
move-result-object v10
new-instance v12, Lcom/pinguo/lib/image/PGExifInfo;
invoke-direct {v12, v10}, Lcom/pinguo/lib/image/PGExifInfo;-><init>([B)V
const/4 v1, 0x0
invoke-virtual {v12, v1}, Lcom/pinguo/lib/image/PGExifInfo;->setOrientation(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-virtual {v12}, Lcom/pinguo/lib/image/PGExifInfo;->getExifData()[B
move-result-object v2
move-object/from16 v0, p1
invoke-static {v0, v1, v2}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
move-object/from16 v0, p0
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-string/jumbo v5, "image/jpeg"
const/4 v6, 0x0
new-instance v7, Ljava/io/File;
move-object/from16 v0, p0
iget-object v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v8, 0x0
invoke-static/range {v1 .. v8}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;ILjava/io/File;Landroid/location/Location;)Landroid/net/Uri;
move-result-object v15
if-nez v15, :cond_68
new-instance v14, Landroid/content/Intent;
const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
new-instance v13, Ljava/io/File;
move-object/from16 v0, p0
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v11, 0x0
invoke-virtual {v13}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_68
invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v11
invoke-virtual {v14, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-virtual {v1, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
:cond_68
move-object/from16 v0, p0
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
const/4 v2, 0x5
invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:goto_70
:try_end_70
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71
return-void
:catch_71
move-exception v9
invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
move-object/from16 v0, p0
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;
const/4 v2, 0x3
invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_70
.end method
.method protected sendBroadCast(Ljava/lang/String;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.pinguo.camera360.IMAGE_EDIT_RET"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "result"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "output"
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method protected sendBroadCastForCancel()V
.registers 2
const-string/jumbo v0, "cancel"
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->sendBroadCast(Ljava/lang/String;)V
return-void
.end method
.method protected sendBroadCastForSuccess()V
.registers 2
const-string/jumbo v0, "success"
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->sendBroadCast(Ljava/lang/String;)V
return-void
.end method
.method public setSavePhotoPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mSavePhotoPath:Ljava/lang/String;
return-void
.end method
.method protected showFirstForOrg(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setOrgBitmap(Landroid/graphics/Bitmap;)V
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->refreshStep()V
return-void
.end method
.method protected showFirstForShow(Landroid/graphics/Bitmap;)V
.registers 6
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mDisplayMetrics:Landroid/util/DisplayMetrics;
invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->initLayoutParameters(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditController;->showEditPhoto(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->hideForAlpha()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestDecoder;->getEditMenusBeanArray(Landroid/content/Context;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenusBeanList:Ljava/util/List;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenusBeanList:Ljava/util/List;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
invoke-static {v0, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->showButtomFirstMenu(Landroid/view/ViewGroup;Ljava/util/List;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getRootPath()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getSaveFileFolder()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
invoke-static {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditClearCacheService;->startClearCacheService(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
return-void
.end method
.method public showPhotoForStep(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditController;->showEditPhoto(Landroid/graphics/Bitmap;)V
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->refreshStep()V
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v1
if-nez v1, :cond_17
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_17
return-void
.end method
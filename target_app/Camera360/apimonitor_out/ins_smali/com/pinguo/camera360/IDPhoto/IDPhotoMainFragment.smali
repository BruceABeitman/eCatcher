.class public Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "IDPhotoMainFragment.java"
.implements Landroid/view/View$OnClickListener;
.field private static final FACE_DETECT_FAIL_BACK_TIME:I = 0x5dc
.field private static final MSG_BACK_TO_CAMERA:I = 0x0
.field private static final MSG_FINISH_SELF:I = 0x3
.field private static final MSG_GO_TO_MAKE:I = 0x2
.field private static final MSG_SHOW_FACE_DETECT_FAIL:I = 0x1
.field private static final TAG:Ljava/lang/String;
.field private mBackBtn:Landroid/view/View;
.field private mBitmapHeight:I
.field private mBitmapWidth:I
.field private mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
.field private mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
.field private mClothesController:Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
.field private mClothesView:Landroid/view/View;
.field private mCouldMakeIdPhoto:Z
.field private mCutoutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
.field private mEdgeCutController:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.field private mEdgeCutView:Landroid/view/View;
.field private mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
.field private mFaceDetector:Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
.field private mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
.field private mHandler:Landroid/os/Handler;
.field private mIdPhotoMainTop:Landroid/view/View;
.field private mIdPhotoPicUI:Landroid/widget/RelativeLayout;
.field private mIsFinishing:Z
.field private mJpegData:[B
.field private mNextBtn:Landroid/widget/TextView;
.field private mOrgBitmap:Landroid/graphics/Bitmap;
.field private mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
.field private mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
.field private mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.field private mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mRootView:Landroid/view/View;
.field private mScanLineView:Landroid/widget/ImageView;
.field private mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
.field private mSkinView:Landroid/view/View;
.field private mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mIsFinishing:Z
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->cancelFaceDetectUI()V
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)[B
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mJpegData:[B
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBitmapWidth:I
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBitmapHeight:I
return-void
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCutoutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
return-object v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mOrgBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lus/pinguo/androidsdk/PGGLSurfaceView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
return-object v0
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lus/pinguo/androidsdk/pgedit/PGEditSDK;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
return-object v0
.end method
.method static synthetic access$18(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->enterCutout()V
return-void
.end method
.method static synthetic access$19(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCouldMakeIdPhoto:Z
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-object v0
.end method
.method static synthetic access$20(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->hideProgressTrans()V
return-void
.end method
.method static synthetic access$3()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;II)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->initFaceDetectAnimation(II)V
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->showFaceDetectUI()V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetector:Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
return-object v0
.end method
.method private cancelFaceDetectUI()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mScanLineView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mScanLineView:Landroid/widget/ImageView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->hideProgress()V
return-void
.end method
.method private clearLisenter()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinView:Landroid/view/View;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutView:Landroid/view/View;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesView:Landroid/view/View;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mNextBtn:Landroid/widget/TextView;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mNextBtn:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_25
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBackBtn:Landroid/view/View;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBackBtn:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_2e
return-void
.end method
.method private enterCutout()V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutController:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
if-nez v0, :cond_1f
new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mRootView:Landroid/view/View;
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;-><init>(Landroid/app/Activity;Landroid/view/View;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutController:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutController:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCutoutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->setCutOutModel(Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutController:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->setSdk(Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
:cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutController:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
if-nez v0, :cond_54
new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mRootView:Landroid/view/View;
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;-><init>(Landroid/content/Context;Landroid/view/View;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->setPGEditSdk(Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->setCenterImageView(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBitmapWidth:I
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBitmapHeight:I
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->setFaceInfo(Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;II)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->setPGGLSurfaceView(Lus/pinguo/androidsdk/PGGLSurfaceView;)V
:cond_54
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutController:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mOrgBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->setOrgBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutController:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->setSkinController(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->enterChildView()V
return-void
.end method
.method private hideProgress()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->hide()V
:cond_9
return-void
.end method
.method private hideProgressTrans()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->hide()V
:cond_9
return-void
.end method
.method private initFaceDetectAnimation(II)V
.registers 13
const/4 v9, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
if-nez v6, :cond_f9
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v6}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getWidth()I
move-result v6
iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v7}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getHeight()I
move-result v7
invoke-direct {v0, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-direct {v2, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
invoke-static {v2, v0}, Lcom/pinguo/lib/util/MathUtils;->scaleSizeToBound(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v6}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
if-eqz v1, :cond_4d
sget-object v6, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "layoutParams.topMargin ="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "layoutParams.bottomMargin = "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_4d
sget-object v6, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "mCenterImageView.getHeight() ="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v8}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getHeight()I
move-result v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "scaledSize.getHeight() ="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "mIdPhotoMainTop.getHeight() ="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mIdPhotoMainTop:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getHeight()I
move-result v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v6}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getHeight()I
move-result v6
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v7
sub-int/2addr v6, v7
div-int/lit8 v6, v6, 0x2
iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
add-int v5, v6, v7
if-gez v5, :cond_b0
const/4 v5, 0x0
:cond_b0
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v6}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getHeight()I
move-result v6
sub-int/2addr v6, v5
iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
mul-int/lit8 v7, v7, 0x2
add-int v4, v6, v7
sget-object v6, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "yStart = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "yEnd = "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v6, Landroid/view/animation/TranslateAnimation;
int-to-float v7, v5
int-to-float v8, v4
invoke-direct {v6, v9, v9, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V
iput-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
const-wide/16 v7, 0xbb8
invoke-virtual {v6, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
const/4 v7, -0x1
invoke-virtual {v6, v7}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
const/4 v7, 0x1
invoke-virtual {v6, v7}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V
:cond_f9
return-void
.end method
.method private initListener()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mNextBtn:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBackBtn:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method private showFaceDetectUI()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mScanLineView:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mScanLineView:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetectAnimation:Landroid/view/animation/TranslateAnimation;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_11
const v0, 0x7f0801c2
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->showProgress(Ljava/lang/String;)V
return-void
.end method
.method private showProgress(Ljava/lang/String;)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v1, 0x1
new-instance v2, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$4;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$4;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
const/4 v3, 0x0
invoke-static {v0, p1, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;I)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method private showProgressTrans()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialogTransparent(Landroid/content/Context;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mTransDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method public handleKey(Landroid/view/KeyEvent;)Z
.registers 5
const/4 v0, 0x1
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v1
const/4 v2, 0x4
if-ne v1, v2, :cond_22
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->isMain()Z
move-result v1
if-nez v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyBack()V
:goto_19
return v0
:cond_1a
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_19
:cond_22
const/4 v0, 0x0
goto :goto_19
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 8
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->getInstance()Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->getPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->getInstance()Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->getJpegData()[B
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mJpegData:[B
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->getInstance()Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->clearAll()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mJpegData:[B
if-nez v0, :cond_2f
:cond_27
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
:goto_2e
return-void
:cond_2f
sget-object v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "1_start_make_preview"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mJpegData:[B
new-instance v3, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
move v5, v4
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
goto :goto_2e
.end method
.method public onClick(Landroid/view/View;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_e
:cond_d
:goto_d
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mIsFinishing:Z
if-nez v0, :cond_d
invoke-static {}, Lcom/pinguo/lib/util/Util;->isFastDoubleClick()Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinView:Landroid/view/View;
if-ne p1, v0, :cond_5d
const v0, 0x7f0a0302
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEditLayClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
if-nez v0, :cond_53
new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mRootView:Landroid/view/View;
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;-><init>(Landroid/content/Context;Landroid/view/View;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->setPGEditSdk(Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->setCenterImageView(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBitmapWidth:I
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBitmapHeight:I
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->setFaceInfo(Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;II)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->setPGGLSurfaceView(Lus/pinguo/androidsdk/PGGLSurfaceView;)V
:cond_53
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinController:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->enterChildView()V
goto :goto_d
:cond_5d
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutView:Landroid/view/View;
if-ne p1, v0, :cond_9b
const v0, 0x7f0a0303
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEditLayClick(I)V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->checkCutoutDone()Z
move-result v0
if-nez v0, :cond_7b
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageBitmap()Landroid/graphics/Bitmap;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
invoke-static {v0, v2}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->isBgColorCloseToClothes(Landroid/graphics/Bitmap;Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)Z
move-result v0
if-nez v0, :cond_7f
:cond_7b
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->enterCutout()V
goto :goto_d
:cond_7f
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v2, 0x7f080182
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getString(I)Ljava/lang/String;
move-result-object v2
const v3, 0x7f080183
const v4, 0x7f080002
new-instance v5, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$2;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$2;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
move-object v6, v1
invoke-static/range {v0 .. v6}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto/16 :goto_d
:cond_9b
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesView:Landroid/view/View;
if-ne p1, v0, :cond_c5
const v0, 0x7f0a0301
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEditLayClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesController:Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
if-nez v0, :cond_ba
new-instance v0, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mRootView:Landroid/view/View;
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;-><init>(Landroid/content/Context;Landroid/view/View;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesController:Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
:cond_ba
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesController:Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->enterChildView()V
goto/16 :goto_d
:cond_c5
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mNextBtn:Landroid/widget/TextView;
if-ne p1, v0, :cond_f9
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportEditBtnClick()V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->showProgressTrans()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageBitmap()Landroid/graphics/Bitmap;
move-result-object v7
if-eqz v7, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesController:Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
if-eqz v0, :cond_e7
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesController:Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageBitmap()Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;->composeClothes(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v7
:cond_e7
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mJpegData:[B
new-instance v3, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
invoke-virtual {v0, v1, v2, v7, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->save(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
goto/16 :goto_d
:cond_f9
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBackBtn:Landroid/view/View;
if-ne p1, v0, :cond_d
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto/16 :goto_d
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/order/model/IdPassportSort;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/IdPassportSort;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/IdPassportSort;->remoteLoad()V
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->isZhCn()Z
move-result v1
if-eqz v1, :cond_45
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIdPassportOpenState()Z
move-result v1
if-eqz v1, :cond_45
const/4 v1, 0x1
:goto_1f
iput-boolean v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCouldMakeIdPhoto:Z
new-instance v1, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
invoke-direct {v1}, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetector:Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetector:Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->create(Landroid/content/Context;)V
new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$IdPhotoHandler;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$IdPhotoHandler;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
invoke-direct {v1}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCutoutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCutoutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->clearCacheFile()V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_45
const/4 v1, 0x0
goto :goto_1f
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 9
const v1, 0x7f030084
const/4 v2, 0x0
invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a02f2
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mIdPhotoMainTop:Landroid/view/View;
const v1, 0x7f0a030e
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mIdPhotoPicUI:Landroid/widget/RelativeLayout;
const v1, 0x7f0a0302
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mSkinView:Landroid/view/View;
const v1, 0x7f0a0303
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mEdgeCutView:Landroid/view/View;
const v1, 0x7f0a0301
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesView:Landroid/view/View;
const v1, 0x7f0a02f1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mRootView:Landroid/view/View;
const v1, 0x7f0a0310
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
const v1, 0x7f0a02f3
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mNextBtn:Landroid/widget/TextView;
const v1, 0x7f0a02f4
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBackBtn:Landroid/view/View;
const v1, 0x7f0a030f
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lus/pinguo/androidsdk/PGGLSurfaceView;
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
const v1, 0x7f0a0312
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mScanLineView:Landroid/widget/ImageView;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mRootView:Landroid/view/View;
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;-><init>(Landroid/content/Context;Landroid/view/View;)V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesController:Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mClothesController:Lcom/pinguo/camera360/IDPhoto/controller/ClothesController;
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditSDK;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;-><init>(Lus/pinguo/androidsdk/PGGLSurfaceView;Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;Landroid/content/Context;)V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->initListener()V
return-object v0
.end method
.method public onDestroy()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v1, 0x0
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->clearLisenter()V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->getInstance()Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->clearAll()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
:cond_20
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
:cond_31
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetector:Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->destory()V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->onPause()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->isFinish()Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->isMain()Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->onPause()V
:cond_21
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->isFinish()Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->isMain()Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mChildController:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->onResume()V
:cond_21
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onStart()V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onStop()V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
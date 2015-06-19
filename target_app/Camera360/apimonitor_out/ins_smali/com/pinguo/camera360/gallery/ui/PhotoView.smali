.class public Lcom/pinguo/camera360/gallery/ui/PhotoView;
.super Lcom/pinguo/camera360/gallery/ui/GLView;
.source "PhotoView.java"
.field private static final CARD_EFFECT:Z = true
.field private static final DEFAULT_TEXT_SIZE:F = 20.0f
.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2
.field private static final HOLD_DELETE:I = 0x4
.field private static final HOLD_TOUCH_DOWN:I = 0x1
.field private static final ICON_RATIO:I = 0x4
.field public static final INVALID_DATA_VERSION:J = -0x1L
.field public static final INVALID_SIZE:I = -0x1
.field private static final MAX_DISMISS_VELOCITY:I = 0x9c4
.field private static final MOVE_THRESHOLD:I = 0x100
.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2
.field private static final MSG_DELETE_DONE:I = 0x6
.field private static final MSG_SWITCH_FOCUS:I = 0x3
.field private static final OFFSET_EFFECT:Z = true
.field private static final PLACEHOLDER_COLOR:I = -0xddddde
.field public static final SCREEN_NAIL_MAX:I = 0x3
.field private static final SWIPE_ESCAPE_DISTANCE:I = 0x96
.field private static final SWIPE_ESCAPE_VELOCITY:I = 0x1f4
.field private static final SWIPE_THRESHOLD:F = 300.0f
.field private static final TAG:Ljava/lang/String; = "PhotoView"
.field private static TRANSITION_SCALE_FACTOR:F
.field private mAlbumActivity:Lcom/pinguo/camera360/gallery/AlbumActivity;
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;
.field private mCameraRect:Landroid/graphics/Rect;
.field private mCameraRelativeFrame:Landroid/graphics/Rect;
.field private mCancelExtraScalingPending:Z
.field private mCompensation:I
.field private mContext:Landroid/content/Context;
.field private mDataChangedByDeleting:Z
.field private mDisplayRotation:I
.field private mFilmMode:Z
.field private mFullScreenCamera:Z
.field private final mGestureListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;
.field private final mGestureRecognizer:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
.field private mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.field private mHolding:I
.field private mLoadingText:Lcom/pinguo/camera360/gallery/ui/StringTexture;
.field private mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
.field private mNextBound:I
.field private mNoThumbnailText:Lcom/pinguo/camera360/gallery/ui/StringTexture;
.field private final mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
.field private final mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
.field private final mPositionControllerListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
.field private mPrevBound:I
.field private mScalable:Z
.field private mScaleInterpolator:Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;
.field private mSizes:[Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
.field private mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
.field private mTouchBoxDeletable:Z
.field private mTouchBoxIndex:I
.field private mVideoIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
.field private mVideoPlayIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
.field private mVideoPlayIconClick:Lcom/pinguo/camera360/gallery/ui/Texture;
.field private mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
.method static constructor <clinit>()V
.registers 1
const v0, 0x3f3d70a4
sput v0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;)V
.registers 10
const/16 v7, 0xc8
const/4 v6, 0x3
const/4 v5, -0x1
const/high16 v4, 0x41a0
const/4 v3, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;-><init>()V
iput-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mDataChangedByDeleting:Z
new-instance v1, Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;
const/high16 v2, 0x3f00
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;-><init>(F)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mScaleInterpolator:Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;
new-instance v1, Landroid/view/animation/AccelerateInterpolator;
const v2, 0x3f666666
invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;
new-instance v1, Lcom/pinguo/camera360/gallery/util/RangeArray;
const/4 v2, -0x3
invoke-direct {v1, v2, v6}, Lcom/pinguo/camera360/gallery/util/RangeArray;-><init>(II)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
const/4 v1, 0x7
new-array v1, v1, [Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mSizes:[Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iput-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mDisplayRotation:I
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCompensation:I
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1, v3, v3, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;
const v1, 0x7fffffff
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mScalable:Z
new-instance v1, Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-direct {v1, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->addComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mAlbumActivity:Lcom/pinguo/camera360/gallery/AlbumActivity;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getAndroidContext()Landroid/content/Context;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mContext:Landroid/content/Context;
const v2, 0x7f0800a0
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v4, v5}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/pinguo/camera360/gallery/ui/StringTexture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mLoadingText:Lcom/pinguo/camera360/gallery/ui/StringTexture;
const-string/jumbo v1, ""
invoke-static {v1, v4, v5}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/pinguo/camera360/gallery/ui/StringTexture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNoThumbnailText:Lcom/pinguo/camera360/gallery/ui/StringTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v2
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;-><init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mGestureListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mContext:Landroid/content/Context;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mGestureListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mGestureRecognizer:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/PositionController;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mContext:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/PhotoView$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$1;-><init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionControllerListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
const/4 v0, -0x3
:goto_a3
if-le v0, v6, :cond_c3
new-instance v2, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;
move-object v1, p1
check-cast v1, Landroid/content/Context;
const v3, 0x7f020199
invoke-direct {v2, v1, v3}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;
check-cast p1, Landroid/content/Context;
const v2, 0x7f02019a
invoke-direct {v1, p1, v2}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoPlayIconClick:Lcom/pinguo/camera360/gallery/ui/Texture;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
return-void
:cond_c3
if-nez v0, :cond_d2
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
new-instance v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;-><init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/gallery/util/RangeArray;->put(ILjava/lang/Object;)V
:goto_cf
add-int/lit8 v0, v0, 0x1
goto :goto_a3
:cond_d2
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
new-instance v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;
invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/gallery/util/RangeArray;->put(ILjava/lang/Object;)V
goto :goto_cf
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mGestureRecognizer:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
return-object v0
.end method
.method static synthetic access$10(FFF)F
.registers 4
invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->interpolate(FFF)F
move-result v0
return v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getOffsetAlpha(F)F
move-result v0
return v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->drawVideoPlayIcon(Lcom/pinguo/camera360/gallery/ui/GLCanvas;I)V
return-void
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->drawLoadingFailMessage(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
return-void
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPrevBound:I
return v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
return v0
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->drawPlaceHolder(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
return-void
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getPanoramaRotation()I
move-result v0
return v0
.end method
.method static synthetic access$18(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getCameraRotation()I
move-result v0
return v0
.end method
.method static synthetic access$19(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z
return-void
.end method
.method static synthetic access$20(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
return-void
.end method
.method static synthetic access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
return v0
.end method
.method static synthetic access$22(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setFilmMode(Z)V
return-void
.end method
.method static synthetic access$23(Lcom/pinguo/camera360/gallery/ui/PhotoView;II)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchToHitPicture(II)V
return-void
.end method
.method static synthetic access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
return-object v0
.end method
.method static synthetic access$25(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mScalable:Z
return v0
.end method
.method static synthetic access$26(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
return v0
.end method
.method static synthetic access$27(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxDeletable:Z
return v0
.end method
.method static synthetic access$28(Lcom/pinguo/camera360/gallery/ui/PhotoView;FF)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->swipeImages(FF)Z
move-result v0
return v0
.end method
.method static synthetic access$29(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchFocus()V
return-void
.end method
.method static synthetic access$30(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
return-object v0
.end method
.method static synthetic access$31(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
return-void
.end method
.method static synthetic access$32(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/util/RangeArray;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
return-object v0
.end method
.method static synthetic access$33(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxDeletable:Z
return-void
.end method
.method static synthetic access$34(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->snapback()V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
return-object v0
.end method
.method static synthetic access$6(III)I
.registers 4
invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getRotated(III)I
move-result v0
return v0
.end method
.method static synthetic access$7(III)F
.registers 4
invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->calculateMoveOutProgress(III)F
move-result v0
return v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getScrollScale(F)F
move-result v0
return v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getScrollAlpha(F)F
move-result v0
return v0
.end method
.method private static calculateMoveOutProgress(III)F
.registers 7
sub-int v0, p1, p0
if-ge v0, p2, :cond_1d
div-int/lit8 v2, p2, 0x2
div-int/lit8 v3, v0, 0x2
sub-int v1, v2, v3
if-le p0, v1, :cond_15
sub-int v2, p0, v1
neg-int v2, v2
int-to-float v2, v2
sub-int v3, p2, v1
int-to-float v3, v3
div-float/2addr v2, v3
:goto_14
return v2
:cond_15
sub-int v2, p0, v1
int-to-float v2, v2
neg-int v3, v0
sub-int/2addr v3, v1
int-to-float v3, v3
div-float/2addr v2, v3
goto :goto_14
:cond_1d
if-lez p0, :cond_24
neg-int v2, p0
int-to-float v2, v2
int-to-float v3, p2
div-float/2addr v2, v3
goto :goto_14
:cond_24
if-ge p1, p2, :cond_2c
sub-int v2, p2, p1
int-to-float v2, v2
int-to-float v3, p2
div-float/2addr v2, v3
goto :goto_14
:cond_2c
const/4 v2, 0x0
goto :goto_14
.end method
.method private checkFocusSwitching()V
.registers 3
const/4 v1, 0x3
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
if-nez v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->hasMessages(I)Z
move-result v0
if-nez v0, :cond_5
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchPosition()I
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->sendEmptyMessage(I)Z
goto :goto_5
.end method
.method private drawLoadingFailMessage(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNoThumbnailText:Lcom/pinguo/camera360/gallery/ui/StringTexture;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->getWidth()I
move-result v1
neg-int v1, v1
div-int/lit8 v1, v1, 0x2
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->getHeight()I
move-result v2
neg-int v2, v2
div-int/lit8 v2, v2, 0x2
invoke-virtual {v0, p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/StringTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
return-void
.end method
.method private drawPlaceHolder(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
.registers 9
iget v0, p2, Landroid/graphics/Rect;->left:I
int-to-float v1, v0
iget v0, p2, Landroid/graphics/Rect;->top:I
int-to-float v2, v0
invoke-virtual {p2}, Landroid/graphics/Rect;->width()I
move-result v0
int-to-float v3, v0
invoke-virtual {p2}, Landroid/graphics/Rect;->height()I
move-result v0
int-to-float v4, v0
const v5, -0xddddde
move-object v0, p1
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->fillRect(FFFFI)V
return-void
.end method
.method private drawVideoPlayIcon(Lcom/pinguo/camera360/gallery/ui/GLCanvas;I)V
.registers 9
div-int/lit8 v4, p2, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
neg-int v1, v4
div-int/lit8 v2, v1, 0x2
neg-int v1, v4
div-int/lit8 v3, v1, 0x2
move-object v1, p1
move v5, v4
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/Texture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
return-void
.end method
.method private static gapToSide(II)I
.registers 4
const/4 v0, 0x0
sub-int v1, p1, p0
div-int/lit8 v1, v1, 0x2
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method private getCameraRotation()I
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCompensation:I
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mDisplayRotation:I
sub-int/2addr v0, v1
add-int/lit16 v0, v0, 0x168
rem-int/lit16 v0, v0, 0x168
return v0
.end method
.method private getOffsetAlpha(F)F
.registers 5
const/high16 v2, 0x3f80
const/high16 v1, 0x3f00
div-float/2addr p1, v1
const/4 v1, 0x0
cmpl-float v1, p1, v1
if-lez v1, :cond_14
sub-float v0, v2, p1
:goto_c
const v1, 0x3cf5c28f
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v1
return v1
:cond_14
add-float v0, v2, p1
goto :goto_c
.end method
.method private getPanoramaRotation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCompensation:I
return v0
.end method
.method private static getRotated(III)I
.registers 4
rem-int/lit16 v0, p0, 0xb4
if-nez v0, :cond_5
:goto_4
return p1
:cond_5
move p1, p2
goto :goto_4
.end method
.method private getScrollAlpha(F)F
.registers 5
const/high16 v0, 0x3f80
const/4 v1, 0x0
cmpg-float v1, p1, v1
if-gez v1, :cond_12
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v2
sub-float/2addr v0, v2
invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F
move-result v0
:cond_12
return v0
.end method
.method private getScrollScale(F)F
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mScaleInterpolator:Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;->getInterpolation(F)F
move-result v0
const/high16 v2, 0x3f80
sub-float/2addr v2, v0
sget v3, Lcom/pinguo/camera360/gallery/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F
mul-float/2addr v3, v0
add-float v1, v2, v3
return v1
.end method
.method private static interpolate(FFF)F
.registers 4
sub-float v0, p2, p1
mul-float/2addr v0, p0
mul-float/2addr v0, p0
add-float/2addr v0, p1
return v0
.end method
.method private setFilmMode(Z)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
if-ne v0, p1, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setFilmMode(Z)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
if-eqz p1, :cond_29
move v0, v1
:goto_15
invoke-interface {v3, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->setNeedFullImage(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
if-eqz v3, :cond_2b
:goto_1e
invoke-interface {v0, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->setFocusHintDirection(I)V
if-nez p1, :cond_6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->lockOrientation()V
goto :goto_6
:cond_29
move v0, v2
goto :goto_15
:cond_2b
move v2, v1
goto :goto_1e
.end method
.method private setPictureSize(I)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;->getSize()Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, p1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setImageSize(ILcom/pinguo/camera360/gallery/ui/PhotoView$Size;Landroid/graphics/Rect;)V
return-void
.end method
.method private slideToNextPicture()Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
if-gtz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
const-string/jumbo v0, "PhotoView"
const-string/jumbo v1, "  slideToNextPicture:"
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchToNextImage()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->startHorizontalSlide()V
const/4 v0, 0x1
goto :goto_5
.end method
.method private slideToPrevPicture()Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPrevBound:I
if-ltz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
const-string/jumbo v0, "PhotoView"
const-string/jumbo v1, "  slideToPrevPicture:"
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchToPrevImage()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->startHorizontalSlide()V
const/4 v0, 0x1
goto :goto_5
.end method
.method private snapToNeighborImage()Z
.registers 6
const/4 v3, 0x0
iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
if-eqz v4, :cond_6
:goto_5
:cond_5
return v3
:cond_6
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v4, v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getWidth()I
move-result v2
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v4
invoke-static {v4, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->gapToSide(II)I
move-result v4
add-int/lit16 v1, v4, 0x100
iget v4, v0, Landroid/graphics/Rect;->right:I
sub-int v4, v2, v4
if-le v4, v1, :cond_25
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->slideToNextPicture()Z
move-result v3
goto :goto_5
:cond_25
iget v4, v0, Landroid/graphics/Rect;->left:I
if-le v4, v1, :cond_5
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->slideToPrevPicture()Z
move-result v3
goto :goto_5
.end method
.method private snapback()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->snapToNeighborImage()Z
move-result v0
if-nez v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->snapback()V
:cond_b
return-void
.end method
.method private swipeImages(FF)Z
.registers 9
const/4 v3, 0x0
iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
if-eqz v4, :cond_6
:goto_5
:cond_5
return v3
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->isAtMinimalScale()Z
move-result v2
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getImageAtEdges()I
move-result v1
if-nez v2, :cond_26
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v4
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v5
cmpl-float v4, v4, v5
if-lez v4, :cond_26
and-int/lit8 v4, v1, 0x4
if-eqz v4, :cond_5
and-int/lit8 v4, v1, 0x8
if-eqz v4, :cond_5
:cond_26
const/high16 v4, -0x3c6a
cmpg-float v4, p1, v4
if-gez v4, :cond_37
if-nez v2, :cond_32
and-int/lit8 v4, v1, 0x2
if-eqz v4, :cond_37
:cond_32
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->slideToNextPicture()Z
move-result v3
goto :goto_5
:cond_37
const/high16 v4, 0x4396
cmpl-float v4, p1, v4
if-lez v4, :cond_5
if-nez v2, :cond_43
and-int/lit8 v4, v1, 0x1
if-eqz v4, :cond_5
:cond_43
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->slideToPrevPicture()Z
move-result v3
goto :goto_5
.end method
.method private switchFocus()V
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchPosition()I
move-result v0
packed-switch v0, :pswitch_data_16
:pswitch_c
goto :goto_4
:pswitch_d
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchToPrevImage()V
goto :goto_4
:pswitch_11
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchToNextImage()V
goto :goto_4
nop
:pswitch_data_16
.packed-switch -0x1
:pswitch_d
:pswitch_c
:pswitch_11
.end packed-switch
.end method
.method private switchPosition()I
.registers 12
const/4 v8, 0x1
const/4 v9, 0x0
const/4 v7, -0x1
iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v10, v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getWidth()I
move-result v10
div-int/lit8 v0, v10, 0x2
iget v10, v1, Landroid/graphics/Rect;->left:I
if-le v10, v0, :cond_28
iget v10, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPrevBound:I
if-gez v10, :cond_28
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v8, v7}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;
move-result-object v5
iget v8, v1, Landroid/graphics/Rect;->left:I
sub-int v2, v8, v0
iget v8, v5, Landroid/graphics/Rect;->right:I
sub-int v6, v0, v8
if-ge v6, v2, :cond_42
:goto_27
return v7
:cond_28
iget v7, v1, Landroid/graphics/Rect;->right:I
if-ge v7, v0, :cond_42
iget v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
if-lez v7, :cond_42
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v7, v8}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;
move-result-object v3
iget v7, v1, Landroid/graphics/Rect;->right:I
sub-int v2, v0, v7
iget v7, v3, Landroid/graphics/Rect;->left:I
sub-int v4, v7, v0
if-ge v4, v2, :cond_42
move v7, v8
goto :goto_27
:cond_42
move v7, v9
goto :goto_27
.end method
.method private switchToFirstImage()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->moveTo(I)V
return-void
.end method
.method private switchToHitPicture(II)V
.registers 6
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPrevBound:I
if-gez v1, :cond_13
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
const/4 v2, -0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;
move-result-object v0
iget v1, v0, Landroid/graphics/Rect;->right:I
if-lt v1, p1, :cond_13
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->slideToPrevPicture()Z
:cond_12
:goto_12
return-void
:cond_13
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
if-lez v1, :cond_12
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;
move-result-object v0
iget v1, v0, Landroid/graphics/Rect;->left:I
if-gt v1, p1, :cond_12
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->slideToNextPicture()Z
goto :goto_12
.end method
.method private switchToNextImage()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getCurrentIndex()I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->moveTo(I)V
return-void
.end method
.method private switchToPrevImage()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getCurrentIndex()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->moveTo(I)V
return-void
.end method
.method private updateCameraRect()V
.registers 13
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getWidth()I
move-result v6
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getHeight()I
move-result v1
iget v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCompensation:I
rem-int/lit16 v7, v7, 0xb4
if-eqz v7, :cond_11
move v5, v6
move v6, v1
move v1, v5
:cond_11
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;
iget v2, v7, Landroid/graphics/Rect;->left:I
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;
iget v4, v7, Landroid/graphics/Rect;->top:I
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;
iget v3, v7, Landroid/graphics/Rect;->right:I
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;
iget v0, v7, Landroid/graphics/Rect;->bottom:I
iget v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCompensation:I
sparse-switch v7, :sswitch_data_82
:goto_26
const-string/jumbo v7, "PhotoView"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "compensation = "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v9, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCompensation:I
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ", CameraRelativeFrame = "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ", mCameraRect = "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
:sswitch_59
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;
invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_26
:sswitch_5f
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;
sub-int v8, v1, v0
sub-int v9, v1, v4
invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_26
:sswitch_69
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;
sub-int v8, v6, v3
sub-int v9, v1, v0
sub-int v10, v6, v2
sub-int v11, v1, v4
invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_26
:sswitch_77
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;
sub-int v8, v6, v3
sub-int v9, v6, v2
invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_26
nop
:sswitch_data_82
.sparse-switch
0x0 -> :sswitch_59
0x5a -> :sswitch_5f
0xb4 -> :sswitch_69
0x10e -> :sswitch_77
.end sparse-switch
.end method
.method public buildFallbackEffect(Lcom/pinguo/camera360/gallery/ui/GLView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
.registers 20
new-instance v12, Landroid/graphics/Rect;
invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V
move-object/from16 v0, p1
move-object/from16 v1, p0
invoke-virtual {v0, v1, v12}, Lcom/pinguo/camera360/gallery/ui/GLView;->getBoundsOf(Lcom/pinguo/camera360/gallery/ui/GLView;Landroid/graphics/Rect;)Z
move-result v3
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->bounds()Landroid/graphics/Rect;
move-result-object v9
new-instance v8, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
invoke-direct {v8}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;-><init>()V
const/4 v10, -0x3
:goto_1a
const/4 v3, 0x3
if-le v10, v3, :cond_1e
return-object v8
:cond_1e
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-interface {v3, v10}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getMediaItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
move-result-object v11
if-nez v11, :cond_2b
:cond_28
:goto_28
add-int/lit8 v10, v10, 0x1
goto :goto_1a
:cond_2b
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-interface {v3, v10}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getScreenNail(I)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
move-result-object v2
instance-of v3, v2, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
if-eqz v3, :cond_28
move-object v3, v2
check-cast v3, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->isShowingPlaceholder()Z
move-result v3
if-eqz v3, :cond_46
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/MediaItem;->existOnStorage()Z
move-result v3
if-eqz v3, :cond_28
:cond_46
new-instance v13, Landroid/graphics/Rect;
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;
move-result-object v3
invoke-direct {v13, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
invoke-static {v9, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
move-result v3
if-eqz v3, :cond_28
iget v3, v12, Landroid/graphics/Rect;->left:I
iget v4, v12, Landroid/graphics/Rect;->top:I
invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->offset(II)V
invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getWidth()I
move-result v6
invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getHeight()I
move-result v7
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-interface {v3, v10}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getImageRotation(I)I
move-result v14
rem-int/lit16 v3, v14, 0xb4
if-nez v3, :cond_b8
new-instance v15, Lcom/pinguo/camera360/gallery/ui/RawTexture;
const/4 v3, 0x1
invoke-direct {v15, v6, v7, v3}, Lcom/pinguo/camera360/gallery/ui/RawTexture;-><init>(IIZ)V
move-object/from16 v0, p2
invoke-interface {v0, v15}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->beginRenderTarget(Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
int-to-float v3, v6
const/high16 v4, 0x4000
div-float/2addr v3, v4
int-to-float v4, v7
const/high16 v5, 0x4000
div-float/2addr v4, v5
move-object/from16 v0, p2
invoke-interface {v0, v3, v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
:goto_8a
int-to-float v3, v14
const/4 v4, 0x0
const/4 v5, 0x0
const/high16 v16, 0x3f80
move-object/from16 v0, p2
move/from16 v1, v16
invoke-interface {v0, v3, v4, v5, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->rotate(FFFF)V
neg-int v3, v6
int-to-float v3, v3
const/high16 v4, 0x4000
div-float/2addr v3, v4
neg-int v4, v7
int-to-float v4, v4
const/high16 v5, 0x4000
div-float/2addr v4, v5
move-object/from16 v0, p2
invoke-interface {v0, v3, v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
const/4 v4, 0x0
const/4 v5, 0x0
move-object/from16 v3, p2
invoke-interface/range {v2 .. v7}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
invoke-interface/range {p2 .. p2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->endRenderTarget()V
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v3
invoke-virtual {v8, v3, v13, v15}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->addEntry(Lcom/pinguo/camera360/gallery/data/Path;Landroid/graphics/Rect;Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
goto/16 :goto_28
:cond_b8
new-instance v15, Lcom/pinguo/camera360/gallery/ui/RawTexture;
const/4 v3, 0x1
invoke-direct {v15, v7, v6, v3}, Lcom/pinguo/camera360/gallery/ui/RawTexture;-><init>(IIZ)V
move-object/from16 v0, p2
invoke-interface {v0, v15}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->beginRenderTarget(Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
int-to-float v3, v7
const/high16 v4, 0x4000
div-float/2addr v3, v4
int-to-float v4, v6
const/high16 v5, 0x4000
div-float/2addr v4, v5
move-object/from16 v0, p2
invoke-interface {v0, v3, v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
goto :goto_8a
.end method
.method public getFilmMode()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
return v0
.end method
.method public getPhotoRect(I)Landroid/graphics/Rect;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;
move-result-object v0
return-object v0
.end method
.method public notifyDataChange([III)V
.registers 14
const/4 v9, 0x3
const/4 v1, 0x1
const v5, 0x7fffffff
const/4 v4, 0x0
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPrevBound:I
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
if-eq v0, v5, :cond_16
iget v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
iput v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
const/4 v6, 0x0
:goto_13
const/4 v0, 0x7
if-lt v6, v0, :cond_44
:goto_16
:cond_16
const/4 v6, -0x3
:goto_17
if-le v6, v9, :cond_50
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mDataChangedByDeleting:Z
if-eqz v0, :cond_2b
aput v5, p1, v4
iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mDataChangedByDeleting:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
const/4 v2, 0x6
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:cond_2b
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPrevBound:I
if-gez v2, :cond_68
move v2, v1
:goto_32
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
if-lez v3, :cond_6a
move v3, v1
:goto_37
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mSizes:[Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->moveBox([IZZZ[Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;)V
const/4 v6, -0x3
:goto_3e
if-le v6, v9, :cond_6c
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->invalidate()V
return-void
:cond_44
aget v0, p1, v6
if-ne v0, v7, :cond_4d
add-int/lit8 v0, v6, -0x3
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
goto :goto_16
:cond_4d
add-int/lit8 v6, v6, 0x1
goto :goto_13
:cond_50
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;
invoke-interface {v8}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;->reload()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mSizes:[Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
add-int/lit8 v2, v6, 0x3
invoke-interface {v8}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;->getSize()Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
move-result-object v3
aput-object v3, v0, v2
add-int/lit8 v6, v6, 0x1
goto :goto_17
:cond_68
move v2, v4
goto :goto_32
:cond_6a
move v3, v4
goto :goto_37
:cond_6c
invoke-direct {p0, v6}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setPictureSize(I)V
add-int/lit8 v6, v6, 0x1
goto :goto_3e
.end method
.method public notifyImageChange(I)V
.registers 3
if-nez p1, :cond_7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->onCurrentImageUpdated()V
:cond_7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;->reload()V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setPictureSize(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->invalidate()V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 14
const/4 v6, 0x0
sub-int v4, p4, p2
sub-int v2, p5, p3
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-virtual {v5, v6, v6, v4, v2}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->layout(IIII)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v3
invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->getDisplayRotation()I
move-result v1
invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->getCompensation()I
move-result v0
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mDisplayRotation:I
if-ne v5, v1, :cond_1e
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCompensation:I
if-eq v5, v0, :cond_22
:cond_1e
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mDisplayRotation:I
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCompensation:I
:cond_22
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->updateCameraRect()V
const-string/jumbo v5, "PhotoView"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, " setConstrainedFrame:"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V
if-eqz p1, :cond_53
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getWidth()I
move-result v6
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getHeight()I
move-result v7
invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setViewSize(II)V
:cond_53
return-void
.end method
.method protected onTouch(Landroid/view/MotionEvent;)Z
.registers 4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_40
:goto_7
:pswitch_7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mGestureRecognizer:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V
const/4 v0, 0x1
return v0
:pswitch_e
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->invalidate()V
goto :goto_7
:pswitch_16
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->isVideo(I)Z
move-result v0
if-eqz v0, :cond_37
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v0, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
float-to-int v1, v1
invoke-static {v0, v1, p0}, Lcom/pinguo/camera360/gallery/PhotoPage;->isVideoButtonClick(IILcom/pinguo/camera360/gallery/ui/PhotoView;)Z
move-result v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoPlayIconClick:Lcom/pinguo/camera360/gallery/ui/Texture;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->invalidate()V
goto :goto_7
:cond_37
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/Texture;
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->invalidate()V
goto :goto_7
nop
:pswitch_data_40
.packed-switch 0x0
:pswitch_16
:pswitch_e
:pswitch_7
:pswitch_e
:pswitch_e
.end packed-switch
.end method
.method public pause()V
.registers 4
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setListener(Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->skipAnimation()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->freeTextures()V
const/4 v0, -0x3
:goto_11
const/4 v1, 0x3
if-le v0, v1, :cond_15
return-void
:cond_15
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;
invoke-interface {v1, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
add-int/lit8 v0, v0, 0x1
goto :goto_11
.end method
.method protected render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 12
const/4 v6, 0x1
const/4 v7, 0x0
iget-boolean v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
if-nez v8, :cond_34
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/ui/PositionController;->isCenter()Z
move-result v8
if-eqz v8, :cond_34
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/ui/PositionController;->isAtMinimalScale()Z
move-result v8
if-eqz v8, :cond_34
move v0, v6
:goto_17
iget-boolean v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFullScreenCamera:Z
if-eq v0, v8, :cond_22
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFullScreenCamera:Z
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
invoke-interface {v8, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->onFullScreenChanged(Z)V
:cond_22
iget-boolean v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFullScreenCamera:Z
if-eqz v8, :cond_36
const/4 v4, 0x0
:goto_27
move v1, v4
:goto_28
neg-int v6, v4
if-ge v1, v6, :cond_55
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->advanceAnimation()V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->checkFocusSwitching()V
return-void
:cond_34
move v0, v7
goto :goto_17
:cond_36
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getFilmRatio()F
move-result v8
const/4 v9, 0x0
cmpl-float v8, v8, v9
if-nez v8, :cond_4f
move v3, v6
:goto_42
iget v8, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
and-int/lit8 v8, v8, 0x2
if-eqz v8, :cond_51
move v2, v6
:goto_49
if-eqz v3, :cond_53
if-nez v2, :cond_53
const/4 v4, 0x1
goto :goto_27
:cond_4f
move v3, v7
goto :goto_42
:cond_51
move v2, v7
goto :goto_49
:cond_53
const/4 v4, 0x3
goto :goto_27
:cond_55
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;
invoke-interface {v6, p1, v5}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
add-int/lit8 v1, v1, -0x1
goto :goto_28
.end method
.method public resetToFirstPicture()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->moveTo(I)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setFilmMode(Z)V
return-void
.end method
.method public resume()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionControllerListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setListener(Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->prepareTextures()V
return-void
.end method
.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;
invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->updateCameraRect()V
return-void
.end method
.method public setDelete(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mDataChangedByDeleting:Z
return-void
.end method
.method public setModel(Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->setModel(Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;)V
return-void
.end method
.method public setScalable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mScalable:Z
return-void
.end method
.method public setViewListener(Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
return-void
.end method
.method public setzoomScale(F)V
.registers 5
const-string/jumbo v0, "PhotoView"
new-instance v1, Ljava/lang/StringBuilder;
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "---setzoomScale:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " curScale:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getImageScale()F
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
if-nez v0, :cond_46
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getWidth()I
move-result v1
div-int/lit8 v1, v1, 0x2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
invoke-virtual {v0, v1, v2, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setScaledFactor(IIF)V
:cond_46
return-void
.end method
.method public slidePicture()Z
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
if-ltz v0, :cond_e
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchToNextImage()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->startHorizontalSlide()V
:goto_c
const/4 v0, 0x1
return v0
:cond_e
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchToPrevImage()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->startHorizontalSlide()V
goto :goto_c
.end method
.class public Lcom/pinguo/album/views/FullImageView;
.super Lcom/pinguo/album/views/GLBaseView;
.source "FullImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/views/FullImageView$FullPicture;,
        Lcom/pinguo/album/views/FullImageView$Listener;,
        Lcom/pinguo/album/views/FullImageView$Model;,
        Lcom/pinguo/album/views/FullImageView$MyGestureListener;,
        Lcom/pinguo/album/views/FullImageView$MyHandler;,
        Lcom/pinguo/album/views/FullImageView$Picture;,
        Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;,
        Lcom/pinguo/album/views/FullImageView$Size;,
        Lcom/pinguo/album/views/FullImageView$ZInterpolator;
    }
.end annotation


# static fields
.field private static final CARD_EFFECT:Z = true

.field private static final DEFAULT_TEXT_SIZE:F = 16.0f

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final ICON_RATIO:I = 0x6

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final INVALID_SIZE:I = -0x1

.field private static final MAX_DISMISS_VELOCITY:I = 0x9c4

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_ANIMATION_DONE:I = 0x5

.field private static final MSG_DELETE_DONE:I = 0x6

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final MSG_UNDO_BAR_TIMEOUT:I = 0x7

.field private static final OFFSET_EFFECT:Z = true

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field private static final SWIPE_ESCAPE_DISTANCE:I = 0x96

.field private static final SWIPE_ESCAPE_VELOCITY:I = 0x1f4

.field private static final SWIPE_THRESHOLD:F = 300.0f

.field private static final TAG:Ljava/lang/String; = null

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field private static final UNDO_BAR_DELETE_LAST:I = 0x10

.field private static final UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final UNDO_BAR_SHOW:I = 0x1

.field private static final UNDO_BAR_TIMEOUT:I = 0x2

.field private static final UNDO_BAR_TOUCHED:I = 0x4


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/pinguo/album/views/EdgeView;

.field private mFilmMode:Z

.field private mFirst:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/pinguo/album/views/FullImageView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/pinguo/album/views/utils/GestureRecognizer;

.field private mHandler:Lcom/pinguo/album/SynchronizedHandler;

.field private mHolding:I

.field private mListener:Lcom/pinguo/album/views/FullImageView$Listener;

.field private mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;

.field private mModel:Lcom/pinguo/album/views/FullImageView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/pinguo/album/opengles/StringTexture;

.field private final mPictures:Lcom/pinguo/album/utils/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/album/utils/RangeArray",
            "<",
            "Lcom/pinguo/album/views/FullImageView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

.field private mPrevBound:I

.field private mScaleInterpolator:Lcom/pinguo/album/views/FullImageView$ZInterpolator;

.field private mSizes:[Lcom/pinguo/album/views/FullImageView$Size;

.field private mTileView:Lcom/pinguo/album/views/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/pinguo/album/opengles/Texture;

.field private mWantPictureCenterCallbacks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/views/FullImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/views/FullImageView;->TAG:Ljava/lang/String;

    const v0, 0x3f3d70a4

    sput v0, Lcom/pinguo/album/views/FullImageView;->TRANSITION_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/fragment/PGBaseFragment;)V
    .registers 10

    const v7, 0x7fffffff

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/pinguo/album/views/GLBaseView;-><init>()V

    new-instance v2, Lcom/pinguo/album/views/FullImageView$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/pinguo/album/views/FullImageView$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mScaleInterpolator:Lcom/pinguo/album/views/FullImageView$ZInterpolator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance v2, Lcom/pinguo/album/utils/RangeArray;

    const/4 v3, -0x3

    invoke-direct {v2, v3, v6}, Lcom/pinguo/album/utils/RangeArray;-><init>(II)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/pinguo/album/views/FullImageView$Size;

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mSizes:[Lcom/pinguo/album/views/FullImageView$Size;

    iput-boolean v4, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    iput-boolean v4, p0, Lcom/pinguo/album/views/FullImageView;->mWantPictureCenterCallbacks:Z

    iput v4, p0, Lcom/pinguo/album/views/FullImageView;->mDisplayRotation:I

    iput v4, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/album/views/FullImageView;->mFirst:Z

    iput v7, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I

    iput v7, p0, Lcom/pinguo/album/views/FullImageView;->mUndoIndexHint:I

    new-instance v2, Lcom/pinguo/album/views/TileImageView;

    invoke-direct {v2, p1}, Lcom/pinguo/album/views/TileImageView;-><init>(Lcom/pinguo/album/PGAlbumContext;)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;

    invoke-virtual {p0, v2}, Lcom/pinguo/album/views/FullImageView;->addComponent(Lcom/pinguo/album/views/GLBaseView;)V

    invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/views/FullImageView;->mPlaceholderColor:I

    new-instance v2, Lcom/pinguo/album/views/EdgeView;

    iget-object v3, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/pinguo/album/views/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;

    invoke-virtual {p0, v2}, Lcom/pinguo/album/views/FullImageView;->addComponent(Lcom/pinguo/album/views/GLBaseView;)V

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4180

    invoke-static {v2, v3}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v5}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mNoThumbnailText:Lcom/pinguo/album/opengles/StringTexture;

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v5}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;

    new-instance v2, Lcom/pinguo/album/views/FullImageView$MyHandler;

    invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getGLController()Lcom/pinguo/album/views/GLController;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/pinguo/album/views/FullImageView$MyHandler;-><init>(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/views/GLController;)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    new-instance v2, Lcom/pinguo/album/views/FullImageView$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;-><init>(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/views/FullImageView$MyGestureListener;)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mGestureListener:Lcom/pinguo/album/views/FullImageView$MyGestureListener;

    new-instance v2, Lcom/pinguo/album/views/utils/GestureRecognizer;

    iget-object v3, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/pinguo/album/views/FullImageView;->mGestureListener:Lcom/pinguo/album/views/FullImageView$MyGestureListener;

    invoke-direct {v2, v3, v4}, Lcom/pinguo/album/views/utils/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mGestureRecognizer:Lcom/pinguo/album/views/utils/GestureRecognizer;

    new-instance v2, Lcom/pinguo/album/views/layout/FullImageLayout;

    iget-object v3, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/pinguo/album/views/FullImageView$1;

    invoke-direct {v4, p0}, Lcom/pinguo/album/views/FullImageView$1;-><init>(Lcom/pinguo/album/views/FullImageView;)V

    invoke-direct {v2, v3, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;-><init>(Landroid/content/Context;Lcom/pinguo/album/views/layout/FullImageLayout$Listener;)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    new-instance v2, Lcom/pinguo/album/opengles/ResourceTexture;

    iget-object v3, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    const v4, 0x7f02000d

    invoke-direct {v2, v3, v4}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mVideoPlayIcon:Lcom/pinguo/album/opengles/Texture;

    const/4 v1, -0x3

    :goto_d4
    if-le v1, v6, :cond_d7

    return-void

    :cond_d7
    if-nez v1, :cond_e6

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    new-instance v3, Lcom/pinguo/album/views/FullImageView$FullPicture;

    invoke-direct {v3, p0}, Lcom/pinguo/album/views/FullImageView$FullPicture;-><init>(Lcom/pinguo/album/views/FullImageView;)V

    invoke-virtual {v2, v1, v3}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V

    :goto_e3
    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    :cond_e6
    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    new-instance v3, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;

    invoke-direct {v3, p0, v1}, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;-><init>(Lcom/pinguo/album/views/FullImageView;I)V

    invoke-virtual {v2, v1, v3}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_e3
.end method

.method static synthetic access$0(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/utils/GestureRecognizer;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mGestureRecognizer:Lcom/pinguo/album/views/utils/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/album/views/FullImageView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/FullImageView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/album/views/FullImageView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mHolding:I

    return v0
.end method

.method static synthetic access$12(Lcom/pinguo/album/views/FullImageView;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/views/FullImageView;->mHolding:I

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/album/views/FullImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->snapback()V

    return-void
.end method

.method static synthetic access$14(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/TileImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pinguo/album/views/FullImageView;)I
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$16(Lcom/pinguo/album/views/FullImageView;)I
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$17(III)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/pinguo/album/views/FullImageView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/pinguo/album/views/FullImageView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mWantPictureCenterCallbacks:Z

    return v0
.end method

.method static synthetic access$19(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/opengles/StringTexture;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/album/views/FullImageView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/album/views/FullImageView;->mCancelExtraScalingPending:Z

    return-void
.end method

.method static synthetic access$20(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/utils/RangeArray;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    return-object v0
.end method

.method static synthetic access$21(III)F
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/pinguo/album/views/FullImageView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/pinguo/album/views/FullImageView;F)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/FullImageView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$23(Lcom/pinguo/album/views/FullImageView;F)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/FullImageView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$24(FFF)F
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/pinguo/album/views/FullImageView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$25(Lcom/pinguo/album/views/FullImageView;F)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/FullImageView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$26(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/opengles/GLESCanvas;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/album/views/FullImageView;->drawVideoPlayIcon(Lcom/pinguo/album/opengles/GLESCanvas;I)V

    return-void
.end method

.method static synthetic access$27(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/FullImageView;->drawLoadingFailMessage(Lcom/pinguo/album/opengles/GLESCanvas;)V

    return-void
.end method

.method static synthetic access$28(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/album/views/FullImageView;->drawPlaceHolder(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$29(Lcom/pinguo/album/views/FullImageView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/album/views/FullImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->switchFocus()V

    return-void
.end method

.method static synthetic access$30(Lcom/pinguo/album/views/FullImageView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/album/views/FullImageView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$31(Lcom/pinguo/album/views/FullImageView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$32(Lcom/pinguo/album/views/FullImageView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$33(Lcom/pinguo/album/views/FullImageView;FF)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/album/views/FullImageView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$34(Lcom/pinguo/album/views/FullImageView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$35(Lcom/pinguo/album/views/FullImageView;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I

    return-void
.end method

.method static synthetic access$36(Lcom/pinguo/album/views/FullImageView;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/views/FullImageView;->mUndoIndexHint:I

    return-void
.end method

.method static synthetic access$37(Lcom/pinguo/album/views/FullImageView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$38(Lcom/pinguo/album/views/FullImageView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxDeletable:Z

    return-void
.end method

.method static synthetic access$39(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/EdgeView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/album/views/FullImageView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/FullImageView;->captureAnimationDone(I)V

    return-void
.end method

.method static synthetic access$40(Lcom/pinguo/album/views/FullImageView;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->snapToNeighborImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Listener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/album/views/FullImageView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mNextBound:I

    return v0
.end method

.method static synthetic access$8(Lcom/pinguo/album/views/FullImageView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    return-object v0
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

.method private captureAnimationDone(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/pinguo/album/views/FullImageView;->mHolding:I

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->snapback()V

    return-void
.end method

.method private checkFocusSwitching()V
    .registers 3

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_5
.end method

.method private drawLoadingFailMessage(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mNoThumbnailText:Lcom/pinguo/album/opengles/StringTexture;

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/StringTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/pinguo/album/opengles/StringTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V

    return-void
.end method

.method private drawPlaceHolder(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V
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

    iget v5, p0, Lcom/pinguo/album/views/FullImageView;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLESCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method private drawVideoPlayIcon(Lcom/pinguo/album/opengles/GLESCanvas;I)V
    .registers 9

    div-int/lit8 v4, p2, 0x6

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mVideoPlayIcon:Lcom/pinguo/album/opengles/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/album/opengles/Texture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V

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

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    iget v1, p0, Lcom/pinguo/album/views/FullImageView;->mDisplayRotation:I

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

    invoke-static {v0, v1, v2}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F

    move-result v1

    return v1

    :cond_14
    add-float v0, v2, p1

    goto :goto_c
.end method

.method private getPanoramaRotation()I
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_2d

    iget v5, p0, Lcom/pinguo/album/views/FullImageView;->mDisplayRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_1c

    iget v5, p0, Lcom/pinguo/album/views/FullImageView;->mDisplayRotation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_2d

    :cond_1c
    move v1, v3

    :goto_1d
    iget v5, p0, Lcom/pinguo/album/views/FullImageView;->mDisplayRotation:I

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_2f

    move v0, v3

    :goto_24
    if-eq v0, v1, :cond_31

    iget v3, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    :goto_2c
    return v3

    :cond_2d
    move v1, v4

    goto :goto_1d

    :cond_2f
    move v0, v4

    goto :goto_24

    :cond_31
    iget v3, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    goto :goto_2c
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

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

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

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mScaleInterpolator:Lcom/pinguo/album/views/FullImageView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pinguo/album/views/FullImageView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    sget v3, Lcom/pinguo/album/views/FullImageView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    return v1
.end method

.method private hideUndoBar()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;

    invoke-interface {v0}, Lcom/pinguo/album/views/FullImageView$Listener;->onCommitDeleteImage()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/views/FullImageView;->mUndoBarState:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/pinguo/album/views/FullImageView;->mUndoIndexHint:I

    return-void
.end method

.method private static interpolate(FFF)F
    .registers 4

    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private setPictureSize(I)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    invoke-virtual {v1, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/views/FullImageView$Picture;

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-interface {v0}, Lcom/pinguo/album/views/FullImageView$Picture;->getSize()Lcom/pinguo/album/views/FullImageView$Size;

    move-result-object v3

    if-nez p1, :cond_1c

    invoke-interface {v0}, Lcom/pinguo/album/views/FullImageView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRect:Landroid/graphics/Rect;

    :goto_18
    invoke-virtual {v2, p1, v3, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->setImageSize(ILcom/pinguo/album/views/FullImageView$Size;Landroid/graphics/Rect;)V

    return-void

    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private showUndoBar(Z)V
    .registers 6

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/pinguo/album/SynchronizedHandler;->removeMessages(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/album/views/FullImageView;->mUndoBarState:I

    if-eqz p1, :cond_11

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/pinguo/album/views/FullImageView;->mUndoBarState:I

    :cond_11
    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/pinguo/album/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private slideToNextPicture()Z
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mNextBound:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->switchToNextImage()V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->startHorizontalSlide()V

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private slideToPrevPicture()Z
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mPrevBound:I

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->switchToPrevImage()V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->startHorizontalSlide()V

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private snapToNeighborImage()Z
    .registers 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v5, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v3}, Lcom/pinguo/album/views/FullImageView;->gapToSide(II)I

    move-result v5

    add-int v2, v0, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    if-le v5, v2, :cond_22

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->slideToNextPicture()Z

    move-result v4

    :cond_21
    :goto_21
    return v4

    :cond_22
    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v5, v2, :cond_21

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_21
.end method

.method private snapback()V
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_11
    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapback()V

    goto :goto_6
.end method

.method private swipeImages(FF)Z
    .registers 9

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    if-eqz v4, :cond_6

    :cond_5
    :goto_5
    return v3

    :cond_6
    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->isAtMinimalScale()Z

    move-result v2

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getImageAtEdges()I

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
    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->slideToNextPicture()Z

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
    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_5
.end method

.method private switchFocus()V
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mHolding:I

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    :pswitch_c
    goto :goto_4

    :pswitch_d
    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->switchToPrevImage()V

    goto :goto_4

    :pswitch_11
    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->switchToNextImage()V

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

    iget-object v10, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v10, v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_28

    iget v10, p0, Lcom/pinguo/album/views/FullImageView;->mPrevBound:I

    if-gez v10, :cond_28

    iget-object v8, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v8, v7}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;

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

    iget v7, p0, Lcom/pinguo/album/views/FullImageView;->mNextBound:I

    if-lez v7, :cond_42

    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v7, v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;

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

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->moveTo(I)V

    return-void
.end method

.method private switchToHitPicture(II)V
    .registers 6

    iget v1, p0, Lcom/pinguo/album/views/FullImageView;->mPrevBound:I

    if-gez v1, :cond_13

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_13

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->slideToPrevPicture()Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget v1, p0, Lcom/pinguo/album/views/FullImageView;->mNextBound:I

    if-lez v1, :cond_12

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, p1, :cond_12

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->slideToNextPicture()Z

    goto :goto_12
.end method

.method private switchToNextImage()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    invoke-interface {v1}, Lcom/pinguo/album/views/FullImageView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->moveTo(I)V

    return-void
.end method

.method private switchToPrevImage()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    invoke-interface {v1}, Lcom/pinguo/album/views/FullImageView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->moveTo(I)V

    return-void
.end method

.method private updateCameraRect()V
    .registers 13

    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->getHeight()I

    move-result v1

    iget v7, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_11

    move v5, v6

    move v6, v1

    move v1, v5

    :cond_11
    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    sparse-switch v7, :sswitch_data_80

    :goto_26
    sget-object v7, Lcom/pinguo/album/views/FullImageView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "compensation = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/album/common/PGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_58
    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26

    :sswitch_5e
    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26

    :sswitch_68
    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26

    :sswitch_76
    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_58
        0x5a -> :sswitch_5e
        0xb4 -> :sswitch_68
        0x10e -> :sswitch_76
    .end sparse-switch
.end method


# virtual methods
.method public getFilmMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    return v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isDeleting()Z
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mHolding:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->hasDeletingBox()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public notifyDataChange([III)V
    .registers 16

    iput p2, p0, Lcom/pinguo/album/views/FullImageView;->mPrevBound:I

    iput p3, p0, Lcom/pinguo/album/views/FullImageView;->mNextBound:I

    iget v0, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_16

    iget v8, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I

    const/4 v6, 0x0

    :goto_13
    const/4 v0, 0x7

    if-lt v6, v0, :cond_5f

    :cond_16
    :goto_16
    const/4 v6, -0x3

    :goto_17
    const/4 v0, 0x3

    if-le v6, v0, :cond_6b

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->hasDeletingBox()Z

    move-result v11

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    iget v1, p0, Lcom/pinguo/album/views/FullImageView;->mPrevBound:I

    if-gez v1, :cond_83

    const/4 v2, 0x1

    :goto_27
    iget v1, p0, Lcom/pinguo/album/views/FullImageView;->mNextBound:I

    if-lez v1, :cond_85

    const/4 v3, 0x1

    :goto_2c
    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/pinguo/album/views/FullImageView$Model;->isCamera(I)Z

    move-result v4

    iget-object v5, p0, Lcom/pinguo/album/views/FullImageView;->mSizes:[Lcom/pinguo/album/views/FullImageView$Size;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->moveBox([IZZZ[Lcom/pinguo/album/views/FullImageView$Size;)V

    const/4 v6, -0x3

    :goto_3a
    const/4 v0, 0x3

    if-le v6, v0, :cond_87

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->hasDeletingBox()Z

    move-result v7

    if-eqz v11, :cond_5b

    if-nez v7, :cond_5b

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v9, v1, v2}, Lcom/pinguo/album/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5b
    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->invalidate()V

    return-void

    :cond_5f
    aget v0, p1, v6

    if-ne v0, v8, :cond_68

    add-int/lit8 v0, v6, -0x3

    iput v0, p0, Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I

    goto :goto_16

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_6b
    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    invoke-virtual {v0, v6}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pinguo/album/views/FullImageView$Picture;

    invoke-interface {v10}, Lcom/pinguo/album/views/FullImageView$Picture;->reload()V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mSizes:[Lcom/pinguo/album/views/FullImageView$Size;

    add-int/lit8 v1, v6, 0x3

    invoke-interface {v10}, Lcom/pinguo/album/views/FullImageView$Picture;->getSize()Lcom/pinguo/album/views/FullImageView$Size;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_83
    const/4 v2, 0x0

    goto :goto_27

    :cond_85
    const/4 v3, 0x0

    goto :goto_2c

    :cond_87
    invoke-direct {p0, v6}, Lcom/pinguo/album/views/FullImageView;->setPictureSize(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a
.end method

.method public notifyImageChange(I)V
    .registers 3

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;

    invoke-interface {v0}, Lcom/pinguo/album/views/FullImageView$Listener;->onCurrentImageUpdated()V

    :cond_7
    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/views/FullImageView$Picture;

    invoke-interface {v0}, Lcom/pinguo/album/views/FullImageView$Picture;->reload()V

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/FullImageView;->setPictureSize(I)V

    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    const/4 v8, 0x0

    sub-int v6, p4, p2

    sub-int v2, p5, p3

    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;

    invoke-virtual {v7, v8, v8, v6, v2}, Lcom/pinguo/album/views/TileImageView;->layout(IIII)V

    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;

    invoke-virtual {v7, v8, v8, v6, v2}, Lcom/pinguo/album/views/EdgeView;->layout(IIII)V

    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->getGLController()Lcom/pinguo/album/views/GLController;

    move-result-object v5

    invoke-interface {v5}, Lcom/pinguo/album/views/GLController;->getDisplayRotation()I

    move-result v1

    invoke-interface {v5}, Lcom/pinguo/album/views/GLController;->getCompensation()I

    move-result v0

    iget v7, p0, Lcom/pinguo/album/views/FullImageView;->mDisplayRotation:I

    if-ne v7, v1, :cond_23

    iget v7, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    if-eq v7, v0, :cond_2b

    :cond_23
    iput v1, p0, Lcom/pinguo/album/views/FullImageView;->mDisplayRotation:I

    iput v0, p0, Lcom/pinguo/album/views/FullImageView;->mCompensation:I

    const/4 v3, -0x3

    :goto_28
    const/4 v7, 0x3

    if-le v3, v7, :cond_45

    :cond_2b
    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->updateCameraRect()V

    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    iget-object v8, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->setConstrainedFrame(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_44

    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->setViewSize(II)V

    :cond_44
    return-void

    :cond_45
    iget-object v7, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    invoke-virtual {v7, v3}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/album/views/FullImageView$Picture;

    invoke-interface {v4}, Lcom/pinguo/album/views/FullImageView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v4}, Lcom/pinguo/album/views/FullImageView$Picture;->forceSize()V

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_28
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mGestureRecognizer:Lcom/pinguo/album/views/utils/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/utils/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->skipAnimation()V

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/TileImageView;->freeTextures()V

    const/4 v0, -0x3

    :goto_b
    const/4 v1, 0x3

    if-le v0, v1, :cond_12

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->hideUndoBar()V

    return-void

    :cond_12
    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    invoke-virtual {v1, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/album/views/FullImageView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pinguo/album/views/FullImageView$Picture;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method protected render(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/pinguo/album/views/FullImageView;->mFirst:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    invoke-virtual {v6, v8}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/album/views/FullImageView$Picture;

    invoke-interface {v6}, Lcom/pinguo/album/views/FullImageView$Picture;->reload()V

    :cond_11
    iget-boolean v6, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    if-nez v6, :cond_65

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    invoke-virtual {v6, v8}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/album/views/FullImageView$Picture;

    invoke-interface {v6}, Lcom/pinguo/album/views/FullImageView$Picture;->isCamera()Z

    move-result v6

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->isCenter()Z

    move-result v6

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->isAtMinimalScale()Z

    move-result v6

    if-eqz v6, :cond_65

    move v0, v7

    :goto_34
    iget-boolean v6, p0, Lcom/pinguo/album/views/FullImageView;->mFirst:Z

    if-nez v6, :cond_3c

    iget-boolean v6, p0, Lcom/pinguo/album/views/FullImageView;->mFullScreenCamera:Z

    if-eq v0, v6, :cond_4e

    :cond_3c
    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mFullScreenCamera:Z

    iput-boolean v8, p0, Lcom/pinguo/album/views/FullImageView;->mFirst:Z

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;

    invoke-interface {v6, v0}, Lcom/pinguo/album/views/FullImageView$Listener;->onFullScreenChanged(Z)V

    if-eqz v0, :cond_4e

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Lcom/pinguo/album/SynchronizedHandler;->sendEmptyMessage(I)Z

    :cond_4e
    iget-boolean v6, p0, Lcom/pinguo/album/views/FullImageView;->mFullScreenCamera:Z

    if-eqz v6, :cond_67

    const/4 v4, 0x0

    :goto_53
    move v1, v4

    :goto_54
    neg-int v6, v4

    if-ge v1, v6, :cond_86

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;

    invoke-virtual {p0, p1, v6}, Lcom/pinguo/album/views/FullImageView;->renderChild(Lcom/pinguo/album/opengles/GLESCanvas;Lcom/pinguo/album/views/GLBaseView;)V

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->advanceAnimation()V

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->checkFocusSwitching()V

    return-void

    :cond_65
    move v0, v8

    goto :goto_34

    :cond_67
    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->getFilmRatio()F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-nez v6, :cond_80

    move v3, v7

    :goto_73
    iget v6, p0, Lcom/pinguo/album/views/FullImageView;->mHolding:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_82

    move v2, v7

    :goto_7a
    if-eqz v3, :cond_84

    if-nez v2, :cond_84

    const/4 v4, 0x1

    goto :goto_53

    :cond_80
    move v3, v8

    goto :goto_73

    :cond_82
    move v2, v8

    goto :goto_7a

    :cond_84
    const/4 v4, 0x3

    goto :goto_53

    :cond_86
    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v6, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;

    invoke-virtual {v6, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/album/views/FullImageView$Picture;

    invoke-interface {v6, p1, v5}, Lcom/pinguo/album/views/FullImageView$Picture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_54
.end method

.method public resetToFirstPicture()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->moveTo(I)V

    invoke-virtual {p0, v1}, Lcom/pinguo/album/views/FullImageView;->setFilmMode(Z)V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/TileImageView;->prepareTextures()V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->skipToFinalPosition()V

    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView;->updateCameraRect()V

    return-void
.end method

.method public setFilmMode(Z)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    if-ne v0, p1, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-boolean p1, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->setFilmMode(Z)V

    iget-object v3, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    if-eqz p1, :cond_27

    move v0, v1

    :goto_15
    invoke-interface {v3, v0}, Lcom/pinguo/album/views/FullImageView$Model;->setNeedFullImage(Z)V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z

    if-eqz v3, :cond_29

    :goto_1e
    invoke-interface {v0, v2}, Lcom/pinguo/album/views/FullImageView$Model;->setFocusHintDirection(I)V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;

    invoke-interface {v0, p1}, Lcom/pinguo/album/views/FullImageView$Listener;->onFilmModeChanged(Z)V

    goto :goto_6

    :cond_27
    move v0, v2

    goto :goto_15

    :cond_29
    move v2, v1

    goto :goto_1e
.end method

.method public setListener(Lcom/pinguo/album/views/FullImageView$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;

    return-void
.end method

.method public setModel(Lcom/pinguo/album/views/FullImageView$Model;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;

    iget-object v1, p0, Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/TileImageView;->setModel(Lcom/pinguo/album/views/TileImageView$TileSource;)V

    return-void
.end method

.method public setSwipingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mGestureListener:Lcom/pinguo/album/views/FullImageView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->setSwipingEnabled(Z)V

    return-void
.end method

.method public stopScrolling()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->stopScrolling()V

    return-void
.end method

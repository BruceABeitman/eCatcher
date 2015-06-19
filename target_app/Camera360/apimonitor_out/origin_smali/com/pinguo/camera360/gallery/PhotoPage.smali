.class public Lcom/pinguo/camera360/gallery/PhotoPage;
.super Lcom/pinguo/camera360/gallery/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
.implements Lcom/pinguo/camera360/gallery/OrientationManager$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/PhotoPage$Model;,
        Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;
    }
.end annotation


# static fields
.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"

.field public static final KEY_ONLY_PAGE_IN_STACK:Ljava/lang/String; = "only-page-in-stack"

.field public static final KEY_OPEN_ANIMATION_RECT:Ljava/lang/String; = "open-animation-rect"

.field public static final KEY_RETURN_INDEX_HINT:Ljava/lang/String; = "return-index-hint"

.field public static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_LOCK_ORIENTATION:I = 0x2

.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4

.field private static final MSG_UNFREEZE_GLROOT:I = 0x6

.field private static final MSG_UNLOCK_ORIENTATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoPage"

.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0x12c


# instance fields
.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/pinguo/camera360/gallery/data/MediaItem;

.field private mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivate:Z

.field private mMediaSetPath:Lcom/pinguo/camera360/gallery/data/Path;

.field private mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;

.field private mOnlyPageInStack:Z

.field private mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;

.field private mOriginalSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

.field private mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

.field protected mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

.field private mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

.field private final mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

.field private mShowBars:Z

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ActivityState;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/gallery/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/PhotoPage$1;-><init>(Lcom/pinguo/camera360/gallery/PhotoPage;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    iput v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentPhoto:Lcom/pinguo/camera360/gallery/data/MediaItem;

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    new-instance v0, Lcom/pinguo/camera360/gallery/PhotoPage$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/PhotoPage$2;-><init>(Lcom/pinguo/camera360/gallery/PhotoPage;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mIsActivate:Z

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/ui/PhotoView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/PhotoPage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    return v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/gallery/PhotoPage;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/gallery/PhotoPage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOnlyPageInStack:Z

    return v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/gallery/PhotoPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoPage;->onStartNewAlbum()V

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/ui/GLView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/gallery/PhotoPage;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoPage;->hideBars(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/gallery/PhotoPage;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/PhotoPage;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/gallery/PhotoPage;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/gallery/PhotoPage;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mTotalCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/PhotoPage$Model;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/gallery/PhotoPage;Lcom/pinguo/camera360/gallery/data/MediaItem;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoPage;->updateCurrentPhoto(Lcom/pinguo/camera360/gallery/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOriginalSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    return-object v0
.end method

.method private hideBars(Z)V
    .registers 4

    const-string/jumbo v0, "PhotoPage"

    const-string/jumbo v1, "hideBars"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mIsActivate:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setzoomScale(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->setContentPaneBackground([F)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->requestRender()V

    goto :goto_d
.end method

.method public static isVideoButtonClick(IILcom/pinguo/camera360/gallery/ui/PhotoView;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getHeight()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    sub-int v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    if-gt v2, v1, :cond_22

    div-int/lit8 v2, v0, 0x2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    if-gt v2, v0, :cond_22

    const/4 v2, 0x1

    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private onStartNewAlbum()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private preparePhotoFallbackView()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;-><init>(Lcom/pinguo/camera360/gallery/PhotoPage;Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;)V

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    :try_start_f
    invoke-interface {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->addOnGLIdleListener(Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/PhotoPage$PreparePhotoFallback;->get()Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_26

    move-result-object v0

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getTransitionStore()Lcom/pinguo/camera360/gallery/TransitionStore;

    move-result-object v3

    const-string/jumbo v4, "resume_animation"

    invoke-virtual {v3, v4, v0}, Lcom/pinguo/camera360/gallery/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_26
    move-exception v3

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V

    throw v3
.end method

.method private setResult()V
    .registers 4

    const/4 v0, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "return-index-hint"

    iget v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private showBars(Z)V
    .registers 6

    const/4 v3, 0x1

    const-string/jumbo v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showBars mShowBars ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsActivate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mIsActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PhotoPage"

    invoke-static {v0}, Lcom/pinguo/lib/log/GLogger;->printStackTrace(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mIsActivate:Z

    if-nez v0, :cond_35

    :cond_34
    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setzoomScale(F)V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->setContentPaneBackground([F)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->requestRender()V

    const-string/jumbo v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--------------showBars:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private toggleBars()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->hideBars(Z)V

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->showBars(Z)V

    goto :goto_8
.end method

.method private updateCurrentPhoto(Lcom/pinguo/camera360/gallery/data/MediaItem;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentPhoto:Lcom/pinguo/camera360/gallery/data/MediaItem;

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentPhoto:Lcom/pinguo/camera360/gallery/data/MediaItem;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->setCurrentPhotoPath(Lcom/pinguo/camera360/gallery/data/Path;)V

    goto :goto_4
.end method


# virtual methods
.method public lockOrientation()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifySingleDeleted(Lcom/pinguo/camera360/gallery/data/Path;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setDelete(Z)V

    return-void
.end method

.method protected onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOnlyPageInStack:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoPage;->onStartNewAlbum()V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoPage;->setResult()V

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onBackPressed()V

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/PhotoPage;->onBackPressed()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    goto :goto_7

    :pswitch_data_1e
    .packed-switch 0x7f0a013b
        :pswitch_8
    .end packed-switch
.end method

.method public onCommitDeleteImage()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9

    const/4 v5, 0x0

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBigPictureShow()V

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setViewListener(Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;)V

    new-instance v1, Lcom/pinguo/camera360/gallery/PhotoPage$3;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/PhotoPage$3;-><init>(Lcom/pinguo/camera360/gallery/PhotoPage;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-direct {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v3}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->create(Lcom/pinguo/camera360/gallery/RootActivity;Landroid/os/Bundle;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLView;->addComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getOrientationManager()Lcom/pinguo/camera360/gallery/OrientationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/gallery/OrientationManager;->addListener(Lcom/pinguo/camera360/gallery/OrientationManager$Listener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->setOrientationSource(Lcom/pinguo/camera360/gallery/ui/OrientationSource;)V

    const-string/jumbo v1, "only-page-in-stack"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOnlyPageInStack:Z

    new-instance v1, Lcom/pinguo/camera360/gallery/data/Path;

    const-string/jumbo v2, "media-type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "media-path-id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mMediaSetPath:Lcom/pinguo/camera360/gallery/data/Path;

    const-string/jumbo v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PhotoPage mMediaSetPath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mMediaSetPath:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mMediaSetPath:Lcom/pinguo/camera360/gallery/data/Path;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaSet(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOriginalSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    const-string/jumbo v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PhotoPage mOriginalSet = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOriginalSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "index-hint"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I

    new-instance v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOriginalSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    iget v4, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/data/MediaSet;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->setModel(Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->setDataListener(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;)V

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-direct {v1, v2, v5}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Z)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setPhotoDeleteBtnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopTip()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-static {v1}, Lcom/pinguo/share/ShareManager;->reqNationForBeeTalk(Landroid/content/Context;)V

    return-void
.end method

.method public onCurrentImageUpdated()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unfreeze()V

    return-void
.end method

.method public onDeleteImage(Lcom/pinguo/camera360/gallery/data/Path;I)V
    .registers 3

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/OrientationManager;->removeListener(Lcom/pinguo/camera360/gallery/OrientationManager$Listener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->setOrientationSource(Lcom/pinguo/camera360/gallery/ui/OrientationSource;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->destroy()V

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onDestroy()V

    return-void
.end method

.method public onDown()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->onTouchDown()V

    return-void
.end method

.method public onFullScreenChanged(Z)V
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_f
    move v1, v2

    goto :goto_7
.end method

.method public onLongPress()V
    .registers 4

    const-string/jumbo v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLongPress mPhotoView.getFilmMode() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getFilmMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentPhoto:Lcom/pinguo/camera360/gallery/data/MediaItem;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mCurrentPhoto:Lcom/pinguo/camera360/gallery/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->onLongPress(Lcom/pinguo/camera360/gallery/data/MediaItem;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryPicDetailsShow()V

    goto :goto_24
.end method

.method public onOrientationCompensationChanged()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->requestLayoutContentPane()V

    return-void
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->cancelNextRender()V

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mIsActivate:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unfreeze()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/PhotoPage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoPage;->preparePhotoFallbackView()V

    :cond_2d
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->pause()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/PhotoPage$Model;->pause()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->pause()V

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/PhotoPage;->hideBars(Z)V

    return-void
.end method

.method protected onResume()V
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v0, "FUCK"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mIsActivate:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActvityState(Lcom/pinguo/camera360/gallery/ActivityState;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setPhotoBackListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setPhotoSelector(Lcom/pinguo/camera360/gallery/ui/PhotoSelector;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setSingleDeleteNotifyer(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->freeze()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->setContentPane(Lcom/pinguo/camera360/gallery/ui/GLView;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/PhotoPage$Model;->resume()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->resume()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->resume()V

    iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mShowBars:Z

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/PhotoPage;->showBars(Z)V

    return-void
.end method

.method public onScaleBegin()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->hideBars(Z)V

    return-void
.end method

.method public onScaleEnd()V
    .registers 1

    return-void
.end method

.method public onSingleTapConfirmed(II)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mModel:Lcom/pinguo/camera360/gallery/PhotoPage$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/gallery/PhotoPage$Model;->getMediaItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-static {p1, p2, v1}, Lcom/pinguo/camera360/gallery/PhotoPage;->isVideoButtonClick(IILcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoPageControl:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->onVideoButtonBlick()V

    goto :goto_9

    :cond_1e
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoPage;->toggleBars()V

    goto :goto_9
.end method

.method public onUp()V
    .registers 1

    return-void
.end method

.method public unlockOrientation()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

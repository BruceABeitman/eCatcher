.class public Lcom/pinguo/album/views/GLRenderView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRenderView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/pinguo/album/views/GLController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/views/GLRenderView$IdleRunner;
    }
.end annotation


# static fields
.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/animations/CanvasAnim;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/pinguo/album/views/GLBaseView;

.field private mDisplayRotation:I

.field private mFlags:I

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/pinguo/album/views/GLController$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/pinguo/album/views/GLRenderView$IdleRunner;

.field private mInDownState:Z

.field private mOrientationSource:Lcom/pinguo/album/common/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/views/GLRenderView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/album/views/GLRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v5, 0x5

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iput v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    iput-boolean v4, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderRequested:Z

    iput-boolean v4, p0, Lcom/pinguo/album/views/GLRenderView;->mInDownState:Z

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mAnimations:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/pinguo/album/views/GLRenderView$IdleRunner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/pinguo/album/views/GLRenderView$IdleRunner;-><init>(Lcom/pinguo/album/views/GLRenderView;Lcom/pinguo/album/views/GLRenderView$IdleRunner;)V

    iput-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleRunner:Lcom/pinguo/album/views/GLRenderView$IdleRunner;

    new-instance v2, Lcom/pinguo/album/views/GLRenderView$1;

    invoke-direct {v2, p0}, Lcom/pinguo/album/views/GLRenderView$1;-><init>(Lcom/pinguo/album/views/GLRenderView;)V

    iput-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    iget v2, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    sget-boolean v2, Lcom/pinguo/album/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz v2, :cond_6a

    :goto_4b
    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/GLRenderView;->setEGLContextClientVersion(I)V

    sget-boolean v0, Lcom/pinguo/album/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_6c

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/pinguo/album/views/GLRenderView;->setEGLConfigChooser(IIIIII)V

    :goto_5a
    invoke-virtual {p0, p0}, Lcom/pinguo/album/views/GLRenderView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    sget-boolean v0, Lcom/pinguo/album/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_76

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_69
    return-void

    :cond_6a
    const/4 v0, 0x1

    goto :goto_4b

    :cond_6c
    const/4 v2, 0x6

    move-object v0, p0

    move v1, v5

    move v3, v5

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/pinguo/album/views/GLRenderView;->setEGLConfigChooser(IIIIII)V

    goto :goto_5a

    :cond_76
    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_69
.end method

.method static synthetic access$0(Lcom/pinguo/album/views/GLRenderView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/views/GLRenderView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/ArrayDeque;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/album/views/GLRenderView;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/album/views/GLRenderView;)Lcom/pinguo/album/opengles/GLESCanvas;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/album/views/GLRenderView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderRequested:Z

    return v0
.end method

.method private layoutContentPane()V
    .registers 11

    const/4 v9, 0x0

    iget v5, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->getHeight()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mOrientationSource:Lcom/pinguo/album/common/OrientationSource;

    if-eqz v5, :cond_9a

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mOrientationSource:Lcom/pinguo/album/common/OrientationSource;

    invoke-interface {v5}, Lcom/pinguo/album/common/OrientationSource;->getDisplayRotation()I

    move-result v1

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mOrientationSource:Lcom/pinguo/album/common/OrientationSource;

    invoke-interface {v5}, Lcom/pinguo/album/common/OrientationSource;->getCompensation()I

    move-result v0

    :goto_21
    iget v5, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    if-eq v5, v0, :cond_4d

    iput v0, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    iget v5, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_9d

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4d
    :goto_4d
    iput v1, p0, Lcom/pinguo/album/views/GLRenderView;->mDisplayRotation:I

    iget v5, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_58

    move v3, v4

    move v4, v2

    move v2, v3

    :cond_58
    sget-object v5, Lcom/pinguo/album/views/GLRenderView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "layout content pane "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (compensation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v5, :cond_99

    if-eqz v4, :cond_99

    if-eqz v2, :cond_99

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v5, v9, v9, v4, v2}, Lcom/pinguo/album/views/GLBaseView;->layout(IIII)V

    :cond_99
    return-void

    :cond_9a
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_21

    :cond_9d
    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_4d
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    invoke-interface {v4}, Lcom/pinguo/album/opengles/GLESCanvas;->deleteRecycledResources()V

    invoke-static {}, Lcom/pinguo/album/opengles/UploadedTexture;->resetUploadLimit()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderRequested:Z

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mOrientationSource:Lcom/pinguo/album/common/OrientationSource;

    if-eqz v4, :cond_19

    iget v4, p0, Lcom/pinguo/album/views/GLRenderView;->mDisplayRotation:I

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mOrientationSource:Lcom/pinguo/album/common/OrientationSource;

    invoke-interface {v5}, Lcom/pinguo/album/common/OrientationSource;->getDisplayRotation()I

    move-result v5

    if-ne v4, v5, :cond_1f

    :cond_19
    iget v4, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_22

    :cond_1f
    invoke-direct {p0}, Lcom/pinguo/album/views/GLRenderView;->layoutContentPane()V

    :cond_22
    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V

    iget v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    neg-int v4, v4

    invoke-direct {p0, v4}, Lcom/pinguo/album/views/GLRenderView;->rotateCanvas(I)V

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    invoke-virtual {v4, v5}, Lcom/pinguo/album/views/GLBaseView;->render(Lcom/pinguo/album/opengles/GLESCanvas;)V

    :goto_39
    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    invoke-interface {v4}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_51
    if-lt v0, v1, :cond_79

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_58
    invoke-static {}, Lcom/pinguo/album/opengles/UploadedTexture;->uploadLimitReached()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->requestRender()V

    :cond_61
    iget-object v5, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v5

    :try_start_64
    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleRunner:Lcom/pinguo/album/views/GLRenderView$IdleRunner;

    invoke-virtual {v4}, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->enable()V

    :cond_71
    monitor-exit v5
    :try_end_72
    .catchall {:try_start_64 .. :try_end_72} :catchall_87

    return-void

    :cond_73
    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    invoke-interface {v4}, Lcom/pinguo/album/opengles/GLESCanvas;->clearBuffer()V

    goto :goto_39

    :cond_79
    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/album/animations/CanvasAnim;

    invoke-virtual {v4, v2, v3}, Lcom/pinguo/album/animations/CanvasAnim;->setStartTime(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :catchall_87
    move-exception v4

    :try_start_88
    monitor-exit v5
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v4
.end method

.method private rotateCanvas(I)V
    .registers 10

    const/4 v7, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v3, 0x2

    div-int/lit8 v1, v2, 0x2

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-interface {v4, v5, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    int-to-float v5, p1

    const/high16 v6, 0x3f80

    invoke-interface {v4, v5, v7, v7, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->rotate(FFFF)V

    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    goto :goto_3

    :cond_2d
    iget-object v4, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    goto :goto_3
.end method

.method private superRequestRender()V
    .registers 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/pinguo/album/views/GLController$OnGLIdleListener;)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mIdleRunner:Lcom/pinguo/album/views/GLRenderView$IdleRunner;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView$IdleRunner;->enable()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return v1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    if-ne v0, v2, :cond_3d

    :cond_12
    iput-boolean v1, p0, Lcom/pinguo/album/views/GLRenderView;->mInDownState:Z

    :cond_14
    iget v3, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v3}, Lcom/pinguo/album/utils/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_1e
    iget-object v3, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_23
    iget-object v3, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v3, p1}, Lcom/pinguo/album/views/GLBaseView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_30

    move v1, v2

    :cond_30
    if-nez v0, :cond_37

    if-eqz v1, :cond_37

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/album/views/GLRenderView;->mInDownState:Z
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_44

    :cond_37
    iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8

    :cond_3d
    iget-boolean v3, p0, Lcom/pinguo/album/views/GLRenderView;->mInDownState:Z

    if-nez v3, :cond_14

    if-eqz v0, :cond_14

    goto :goto_8

    :catchall_44
    move-exception v2

    iget-object v3, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public freeze()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFreeze:Z

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public getCompensation()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getDisplayRotation()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/GLRenderView;->mDisplayRotation:I

    return v0
.end method

.method public isBegin()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->isBegin()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEnd()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public lockRenderThread()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->update()V

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_8
    iget-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFreeze:Z

    if-nez v0, :cond_15

    :try_start_c
    invoke-direct {p0, p1}, Lcom/pinguo/album/views/GLRenderView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1b

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_8

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->requestLayoutContentPane()V

    :cond_5
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    invoke-interface {v0, p2, p3}, Lcom/pinguo/album/opengles/GLESCanvas;->setSize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/pinguo/album/views/GLRenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_29

    sget-object v1, Lcom/pinguo/album/views/GLRenderView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GLObject has changed from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/album/views/GLRenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object v1, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2e
    iput-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    sget-boolean v1, Lcom/pinguo/album/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz v1, :cond_48

    new-instance v1, Lcom/pinguo/album/opengles/GLES20Canvas;

    invoke-direct {v1}, Lcom/pinguo/album/opengles/GLES20Canvas;-><init>()V

    :goto_39
    iput-object v1, p0, Lcom/pinguo/album/views/GLRenderView;->mCanvas:Lcom/pinguo/album/opengles/GLESCanvas;

    invoke-static {}, Lcom/pinguo/album/opengles/BasicTexture;->invalidateAllTextures()V
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_4e

    iget-object v1, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pinguo/album/views/GLRenderView;->setRenderMode(I)V

    return-void

    :cond_48
    :try_start_48
    new-instance v1, Lcom/pinguo/album/opengles/GLES11Canvas;

    invoke-direct {v1, v0}, Lcom/pinguo/album/opengles/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_4e

    goto :goto_39

    :catchall_4e
    move-exception v1

    iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public registerLaunchedAnimation(Lcom/pinguo/album/animations/CanvasAnim;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLayoutContentPane()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_2a

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    :cond_f
    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_14
    return-void

    :cond_15
    :try_start_15
    iget v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFlags:I

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->requestRender()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_2a

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_14

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderRequested:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderRequested:Z

    sget-boolean v0, Lcom/pinguo/album/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/GLRenderView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_12
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_4
.end method

.method public requestRenderForced()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/views/GLRenderView;->superRequestRender()V

    return-void
.end method

.method public setContentPane(Lcom/pinguo/album/views/GLBaseView;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-ne v2, p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/pinguo/album/views/GLRenderView;->mInDownState:Z

    if-eqz v2, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v2, v8}, Lcom/pinguo/album/views/GLBaseView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v7, p0, Lcom/pinguo/album/views/GLRenderView;->mInDownState:Z

    :cond_24
    iget-object v2, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v2}, Lcom/pinguo/album/views/GLBaseView;->detachFromRoot()V

    invoke-static {}, Lcom/pinguo/album/opengles/BasicTexture;->yieldAllTextures()V

    :cond_2c
    iput-object p1, p0, Lcom/pinguo/album/views/GLRenderView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/pinguo/album/views/GLBaseView;->attachToRoot(Lcom/pinguo/album/views/GLController;)V

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->requestLayoutContentPane()V

    goto :goto_6
.end method

.method public setLightsOutMode(Z)V
    .registers 2

    return-void
.end method

.method public setOrientationSource(Lcom/pinguo/album/common/OrientationSource;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/GLRenderView;->mOrientationSource:Lcom/pinguo/album/common/OrientationSource;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->unfreeze()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->unfreeze()V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLRenderView;->unfreeze()V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public unfreeze()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFreeze:Z

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public unlockRenderThread()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

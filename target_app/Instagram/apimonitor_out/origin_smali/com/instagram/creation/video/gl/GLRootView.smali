.class public Lcom/instagram/creation/video/gl/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/instagram/creation/video/gl/q;


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:Ljavax/microedition/khronos/opengles/GL11;

.field private e:Lcom/instagram/creation/video/gl/c;

.field private f:Lcom/instagram/creation/video/gl/v;

.field private g:Lcom/instagram/creation/video/ui/e;

.field private h:I

.field private i:Landroid/graphics/Matrix;

.field private j:I

.field private k:I

.field private volatile l:Z

.field private final m:Lcom/instagram/creation/video/gl/w;

.field private final n:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/instagram/creation/video/gl/r;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/instagram/creation/video/gl/u;

.field private final p:Ljava/util/concurrent/locks/ReentrantLock;

.field private final q:Ljava/util/concurrent/locks/Condition;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/video/gl/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->b:J

    iput v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->c:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->i:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I

    iput-boolean v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->l:Z

    new-instance v0, Lcom/instagram/creation/video/gl/w;

    invoke-direct {v0}, Lcom/instagram/creation/video/gl/w;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->m:Lcom/instagram/creation/video/gl/w;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->n:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/instagram/creation/video/gl/u;

    invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/gl/u;-><init>(Lcom/instagram/creation/video/gl/GLRootView;B)V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->o:Lcom/instagram/creation/video/gl/u;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->q:Ljava/util/concurrent/locks/Condition;

    iput-boolean v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->t:Z

    new-instance v0, Lcom/instagram/creation/video/gl/s;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/gl/s;-><init>(Lcom/instagram/creation/video/gl/GLRootView;)V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->u:Ljava/lang/Runnable;

    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->m:Lcom/instagram/creation/video/gl/w;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0, p0}, Lcom/instagram/creation/video/gl/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    sget-boolean v0, Lcom/instagram/creation/video/l/a;->a:Z

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_66
    return-void

    :cond_67
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_66
.end method

.method private a(I)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    int-to-float v3, p1

    invoke-interface {v2, v3}, Lcom/instagram/creation/video/gl/c;->b(F)V

    rem-int/lit16 v2, p1, 0xb4

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {v2, v1, v0}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    goto :goto_2

    :cond_2a
    iget-object v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {v2, v0, v1}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/GLRootView;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->b()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/ArrayDeque;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->n:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method private b()V
    .registers 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/video/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_30

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    :cond_f
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_14
    return-void

    :cond_15
    :try_start_15
    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_30

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_14

    :cond_21
    :try_start_21
    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->requestRender()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_30

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_14

    :catchall_30
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic d(Lcom/instagram/creation/video/gl/GLRootView;)Lcom/instagram/creation/video/gl/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    return-object v0
.end method

.method private d()V
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->getHeight()I

    move-result v3

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->g:Lcom/instagram/creation/video/ui/e;

    if-eqz v1, :cond_88

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->g:Lcom/instagram/creation/video/ui/e;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/e;->a()I

    move-result v1

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->g:Lcom/instagram/creation/video/ui/e;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/e;->b()I

    move-result v0

    :goto_1f
    iget v4, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    if-eq v4, v0, :cond_4b

    iput v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->i:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->i:Landroid/graphics/Matrix;

    neg-int v4, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->i:Landroid/graphics/Matrix;

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4b
    :goto_4b
    iput v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->j:I

    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_99

    move v0, v2

    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "layout content pane "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (compensation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    if-eqz v1, :cond_87

    if-eqz v3, :cond_87

    if-eqz v0, :cond_87

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    invoke-virtual {v1, v3, v0}, Lcom/instagram/creation/video/gl/v;->a(II)V

    :cond_87
    return-void

    :cond_88
    move v1, v0

    goto :goto_1f

    :cond_8a
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->i:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_4b

    :cond_99
    move v0, v3

    move v3, v2

    goto :goto_54
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/c;->e()V

    invoke-static {}, Lcom/instagram/creation/video/gl/ac;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->l:Z

    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->k:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->d()V

    :cond_14
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/c;->a(I)V

    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/GLRootView;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/v;->a(Lcom/instagram/creation/video/gl/c;)V

    :cond_2b
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/c;->c()V

    invoke-static {}, Lcom/instagram/creation/video/gl/ac;->o()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->requestRender()V

    :cond_39
    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->n:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_3c
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->o:Lcom/instagram/creation/video/gl/u;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/u;->a()V

    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_4b

    return-void

    :catchall_4b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e(Lcom/instagram/creation/video/gl/GLRootView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->l:Z

    return v0
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->r:Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->q:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->b()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/GLRootView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_12

    if-ne v2, v1, :cond_3d

    :cond_12
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->s:Z

    :cond_14
    iget v3, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/instagram/creation/video/gl/GLRootView;->i:Landroid/graphics/Matrix;

    invoke-static {p1, v3}, Lcom/instagram/creation/video/l/e;->a(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_1e
    iget-object v3, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_23
    iget-object v3, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    invoke-virtual {v3, p1}, Lcom/instagram/creation/video/gl/v;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_30

    move v0, v1

    :cond_30
    if-nez v2, :cond_37

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->s:Z
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_44

    :cond_37
    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8

    :cond_3d
    iget-boolean v3, p0, Lcom/instagram/creation/video/gl/GLRootView;->s:Z

    if-nez v3, :cond_14

    if-eqz v2, :cond_14

    goto :goto_8

    :catchall_44
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected finalize()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->f()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    throw v0
.end method

.method public getCompensation()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->h:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->i:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->j:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->f()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_5
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->r:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->q:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_5

    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->e()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_27

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->t:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->t:Z

    new-instance v0, Lcom/instagram/creation/video/gl/t;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/gl/t;-><init>(Lcom/instagram/creation/video/gl/GLRootView;)V

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/GLRootView;->post(Ljava/lang/Runnable;)Z

    :cond_26
    return-void

    :catchall_27
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->c()V

    :cond_5
    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->f()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gl10: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->d:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v0, p1, :cond_36

    const/4 v0, 0x1

    :goto_2d
    invoke-static {v0}, Lcom/instagram/creation/video/l/m;->a(Z)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    invoke-interface {v0, p2, p3}, Lcom/instagram/creation/video/gl/c;->a(II)V

    return-void

    :cond_36
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->d:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLObject has changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->d:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_21
    iput-object p1, p0, Lcom/instagram/creation/video/gl/GLRootView;->d:Ljavax/microedition/khronos/opengles/GL11;

    new-instance v0, Lcom/instagram/creation/video/gl/d;

    invoke-direct {v0, p1}, Lcom/instagram/creation/video/gl/d;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->e:Lcom/instagram/creation/video/gl/c;

    invoke-static {}, Lcom/instagram/creation/video/gl/a;->l()V
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_37

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/GLRootView;->setRenderMode(I)V

    return-void

    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->l:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->l:Z

    sget-boolean v0, Lcom/instagram/creation/video/l/a;->k:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/GLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_12
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_4
.end method

.method public setContentPane(Lcom/instagram/creation/video/gl/v;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    if-ne v0, p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->s:Z

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/gl/v;->a(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v7, p0, Lcom/instagram/creation/video/gl/GLRootView;->s:Z

    :cond_24
    iget-object v0, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/v;->a()V

    invoke-static {}, Lcom/instagram/creation/video/gl/a;->k()V

    :cond_2c
    iput-object p1, p0, Lcom/instagram/creation/video/gl/GLRootView;->f:Lcom/instagram/creation/video/gl/v;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/instagram/creation/video/gl/v;->a(Lcom/instagram/creation/video/gl/q;)V

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->c()V

    goto :goto_6
.end method

.method public setLightsOutMode(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget-boolean v0, Lcom/instagram/creation/video/l/a;->g:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    sget-boolean v1, Lcom/instagram/creation/video/l/a;->c:Z

    if-eqz v1, :cond_f

    const/16 v0, 0x105

    :cond_f
    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/GLRootView;->setSystemUiVisibility(I)V

    goto :goto_4
.end method

.method public setOrientationSource(Lcom/instagram/creation/video/ui/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/gl/GLRootView;->g:Lcom/instagram/creation/video/ui/e;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->f()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->f()V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/GLRootView;->f()V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

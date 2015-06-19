.class public final Lcom/instagram/creation/video/gl/j;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Z

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:Ljavax/microedition/khronos/egl/EGL10;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:Ljavax/microedition/khronos/egl/EGLConfig;

.field private g:Ljavax/microedition/khronos/egl/EGLContext;

.field private h:Ljavax/microedition/khronos/egl/EGLSurface;

.field private i:Lcom/instagram/creation/video/gl/z;

.field private volatile j:I

.field private volatile k:Z

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:Lcom/instagram/creation/video/gl/p;

.field private o:Lcom/instagram/creation/video/gl/g;

.field private p:Lcom/instagram/creation/video/gl/g;

.field private q:Lcom/instagram/creation/video/gl/j;

.field private r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/Object;

.field private volatile t:Z

.field private final u:Ljava/lang/Object;

.field private volatile v:Z

.field private volatile w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/instagram/creation/video/gl/j;->k:Z

    new-instance v0, Lcom/instagram/creation/video/gl/k;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/gl/k;-><init>(Lcom/instagram/creation/video/gl/j;)V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->o:Lcom/instagram/creation/video/gl/g;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->o:Lcom/instagram/creation/video/gl/g;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->c:Landroid/graphics/SurfaceTexture;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    sget v0, Lcom/instagram/creation/video/gl/o;->a:I

    iput v0, p0, Lcom/instagram/creation/video/gl/j;->j:I

    iput p2, p0, Lcom/instagram/creation/video/gl/j;->m:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/j;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/j;->m:I

    return v0
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/j;I)I
    .registers 2

    iput p1, p0, Lcom/instagram/creation/video/gl/j;->m:I

    return p1
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->q:Lcom/instagram/creation/video/gl/j;

    if-nez v0, :cond_11

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_c
    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->q:Lcom/instagram/creation/video/gl/j;

    iget-object v0, v0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_c

    :array_16
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private a(Lcom/instagram/creation/video/gl/g;)V
    .registers 3

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->o:Lcom/instagram/creation/video/gl/g;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    goto :goto_6
.end method

.method static synthetic a(Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/gl/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/g;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/gl/j;)Lcom/instagram/creation/video/gl/p;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    return-object v0
.end method

.method private h()V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->j()V

    iput-boolean v2, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->t:Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No renderer defined for GL context. Make sure to set it in the controller constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    iget v1, p0, Lcom/instagram/creation/video/gl/j;->m:I

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/p;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->C_()V

    iput-boolean v2, p0, Lcom/instagram/creation/video/gl/j;->x:Z

    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2e
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->k:Z

    if-nez v0, :cond_92

    iget v0, p0, Lcom/instagram/creation/video/gl/j;->j:I

    sget v2, Lcom/instagram/creation/video/gl/o;->b:I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_96

    if-ne v0, v2, :cond_92

    :try_start_38
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_96
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3d} :catch_ef

    :goto_3d
    const/4 v0, 0x0

    :try_start_3e
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->k:Z

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_96

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_44
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->w:Z

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->D_()V
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_99

    :try_start_51
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_99
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_56} :catch_ec

    :goto_56
    :try_start_56
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->d()V

    :cond_5f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->w:Z

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_99

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    if-nez v0, :cond_eb

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->i()V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->g()Z

    move-result v0

    if-nez v0, :cond_eb

    :cond_76
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    monitor-enter v1

    :try_start_79
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_8e
    .catchall {:try_start_79 .. :try_end_8e} :catchall_8f

    goto :goto_7f

    :catchall_8f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_92
    :try_start_92
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_3d

    :catchall_96
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_99
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9c
    :try_start_9c
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_8f

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/p;->a(Lcom/instagram/creation/video/gl/g;)V

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_ac
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->p:Lcom/instagram/creation/video/gl/g;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->o:Lcom/instagram/creation/video/gl/g;

    if-ne v0, v2, :cond_dc

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    if-nez v0, :cond_dc

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_dc

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot swap buffers "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d9
    .catchall {:try_start_ac .. :try_end_d9} :catchall_d9

    :catchall_d9
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_dc
    :try_start_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_d9

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->n()V

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->e()V

    goto/16 :goto_2b

    :cond_eb
    return-void

    :catch_ec
    move-exception v0

    goto/16 :goto_56

    :catch_ef
    move-exception v0

    goto/16 :goto_3d
.end method

.method private i()V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    :cond_1e
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_4d

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglMakeCurrent failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    return-void
.end method

.method private j()V
    .registers 6

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_37

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglGetDisplay failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_63

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglInitialize failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->k()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_75

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/creation/video/gl/j;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->c:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_b3

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_10c

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    :goto_97
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_dc

    :cond_a1
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300b

    if-ne v0, v1, :cond_c3

    const-string v0, "GLRenderContext"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    return-void

    :cond_b3
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->c:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_97

    :cond_c3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createWindowSurface failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_dc
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_b2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglMakeCurrent failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_10c
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private k()Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 8

    const/4 v6, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [I

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {}, Lcom/instagram/creation/video/gl/j;->l()[I

    move-result-object v2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglChooseConfig failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    aget v0, v5, v6

    if-lez v0, :cond_3a

    aget-object v0, v3, v6

    :goto_39
    return-object v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private static l()[I
    .registers 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private m()V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method private n()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL error = 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/j;->f()V

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .registers 4

    iget v0, p0, Lcom/instagram/creation/video/gl/j;->j:I

    if-eq v0, p1, :cond_10

    iget v0, p0, Lcom/instagram/creation/video/gl/j;->j:I

    sget v1, Lcom/instagram/creation/video/gl/o;->b:I

    if-ne v0, v1, :cond_10

    iput p1, p0, Lcom/instagram/creation/video/gl/j;->j:I

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/j;->f()V

    :goto_f
    return-void

    :cond_10
    iput p1, p0, Lcom/instagram/creation/video/gl/j;->j:I

    goto :goto_f
.end method

.method public final a(Landroid/graphics/SurfaceTexture;I)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_e

    :cond_a
    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->c:Landroid/graphics/SurfaceTexture;

    iput p2, p0, Lcom/instagram/creation/video/gl/j;->m:I

    :cond_e
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/i;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/creation/video/gl/m;

    invoke-direct {v1, p0, p1}, Lcom/instagram/creation/video/gl/m;-><init>(Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/gl/i;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/p;)V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set renderer after GL context has been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/z;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->v:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->w:Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/creation/video/gl/l;

    const/16 v2, 0x280

    invoke-direct {v1, p0, v2}, Lcom/instagram/creation/video/gl/l;-><init>(Lcom/instagram/creation/video/gl/j;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->r:Ljava/util/Queue;

    new-instance v1, Lcom/instagram/creation/video/gl/n;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/gl/n;-><init>(Lcom/instagram/creation/video/gl/j;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->b:Z

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_e

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/j;->b()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/j;->f()V

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->k:Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->t:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-nez v0, :cond_f

    :try_start_7
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_3

    :catch_d
    move-exception v0

    goto :goto_3

    :cond_f
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->h()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3e

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->x:Z

    if-eqz v0, :cond_10

    :try_start_b
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->f()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_29

    :cond_10
    :goto_10
    :try_start_10
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/p;->a()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_32

    :goto_15
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_19
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->t:Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_3b

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    if-eqz v0, :cond_28

    :try_start_25
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->m()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_bf

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    const-string v1, "GLRenderContext"

    const-string v2, "Error while finishing controller"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_32
    move-exception v0

    const-string v1, "GLRenderContext"

    const-string v2, "Error while finishing renderer"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_3e
    move-exception v0

    :try_start_3f
    const-string v1, "GLRenderContext"

    const-string v2, "runSafe threw an exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_83

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->x:Z

    if-eqz v0, :cond_53

    :try_start_4e
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/z;->f()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_6e

    :cond_53
    :goto_53
    :try_start_53
    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    invoke-interface {v0}, Lcom/instagram/creation/video/gl/p;->a()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_77

    :goto_58
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_5c
    iput-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->t:Z

    iget-object v0, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_80

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    if-eqz v0, :cond_28

    :try_start_68
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->m()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_28

    :catch_6c
    move-exception v0

    goto :goto_28

    :catch_6e
    move-exception v0

    const-string v1, "GLRenderContext"

    const-string v2, "Error while finishing controller"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_77
    move-exception v0

    const-string v1, "GLRenderContext"

    const-string v2, "Error while finishing renderer"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58

    :catchall_80
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_83
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    if-eqz v1, :cond_91

    iget-boolean v1, p0, Lcom/instagram/creation/video/gl/j;->x:Z

    if-eqz v1, :cond_91

    :try_start_8c
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->i:Lcom/instagram/creation/video/gl/z;

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/z;->f()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_aa

    :cond_91
    :goto_91
    :try_start_91
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->n:Lcom/instagram/creation/video/gl/p;

    invoke-interface {v1}, Lcom/instagram/creation/video/gl/p;->a()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_96} :catch_b3

    :goto_96
    iget-object v1, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_9a
    iput-boolean v2, p0, Lcom/instagram/creation/video/gl/j;->t:Z

    iget-object v2, p0, Lcom/instagram/creation/video/gl/j;->s:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_bc

    iget-boolean v1, p0, Lcom/instagram/creation/video/gl/j;->y:Z

    if-eqz v1, :cond_a9

    :try_start_a6
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/j;->m()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_c2

    :cond_a9
    :goto_a9
    throw v0

    :catch_aa
    move-exception v1

    const-string v2, "GLRenderContext"

    const-string v3, "Error while finishing controller"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_91

    :catch_b3
    move-exception v1

    const-string v2, "GLRenderContext"

    const-string v3, "Error while finishing renderer"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_96

    :catchall_bc
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_bf
    move-exception v0

    goto/16 :goto_28

    :catch_c2
    move-exception v1

    goto :goto_a9
.end method

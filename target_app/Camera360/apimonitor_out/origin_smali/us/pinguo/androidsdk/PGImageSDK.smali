.class public Lus/pinguo/androidsdk/PGImageSDK;
.super Ljava/lang/Object;
.source "PGImageSDK.java"


# static fields
.field public static final SDK_STATUS_CREATE:I = 0x10000000

.field public static final SDK_STATUS_DESTROY:I = 0x10000002

.field public static final SDK_STATUS_DRAW:I = 0x10000001

.field public static final SDK_STATUS_RELOAD:I = 0x10000003


# instance fields
.field private bReload:Z

.field private bRunning:Z

.field private bShaderScript:[B

.field private mContext:Landroid/content/Context;

.field private mEGLPointer:I

.field private mMethod:Lus/pinguo/androidsdk/PGRendererMethod;

.field private final mRenderActionLock:Ljava/lang/Object;

.field private mRendererPointer:I

.field private mThread:Lus/pinguo/androidsdk/PGGLThread;

.field private nSDKStatus:I

.field private strKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[B)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lus/pinguo/androidsdk/PGImageSDK;->bShaderScript:[B

    iput v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    iput v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mEGLPointer:I

    const/high16 v0, 0x1000

    iput v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->nSDKStatus:I

    iput-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bReload:Z

    iput-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    iput-object v2, p0, Lus/pinguo/androidsdk/PGImageSDK;->mThread:Lus/pinguo/androidsdk/PGGLThread;

    iput-object v2, p0, Lus/pinguo/androidsdk/PGImageSDK;->mMethod:Lus/pinguo/androidsdk/PGRendererMethod;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    iput-object p3, p0, Lus/pinguo/androidsdk/PGImageSDK;->bShaderScript:[B

    invoke-direct {p0, p1, p2}, Lus/pinguo/androidsdk/PGImageSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lus/pinguo/androidsdk/PGImageSDK;->strKey:Ljava/lang/String;

    new-instance v0, Lus/pinguo/androidsdk/PGGLThread;

    invoke-direct {v0}, Lus/pinguo/androidsdk/PGGLThread;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mThread:Lus/pinguo/androidsdk/PGGLThread;

    iget-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mThread:Lus/pinguo/androidsdk/PGGLThread;

    invoke-virtual {v0, p0}, Lus/pinguo/androidsdk/PGGLThread;->setImageSDK(Lus/pinguo/androidsdk/PGImageSDK;)V

    return-void
.end method


# virtual methods
.method public create()V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->strKey:Ljava/lang/String;

    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/pinguo/androidsdk/PGImageSDK;->bShaderScript:[B

    invoke-static {v0, v1, v2}, Lus/pinguo/androidsdk/PGNativeMethod;->createAndroidSDK(Ljava/lang/String;Landroid/content/Context;[B)I

    move-result v0

    iput v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    const v0, 0x10000001

    iput v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->nSDKStatus:I

    return-void
.end method

.method public createEGLDisplay()Z
    .registers 2

    invoke-static {}, Lus/pinguo/androidsdk/PGNativeMethod;->createEGLDisplay()I

    move-result v0

    iput v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mEGLPointer:I

    iget v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mEGLPointer:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public destroy()V
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    invoke-static {v0}, Lus/pinguo/androidsdk/PGNativeMethod;->destroyAndroidSDK(I)V

    const/4 v0, 0x0

    iput v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    return-void
.end method

.method public destroySDK()V
    .registers 3

    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    monitor-enter v1

    const v0, 0x10000002

    :try_start_6
    iput v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->nSDKStatus:I

    iget-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getRenderActionLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRenderMethod()Lus/pinguo/androidsdk/PGRendererMethod;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mMethod:Lus/pinguo/androidsdk/PGRendererMethod;

    return-object v0
.end method

.method public getRenderPointer()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    return v0
.end method

.method public getResource()[B
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->bShaderScript:[B

    return-object v0
.end method

.method public getSDKStatus()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->nSDKStatus:I

    return v0
.end method

.method public isDestroy()Z
    .registers 3

    const v0, 0x10000002

    iget v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->nSDKStatus:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isRenderActionBusyRunning()Z
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mThread:Lus/pinguo/androidsdk/PGGLThread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mThread:Lus/pinguo/androidsdk/PGGLThread;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/PGGLThread;->isBusyRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public releaseEGLDisplay()V
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mEGLPointer:I

    if-eqz v0, :cond_9

    iget v0, p0, Lus/pinguo/androidsdk/PGImageSDK;->mEGLPointer:I

    invoke-static {v0}, Lus/pinguo/androidsdk/PGNativeMethod;->destroyEGLDisplay(I)V

    :cond_9
    return-void
.end method

.method public reloadResource([B)Z
    .registers 5

    iget-object v2, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iput-object p1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bShaderScript:[B

    const v1, 0x10000003

    iput v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->nSDKStatus:I

    iget-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mThread:Lus/pinguo/androidsdk/PGGLThread;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGGLThread;->run()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_33

    :try_start_13
    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_33
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_2e

    :goto_18
    const/4 v1, 0x1

    :try_start_19
    iput-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    :cond_1b
    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_33

    :try_start_20
    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_33
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_36

    :goto_25
    const v1, 0x10000001

    :try_start_28
    iput v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->nSDKStatus:I

    iget-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bReload:Z

    monitor-exit v2

    return v1

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_18

    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v1

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_33

    goto :goto_25
.end method

.method public renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V
    .registers 6

    iget-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    if-eqz v1, :cond_b

    if-eqz p1, :cond_a

    iget v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    if-nez v1, :cond_d

    :cond_a
    :goto_a
    return-void

    :cond_b
    if-eqz p1, :cond_a

    :cond_d
    iput-object p1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mMethod:Lus/pinguo/androidsdk/PGRendererMethod;

    iget-object v2, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    iget-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mThread:Lus/pinguo/androidsdk/PGGLThread;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGGLThread;->run()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_31

    :try_start_1b
    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_31
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_34

    :goto_20
    const/4 v1, 0x1

    :try_start_21
    iput-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    :cond_23
    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mMethod:Lus/pinguo/androidsdk/PGRendererMethod;

    iget v3, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    invoke-virtual {v1, v3}, Lus/pinguo/androidsdk/PGRendererMethod;->setRendererPointer(I)V

    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    goto :goto_a

    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_31

    throw v1

    :catch_34
    move-exception v0

    :try_start_35
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_31

    goto :goto_20
.end method

.method public renderActionWithWait(Lus/pinguo/androidsdk/PGRendererMethod;)V
    .registers 6

    iget-object v2, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    if-eqz v1, :cond_f

    if-eqz p1, :cond_d

    iget v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    if-nez v1, :cond_16

    :cond_d
    monitor-exit v2

    :goto_e
    return-void

    :cond_f
    if-nez p1, :cond_16

    monitor-exit v2

    goto :goto_e

    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    :try_start_16
    iput-object p1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mMethod:Lus/pinguo/androidsdk/PGRendererMethod;

    iget-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mThread:Lus/pinguo/androidsdk/PGGLThread;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGGLThread;->run()V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_13

    :try_start_21
    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_13
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_3c

    :goto_26
    const/4 v1, 0x1

    :try_start_27
    iput-boolean v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bRunning:Z

    :cond_29
    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mMethod:Lus/pinguo/androidsdk/PGRendererMethod;

    iget v3, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRendererPointer:I

    invoke-virtual {v1, v3}, Lus/pinguo/androidsdk/PGRendererMethod;->setRendererPointer(I)V

    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_13

    :try_start_35
    iget-object v1, p0, Lus/pinguo/androidsdk/PGImageSDK;->mRenderActionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_13
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3a} :catch_41

    :goto_3a
    :try_start_3a
    monitor-exit v2

    goto :goto_e

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_26

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_13

    goto :goto_3a
.end method

.method public setResourceStatus(Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/PGImageSDK;->bReload:Z

    return-void
.end method

.method public setSDKStatus(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/PGImageSDK;->nSDKStatus:I

    return-void
.end method

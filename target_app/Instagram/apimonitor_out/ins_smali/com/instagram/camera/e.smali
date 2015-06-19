.class public Lcom/instagram/camera/e;
.super Ljava/lang/Object;
.source "CameraHolder.java"
.field private static k:Lcom/instagram/camera/e;
.field protected a:[Landroid/hardware/Camera$CameraInfo;
.field private b:Landroid/hardware/Camera;
.field private c:J
.field private final d:Landroid/os/Handler;
.field private e:I
.field private f:I
.field private g:I
.field private h:I
.field private i:I
.field private j:Landroid/hardware/Camera$Parameters;
.method public constructor <init>()V
.registers 5
const/4 v0, 0x0
const/4 v3, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v1, 0x0
iput-wide v1, p0, Lcom/instagram/camera/e;->c:J
iput v0, p0, Lcom/instagram/camera/e;->e:I
iput v3, p0, Lcom/instagram/camera/e;->g:I
iput v3, p0, Lcom/instagram/camera/e;->h:I
iput v3, p0, Lcom/instagram/camera/e;->i:I
new-instance v1, Landroid/os/HandlerThread;
const-string v2, "CameraHolder"
invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V
new-instance v2, Lcom/instagram/camera/f;
invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v2, p0, v1}, Lcom/instagram/camera/f;-><init>(Lcom/instagram/camera/e;Landroid/os/Looper;)V
iput-object v2, p0, Lcom/instagram/camera/e;->d:Landroid/os/Handler;
invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
move-result v1
iput v1, p0, Lcom/instagram/camera/e;->f:I
iget v1, p0, Lcom/instagram/camera/e;->f:I
new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;
iput-object v1, p0, Lcom/instagram/camera/e;->a:[Landroid/hardware/Camera$CameraInfo;
:goto_32
iget v1, p0, Lcom/instagram/camera/e;->f:I
if-ge v0, v1, :cond_66
iget-object v1, p0, Lcom/instagram/camera/e;->a:[Landroid/hardware/Camera$CameraInfo;
new-instance v2, Landroid/hardware/Camera$CameraInfo;
invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V
aput-object v2, v1, v0
iget-object v1, p0, Lcom/instagram/camera/e;->a:[Landroid/hardware/Camera$CameraInfo;
aget-object v1, v1, v0
invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
iget v1, p0, Lcom/instagram/camera/e;->h:I
if-ne v1, v3, :cond_54
iget-object v1, p0, Lcom/instagram/camera/e;->a:[Landroid/hardware/Camera$CameraInfo;
aget-object v1, v1, v0
iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I
if-nez v1, :cond_54
iput v0, p0, Lcom/instagram/camera/e;->h:I
:cond_54
iget v1, p0, Lcom/instagram/camera/e;->i:I
if-ne v1, v3, :cond_63
iget-object v1, p0, Lcom/instagram/camera/e;->a:[Landroid/hardware/Camera$CameraInfo;
aget-object v1, v1, v0
iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I
const/4 v2, 0x1
if-ne v1, v2, :cond_63
iput v0, p0, Lcom/instagram/camera/e;->i:I
:cond_63
add-int/lit8 v0, v0, 0x1
goto :goto_32
:cond_66
return-void
.end method
.method static synthetic a(Lcom/instagram/camera/e;)I
.registers 2
iget v0, p0, Lcom/instagram/camera/e;->e:I
return v0
.end method
.method public static declared-synchronized a()Lcom/instagram/camera/e;
.registers 3
const-class v1, Lcom/instagram/camera/e;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/camera/e;->k:Lcom/instagram/camera/e;
if-nez v0, :cond_22
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v2, "PC36100"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v2, "HTC Desire S"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_26
:cond_1b
new-instance v0, Lcom/instagram/camera/p;
invoke-direct {v0}, Lcom/instagram/camera/p;-><init>()V
sput-object v0, Lcom/instagram/camera/e;->k:Lcom/instagram/camera/e;
:cond_22
:goto_22
sget-object v0, Lcom/instagram/camera/e;->k:Lcom/instagram/camera/e;
:try_end_24
.catchall {:try_start_3 .. :try_end_24} :catchall_2e
monitor-exit v1
return-object v0
:cond_26
:try_start_26
new-instance v0, Lcom/instagram/camera/e;
invoke-direct {v0}, Lcom/instagram/camera/e;-><init>()V
sput-object v0, Lcom/instagram/camera/e;->k:Lcom/instagram/camera/e;
:try_end_2d
.catchall {:try_start_26 .. :try_end_2d} :catchall_2e
goto :goto_22
:catchall_2e
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic b(Lcom/instagram/camera/e;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/camera/e;->h()V
return-void
.end method
.method private declared-synchronized h()V
.registers 7
const/4 v1, 0x0
const/4 v0, 0x1
monitor-enter p0
:try_start_3
iget v2, p0, Lcom/instagram/camera/e;->e:I
if-nez v2, :cond_28
move v2, v0
:goto_8
invoke-static {v2}, Lcom/instagram/camera/h;->a(Z)V
iget-object v2, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
if-eqz v2, :cond_2a
:goto_f
invoke-static {v0}, Lcom/instagram/camera/h;->a(Z)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/instagram/camera/e;->c:J
cmp-long v2, v0, v2
if-gez v2, :cond_2c
iget-object v2, p0, Lcom/instagram/camera/e;->d:Landroid/os/Handler;
const/4 v3, 0x1
iget-wide v4, p0, Lcom/instagram/camera/e;->c:J
sub-long v0, v4, v0
invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:goto_26
:try_end_26
.catchall {:try_start_3 .. :try_end_26} :catchall_3b
monitor-exit p0
return-void
:cond_28
move v2, v1
goto :goto_8
:cond_2a
move v0, v1
goto :goto_f
:try_start_2c
:cond_2c
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/camera/e;->j:Landroid/hardware/Camera$Parameters;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/camera/e;->g:I
:try_end_3a
.catchall {:try_start_2c .. :try_end_3a} :catchall_3b
goto :goto_26
:catchall_3b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(II)I
.registers 4
iget-object v0, p0, Lcom/instagram/camera/e;->a:[Landroid/hardware/Camera$CameraInfo;
aget-object v0, v0, p1
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
return v0
.end method
.method public final a(I)Z
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/instagram/camera/e;->a:[Landroid/hardware/Camera$CameraInfo;
aget-object v1, v1, p1
iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I
if-ne v1, v0, :cond_a
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/camera/e;->f:I
return v0
.end method
.method public final declared-synchronized b(I)Landroid/hardware/Camera;
.registers 5
const/4 v0, 0x1
monitor-enter p0
:try_start_2
iget v1, p0, Lcom/instagram/camera/e;->e:I
if-nez v1, :cond_44
:goto_6
invoke-static {v0}, Lcom/instagram/camera/h;->a(Z)V
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
if-eqz v0, :cond_1c
iget v0, p0, Lcom/instagram/camera/e;->g:I
if-eq v0, p1, :cond_1c
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/camera/e;->g:I
:cond_1c
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
:try_end_1e
.catchall {:try_start_2 .. :try_end_1e} :catchall_54
if-nez v0, :cond_57
:try_start_20
invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
move-result-object v0
iput-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
iput p1, p0, Lcom/instagram/camera/e;->g:I
:try_end_28
.catchall {:try_start_20 .. :try_end_28} :catchall_54
.catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_28} :catch_46
:try_start_28
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v0
iput-object v0, p0, Lcom/instagram/camera/e;->j:Landroid/hardware/Camera$Parameters;
:goto_30
iget v0, p0, Lcom/instagram/camera/e;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/camera/e;->e:I
iget-object v0, p0, Lcom/instagram/camera/e;->d:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/instagram/camera/e;->c:J
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
:try_end_42
.catchall {:try_start_28 .. :try_end_42} :catchall_54
monitor-exit p0
return-object v0
:cond_44
const/4 v0, 0x0
goto :goto_6
:catch_46
move-exception v0
:try_start_47
const-string v1, "CameraHolder"
const-string v2, "fail to connect Camera"
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v1, Lcom/instagram/camera/d;
invoke-direct {v1, v0}, Lcom/instagram/camera/d;-><init>(Ljava/lang/Throwable;)V
throw v1
:catchall_54
:try_end_54
.catchall {:try_start_47 .. :try_end_54} :catchall_54
move-exception v0
monitor-exit p0
throw v0
:try_start_57
:cond_57
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
:try_end_5c
.catchall {:try_start_57 .. :try_end_5c} :catchall_54
.catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_64
:try_start_5c
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
iget-object v1, p0, Lcom/instagram/camera/e;->j:Landroid/hardware/Camera$Parameters;
invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
goto :goto_30
:catch_64
move-exception v0
const-string v1, "CameraHolder"
const-string v2, "reconnect failed."
invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/instagram/camera/d;
invoke-direct {v1, v0}, Lcom/instagram/camera/d;-><init>(Ljava/lang/Throwable;)V
throw v1
:try_end_72
.catchall {:try_start_5c .. :try_end_72} :catchall_54
.end method
.method public c(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/camera/e;->a(I)Z
move-result v0
return v0
.end method
.method public final c()[Landroid/hardware/Camera$CameraInfo;
.registers 2
iget-object v0, p0, Lcom/instagram/camera/e;->a:[Landroid/hardware/Camera$CameraInfo;
return-object v0
.end method
.method public final declared-synchronized d()V
.registers 3
const/4 v0, 0x1
monitor-enter p0
:try_start_2
iget v1, p0, Lcom/instagram/camera/e;->e:I
if-ne v1, v0, :cond_19
:goto_6
invoke-static {v0}, Lcom/instagram/camera/h;->a(Z)V
iget v0, p0, Lcom/instagram/camera/e;->e:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/instagram/camera/e;->e:I
iget-object v0, p0, Lcom/instagram/camera/e;->b:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
invoke-direct {p0}, Lcom/instagram/camera/e;->h()V
:try_end_17
.catchall {:try_start_2 .. :try_end_17} :catchall_1b
monitor-exit p0
return-void
:cond_19
const/4 v0, 0x0
goto :goto_6
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized e()V
.registers 5
const/4 v0, 0x1
monitor-enter p0
:try_start_2
iget v1, p0, Lcom/instagram/camera/e;->e:I
if-eq v1, v0, :cond_a
iget v1, p0, Lcom/instagram/camera/e;->e:I
if-nez v1, :cond_18
:cond_a
:goto_a
invoke-static {v0}, Lcom/instagram/camera/h;->a(Z)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v2, 0xbb8
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/instagram/camera/e;->c:J
:try_end_16
.catchall {:try_start_2 .. :try_end_16} :catchall_1a
monitor-exit p0
return-void
:cond_18
const/4 v0, 0x0
goto :goto_a
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/instagram/camera/e;->h:I
return v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/instagram/camera/e;->i:I
return v0
.end method
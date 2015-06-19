.class public final Lcom/google/zxing/client/android/a/e;
.super Ljava/lang/Object;
.source "CameraManager.java"
.field private static final a:Ljava/lang/String;
.field private final b:Landroid/content/Context;
.field private final c:Lcom/google/zxing/client/android/a/c;
.field private d:Landroid/hardware/Camera;
.field private e:Lcom/google/zxing/client/android/a/a;
.field private f:Landroid/graphics/Rect;
.field private g:Landroid/graphics/Rect;
.field private h:Z
.field private i:Z
.field private j:I
.field private k:I
.field private final l:Lcom/google/zxing/client/android/a/f;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/zxing/client/android/a/e;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/a/e;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/client/android/a/e;->b:Landroid/content/Context;
new-instance v0, Lcom/google/zxing/client/android/a/c;
invoke-direct {v0, p1}, Lcom/google/zxing/client/android/a/c;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
new-instance v0, Lcom/google/zxing/client/android/a/f;
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
invoke-direct {v0, v1}, Lcom/google/zxing/client/android/a/f;-><init>(Lcom/google/zxing/client/android/a/c;)V
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->l:Lcom/google/zxing/client/android/a/f;
return-void
.end method
.method public final a([BII)Lcom/google/zxing/j;
.registers 12
invoke-virtual {p0}, Lcom/google/zxing/client/android/a/e;->f()Landroid/graphics/Rect;
move-result-object v1
if-nez v1, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v0, Lcom/google/zxing/j;
iget v4, v1, Landroid/graphics/Rect;->left:I
iget v5, v1, Landroid/graphics/Rect;->top:I
invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
move-result v6
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v7
move-object v1, p1
move v2, p2
move v3, p3
invoke-direct/range {v0 .. v7}, Lcom/google/zxing/j;-><init>([BIIIIII)V
goto :goto_7
.end method
.method public final declared-synchronized a(II)V
.registers 8
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/zxing/client/android/a/e;->h:Z
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
iget-object v0, v0, Lcom/google/zxing/client/android/a/c;->b:Landroid/graphics/Point;
iget v1, v0, Landroid/graphics/Point;->x:I
if-le p1, v1, :cond_f
iget p1, v0, Landroid/graphics/Point;->x:I
:cond_f
iget v1, v0, Landroid/graphics/Point;->y:I
if-le p2, v1, :cond_15
iget p2, v0, Landroid/graphics/Point;->y:I
:cond_15
iget v1, v0, Landroid/graphics/Point;->x:I
sub-int/2addr v1, p1
div-int/lit8 v1, v1, 0x2
iget v0, v0, Landroid/graphics/Point;->y:I
sub-int/2addr v0, p2
div-int/lit8 v0, v0, 0x2
new-instance v2, Landroid/graphics/Rect;
add-int v3, v1, p1
add-int v4, v0, p2
invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v2, p0, Lcom/google/zxing/client/android/a/e;->f:Landroid/graphics/Rect;
sget-object v0, Lcom/google/zxing/client/android/a/e;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Calculated manual framing rect: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/zxing/client/android/a/e;->f:Landroid/graphics/Rect;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->g:Landroid/graphics/Rect;
:goto_43
:try_end_43
.catchall {:try_start_1 .. :try_end_43} :catchall_4a
monitor-exit p0
return-void
:try_start_45
:cond_45
iput p1, p0, Lcom/google/zxing/client/android/a/e;->j:I
iput p2, p0, Lcom/google/zxing/client/android/a/e;->k:I
:try_end_49
.catchall {:try_start_45 .. :try_end_49} :catchall_4a
goto :goto_43
:catchall_4a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Landroid/os/Handler;I)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
if-eqz v0, :cond_13
iget-boolean v1, p0, Lcom/google/zxing/client/android/a/e;->i:Z
if-eqz v1, :cond_13
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->l:Lcom/google/zxing/client/android/a/f;
invoke-virtual {v1, p1, p2}, Lcom/google/zxing/client/android/a/f;->a(Landroid/os/Handler;I)V
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->l:Lcom/google/zxing/client/android/a/f;
invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
:cond_13
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_15
monitor-exit p0
return-void
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Landroid/view/SurfaceHolder;)V
.registers 9
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
if-nez v0, :cond_21
new-instance v0, Lcom/google/zxing/client/android/a/a/c;
invoke-direct {v0}, Lcom/google/zxing/client/android/a/a/c;-><init>()V
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/a/c;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/client/android/a/a/b;
invoke-interface {v0}, Lcom/google/zxing/client/android/a/a/b;->a()Landroid/hardware/Camera;
move-result-object v0
if-nez v0, :cond_1f
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_1c
:catchall_1c
move-exception v0
monitor-exit p0
throw v0
:try_start_1f
:cond_1f
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
:cond_21
move-object v1, v0
invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
iget-boolean v0, p0, Lcom/google/zxing/client/android/a/e;->h:Z
if-nez v0, :cond_a9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/zxing/client/android/a/e;->h:Z
iget-object v2, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v3
iget-object v0, v2, Lcom/google/zxing/client/android/a/c;->a:Landroid/content/Context;
const-string v4, "window"
invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
new-instance v4, Landroid/graphics/Point;
invoke-direct {v4}, Landroid/graphics/Point;-><init>()V
iput-object v4, v2, Lcom/google/zxing/client/android/a/c;->b:Landroid/graphics/Point;
new-instance v4, Landroid/graphics/Point;
invoke-direct {v4}, Landroid/graphics/Point;-><init>()V
iget-object v5, v2, Lcom/google/zxing/client/android/a/c;->b:Landroid/graphics/Point;
invoke-virtual {v0, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
iget v0, v4, Landroid/graphics/Point;->x:I
iget v5, v4, Landroid/graphics/Point;->y:I
if-ge v0, v5, :cond_62
iget v0, v4, Landroid/graphics/Point;->x:I
iget v5, v4, Landroid/graphics/Point;->y:I
iput v5, v4, Landroid/graphics/Point;->x:I
iput v0, v4, Landroid/graphics/Point;->y:I
:cond_62
const-string v0, "CameraConfiguration"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Screen resolution: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, v2, Lcom/google/zxing/client/android/a/c;->b:Landroid/graphics/Point;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v2, v3, v4}, Lcom/google/zxing/client/android/a/c;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
iput-object v0, v2, Lcom/google/zxing/client/android/a/c;->c:Landroid/graphics/Point;
const-string v0, "CameraConfiguration"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Camera resolution: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, v2, Lcom/google/zxing/client/android/a/c;->c:Landroid/graphics/Point;
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget v0, p0, Lcom/google/zxing/client/android/a/e;->j:I
if-lez v0, :cond_a9
iget v0, p0, Lcom/google/zxing/client/android/a/e;->k:I
if-lez v0, :cond_a9
iget v0, p0, Lcom/google/zxing/client/android/a/e;->j:I
iget v2, p0, Lcom/google/zxing/client/android/a/e;->k:I
invoke-virtual {p0, v0, v2}, Lcom/google/zxing/client/android/a/e;->a(II)V
const/4 v0, 0x0
iput v0, p0, Lcom/google/zxing/client/android/a/e;->j:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/zxing/client/android/a/e;->k:I
:cond_a9
invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
:try_end_ac
.catchall {:try_start_1f .. :try_end_ac} :catchall_1c
move-result-object v0
if-nez v0, :cond_b8
const/4 v0, 0x0
:try_start_b0
:goto_b0
iget-object v2, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
const/4 v3, 0x0
invoke-virtual {v2, v1, v3}, Lcom/google/zxing/client/android/a/c;->a(Landroid/hardware/Camera;Z)V
:cond_b6
:try_end_b6
.catchall {:try_start_b0 .. :try_end_b6} :catchall_1c
.catch Ljava/lang/RuntimeException; {:try_start_b0 .. :try_end_b6} :catch_bd
:goto_b6
monitor-exit p0
return-void
:cond_b8
:try_start_b8
invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;
move-result-object v0
goto :goto_b0
:catch_bd
move-exception v2
sget-object v2, Lcom/google/zxing/client/android/a/e;->a:Ljava/lang/String;
const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
sget-object v2, Lcom/google/zxing/client/android/a/e;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Resetting to saved camera params: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v0, :cond_b6
invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
:try_end_e2
.catchall {:try_start_b8 .. :try_end_e2} :catchall_1c
:try_start_e2
invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/c;->a(Landroid/hardware/Camera;Z)V
:try_end_eb
.catchall {:try_start_e2 .. :try_end_eb} :catchall_1c
.catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_eb} :catch_ec
goto :goto_b6
:catch_ec
move-exception v0
:try_start_ed
sget-object v0, Lcom/google/zxing/client/android/a/e;->a:Ljava/lang/String;
const-string v1, "Camera rejected even safe-mode parameters! No configuration"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_f4
.catchall {:try_start_ed .. :try_end_f4} :catchall_1c
goto :goto_b6
.end method
.method public final declared-synchronized a(Z)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->e:Lcom/google/zxing/client/android/a/a;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->e:Lcom/google/zxing/client/android/a/a;
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/a;->b()V
:cond_e
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v2
invoke-static {v2, p1}, Lcom/google/zxing/client/android/a/c;->a(Landroid/hardware/Camera$Parameters;Z)V
invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
iget-object v0, v0, Lcom/google/zxing/client/android/a/c;->a:Landroid/content/Context;
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "preferences_front_light"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eq v1, p1, :cond_37
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "preferences_front_light"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_37
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->e:Lcom/google/zxing/client/android/a/a;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->e:Lcom/google/zxing/client/android/a/a;
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/a;->a()V
:try_end_40
.catchall {:try_start_1 .. :try_end_40} :catchall_42
:cond_40
monitor-exit p0
return-void
:catchall_42
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a()Z
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_a
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_6
monitor-exit p0
return v0
:cond_8
const/4 v0, 0x0
goto :goto_6
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized b()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->f:Landroid/graphics/Rect;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->g:Landroid/graphics/Rect;
:cond_13
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_15
monitor-exit p0
return-void
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized c()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
if-eqz v0, :cond_1a
iget-boolean v1, p0, Lcom/google/zxing/client/android/a/e;->i:Z
if-nez v1, :cond_1a
invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/zxing/client/android/a/e;->i:Z
new-instance v0, Lcom/google/zxing/client/android/a/a;
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/a/a;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->e:Lcom/google/zxing/client/android/a/a;
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_1c
:cond_1a
monitor-exit p0
return-void
:catchall_1c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized d()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->e:Lcom/google/zxing/client/android/a/a;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->e:Lcom/google/zxing/client/android/a/a;
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/a;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/a/e;->e:Lcom/google/zxing/client/android/a/a;
:cond_d
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
if-eqz v0, :cond_24
iget-boolean v0, p0, Lcom/google/zxing/client/android/a/e;->i:Z
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->l:Lcom/google/zxing/client/android/a/f;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/f;->a(Landroid/os/Handler;I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/zxing/client/android/a/e;->i:Z
:try_end_24
.catchall {:try_start_1 .. :try_end_24} :catchall_26
:cond_24
monitor-exit p0
return-void
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized e()Landroid/graphics/Rect;
.registers 6
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->f:Landroid/graphics/Rect;
if-nez v1, :cond_35
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->d:Landroid/hardware/Camera;
:try_end_8
.catchall {:try_start_2 .. :try_end_8} :catchall_38
if-nez v1, :cond_c
:cond_a
:goto_a
monitor-exit p0
return-object v0
:cond_c
:try_start_c
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
iget-object v1, v1, Lcom/google/zxing/client/android/a/c;->b:Landroid/graphics/Point;
if-eqz v1, :cond_a
iget v0, v1, Landroid/graphics/Point;->x:I
iget v1, v1, Landroid/graphics/Point;->y:I
new-instance v2, Landroid/graphics/Rect;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v2, p0, Lcom/google/zxing/client/android/a/e;->f:Landroid/graphics/Rect;
sget-object v0, Lcom/google/zxing/client/android/a/e;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Calculated framing rect: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/zxing/client/android/a/e;->f:Landroid/graphics/Rect;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_35
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->f:Landroid/graphics/Rect;
:try_end_37
.catchall {:try_start_c .. :try_end_37} :catchall_38
goto :goto_a
:catchall_38
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized f()Landroid/graphics/Rect;
.registers 6
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->g:Landroid/graphics/Rect;
if-nez v1, :cond_49
invoke-virtual {p0}, Lcom/google/zxing/client/android/a/e;->e()Landroid/graphics/Rect;
:try_end_9
.catchall {:try_start_2 .. :try_end_9} :catchall_4c
move-result-object v1
if-nez v1, :cond_e
:cond_c
:goto_c
monitor-exit p0
return-object v0
:try_start_e
:cond_e
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
iget-object v1, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
iget-object v1, v1, Lcom/google/zxing/client/android/a/c;->c:Landroid/graphics/Point;
iget-object v3, p0, Lcom/google/zxing/client/android/a/e;->c:Lcom/google/zxing/client/android/a/c;
iget-object v3, v3, Lcom/google/zxing/client/android/a/c;->b:Landroid/graphics/Point;
if-eqz v1, :cond_c
if-eqz v3, :cond_c
iget v0, v2, Landroid/graphics/Rect;->left:I
iget v4, v1, Landroid/graphics/Point;->y:I
mul-int/2addr v0, v4
iget v4, v3, Landroid/graphics/Point;->x:I
div-int/2addr v0, v4
iput v0, v2, Landroid/graphics/Rect;->left:I
iget v0, v2, Landroid/graphics/Rect;->right:I
iget v4, v1, Landroid/graphics/Point;->y:I
mul-int/2addr v0, v4
iget v4, v3, Landroid/graphics/Point;->x:I
div-int/2addr v0, v4
iput v0, v2, Landroid/graphics/Rect;->right:I
iget v0, v2, Landroid/graphics/Rect;->top:I
iget v4, v1, Landroid/graphics/Point;->x:I
mul-int/2addr v0, v4
iget v4, v3, Landroid/graphics/Point;->y:I
div-int/2addr v0, v4
iput v0, v2, Landroid/graphics/Rect;->top:I
iget v0, v2, Landroid/graphics/Rect;->bottom:I
iget v1, v1, Landroid/graphics/Point;->x:I
mul-int/2addr v0, v1
iget v1, v3, Landroid/graphics/Point;->y:I
div-int/2addr v0, v1
iput v0, v2, Landroid/graphics/Rect;->bottom:I
iput-object v2, p0, Lcom/google/zxing/client/android/a/e;->g:Landroid/graphics/Rect;
:cond_49
iget-object v0, p0, Lcom/google/zxing/client/android/a/e;->g:Landroid/graphics/Rect;
:try_end_4b
.catchall {:try_start_e .. :try_end_4b} :catchall_4c
goto :goto_c
:catchall_4c
move-exception v0
monitor-exit p0
throw v0
.end method
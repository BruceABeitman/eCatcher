.class public final Lcom/instagram/creation/video/gl/h;
.super Ljava/lang/Object;
.source "GLId.java"
.field static a:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
sput v0, Lcom/instagram/creation/video/gl/h;->a:I
return-void
.end method
.method public static declared-synchronized a(I[I)V
.registers 7
const-class v1, Lcom/instagram/creation/video/gl/h;
monitor-enter v1
:goto_3
add-int/lit8 v0, p0, -0x1
if-lez p0, :cond_12
const/4 v2, 0x0
:try_start_8
sget v3, Lcom/instagram/creation/video/gl/h;->a:I
add-int/lit8 v4, v3, 0x1
sput v4, Lcom/instagram/creation/video/gl/h;->a:I
aput v3, p1, v2
:try_end_10
.catchall {:try_start_8 .. :try_end_10} :catchall_14
move p0, v0
goto :goto_3
:cond_12
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Ljavax/microedition/khronos/opengles/GL11;I[I)V
.registers 5
const-class v0, Lcom/instagram/creation/video/gl/h;
monitor-enter v0
const/4 v1, 0x0
:try_start_4
invoke-interface {p0, p1, p2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_9
monitor-exit v0
return-void
:catchall_9
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized b(I[I)V
.registers 7
const-class v1, Lcom/instagram/creation/video/gl/h;
monitor-enter v1
:goto_3
add-int/lit8 v0, p0, -0x1
if-lez p0, :cond_12
const/4 v2, 0x0
:try_start_8
sget v3, Lcom/instagram/creation/video/gl/h;->a:I
add-int/lit8 v4, v3, 0x1
sput v4, Lcom/instagram/creation/video/gl/h;->a:I
aput v3, p1, v2
:try_end_10
.catchall {:try_start_8 .. :try_end_10} :catchall_14
move p0, v0
goto :goto_3
:cond_12
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized b(Ljavax/microedition/khronos/opengles/GL11;I[I)V
.registers 5
const-class v0, Lcom/instagram/creation/video/gl/h;
monitor-enter v0
const/4 v1, 0x0
:try_start_4
invoke-interface {p0, p1, p2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_9
monitor-exit v0
return-void
:catchall_9
move-exception v1
monitor-exit v0
throw v1
.end method
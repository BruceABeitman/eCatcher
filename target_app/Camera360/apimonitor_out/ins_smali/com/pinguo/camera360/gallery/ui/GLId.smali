.class public Lcom/pinguo/camera360/gallery/ui/GLId;
.super Ljava/lang/Object;
.source "GLId.java"
.field static sNextId:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
sput v0, Lcom/pinguo/camera360/gallery/ui/GLId;->sNextId:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
.registers 6
const-class v0, Lcom/pinguo/camera360/gallery/ui/GLId;
monitor-enter v0
:try_start_3
invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_8
monitor-exit v0
return-void
:catchall_8
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized glDeleteFramebuffers(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;I[II)V
.registers 6
const-class v0, Lcom/pinguo/camera360/gallery/ui/GLId;
monitor-enter v0
:try_start_3
invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_8
monitor-exit v0
return-void
:catchall_8
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
.registers 6
const-class v0, Lcom/pinguo/camera360/gallery/ui/GLId;
monitor-enter v0
:try_start_3
invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_8
monitor-exit v0
return-void
:catchall_8
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized glGenBuffers(I[II)V
.registers 8
const-class v2, Lcom/pinguo/camera360/gallery/ui/GLId;
monitor-enter v2
move v0, p0
:goto_4
add-int/lit8 p0, v0, -0x1
if-gtz v0, :cond_a
monitor-exit v2
return-void
:cond_a
add-int v1, p2, p0
:try_start_c
sget v3, Lcom/pinguo/camera360/gallery/ui/GLId;->sNextId:I
add-int/lit8 v4, v3, 0x1
sput v4, Lcom/pinguo/camera360/gallery/ui/GLId;->sNextId:I
aput v3, p1, v1
:try_end_14
.catchall {:try_start_c .. :try_end_14} :catchall_16
move v0, p0
goto :goto_4
:catchall_16
move-exception v1
monitor-exit v2
throw v1
.end method
.method public static declared-synchronized glGenTextures(I[II)V
.registers 8
const-class v2, Lcom/pinguo/camera360/gallery/ui/GLId;
monitor-enter v2
move v0, p0
:goto_4
add-int/lit8 p0, v0, -0x1
if-gtz v0, :cond_a
monitor-exit v2
return-void
:cond_a
add-int v1, p2, p0
:try_start_c
sget v3, Lcom/pinguo/camera360/gallery/ui/GLId;->sNextId:I
add-int/lit8 v4, v3, 0x1
sput v4, Lcom/pinguo/camera360/gallery/ui/GLId;->sNextId:I
aput v3, p1, v1
:try_end_14
.catchall {:try_start_c .. :try_end_14} :catchall_16
move v0, p0
goto :goto_4
:catchall_16
move-exception v1
monitor-exit v2
throw v1
.end method
.class public Lcom/pinguo/album/opengles/GLES11IdImpl;
.super Ljava/lang/Object;
.source "GLES11IdImpl.java"

# interfaces
.implements Lcom/pinguo/album/opengles/GLId;


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sNextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/pinguo/album/opengles/GLES11IdImpl;->sNextId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pinguo/album/opengles/GLES11IdImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateTexture()I
    .registers 4

    sget-object v1, Lcom/pinguo/album/opengles/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/pinguo/album/opengles/GLES11IdImpl;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/pinguo/album/opengles/GLES11IdImpl;->sNextId:I

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .registers 7

    sget-object v1, Lcom/pinguo/album/opengles/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public glDeleteFramebuffers(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;I[II)V
    .registers 7

    sget-object v1, Lcom/pinguo/album/opengles/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .registers 7

    sget-object v1, Lcom/pinguo/album/opengles/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public glGenBuffers(I[II)V
    .registers 9

    sget-object v2, Lcom/pinguo/album/opengles/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v2

    move v0, p1

    :goto_4
    add-int/lit8 p1, v0, -0x1

    if-gtz v0, :cond_a

    :try_start_8
    monitor-exit v2

    return-void

    :cond_a
    add-int v1, p3, p1

    sget v3, Lcom/pinguo/album/opengles/GLES11IdImpl;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/pinguo/album/opengles/GLES11IdImpl;->sNextId:I

    aput v3, p2, v1

    move v0, p1

    goto :goto_4

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

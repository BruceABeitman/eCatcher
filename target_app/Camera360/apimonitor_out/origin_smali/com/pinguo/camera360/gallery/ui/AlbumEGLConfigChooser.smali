.class public Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;
.super Ljava/lang/Object;
.source "AlbumEGLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final ATTR_ID:[I = null

.field private static final ATTR_NAME:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "GalleryEGLConfigChooser"


# instance fields
.field private final mConfigSpec:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x8

    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->ATTR_ID:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "CAVEAT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    return-void

    :array_3e
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x28t 0x30t 0x0t 0x0t
        0x27t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x6

    const/4 v3, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    aput v3, v0, v3

    const/16 v1, 0x3021

    aput v1, v0, v4

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->mConfigSpec:[I

    return-void
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 13

    const/16 v8, 0x3026

    const/4 v7, 0x0

    const/4 v3, 0x0

    const v1, 0x7fffffff

    const/4 v5, 0x1

    new-array v4, v5, [I

    const/4 v0, 0x0

    array-length v2, p3

    :goto_c
    if-lt v0, v2, :cond_19

    if-nez v3, :cond_12

    aget-object v3, p3, v7

    :cond_12
    invoke-interface {p1, p2, v3, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-object v3

    :cond_19
    aget-object v5, p3, v0

    const/16 v6, 0x3024

    invoke-interface {p1, p2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_2c

    aget v5, v4, v7

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2c

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2c
    aget-object v5, p3, v0

    invoke-interface {p1, p2, v5, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_41

    aget v5, v4, v7

    if-eqz v5, :cond_29

    aget v5, v4, v7

    if-ge v5, v1, :cond_29

    aget v1, v4, v7

    aget-object v3, p3, v0

    goto :goto_29

    :cond_41
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "eglGetConfigAttrib error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 10

    const/4 v3, 0x1

    new-array v2, v3, [I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_9
    sget-object v3, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->ATTR_ID:[I

    array-length v3, v3

    if-lt v0, v3, :cond_29

    const-string/jumbo v3, "GalleryEGLConfigChooser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Config chosen: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    sget-object v3, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->ATTR_ID:[I

    aget v3, v3, v0

    invoke-interface {p1, p2, p3, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 9

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    aget v0, v5, v4

    if-gtz v0, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    aget v0, v5, v4

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->mConfigSpec:[I

    array-length v4, v3

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3a
    invoke-direct {p0, p1, p2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

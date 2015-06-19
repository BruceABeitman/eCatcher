.class Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummySurfaceHolder"
.end annotation


# instance fields
.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/CameraManager$DummySurfaceHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2

    return-void
.end method

.method public setFixedSize(II)V
    .registers 3

    return-void
.end method

.method public setFormat(I)V
    .registers 2

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 2

    return-void
.end method

.method public setSizeFromLayout()V
    .registers 1

    return-void
.end method

.method public setType(I)V
    .registers 2

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

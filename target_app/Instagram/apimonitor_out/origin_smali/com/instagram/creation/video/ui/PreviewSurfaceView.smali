.class public Lcom/instagram/creation/video/ui/PreviewSurfaceView;
.super Landroid/view/SurfaceView;
.source "PreviewSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/PreviewSurfaceView;->setZOrderMediaOverlay(Z)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

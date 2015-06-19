.class public Lcom/pinguo/camera360/lib/camera/view/PreviewView;
.super Landroid/widget/RelativeLayout;
.source "PreviewView.java"


# instance fields
.field private mRenderSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->mRenderSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->mSurfaceView:Landroid/view/SurfaceView;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/PGGLSurfaceView;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->mRenderSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;

    return-void
.end method

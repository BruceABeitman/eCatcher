.class public abstract Lcom/instagram/creation/video/widget/d;
.super Lcom/instagram/creation/video/ui/p;
.source "IgTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/ui/p;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/creation/video/widget/d;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/ui/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/instagram/creation/video/widget/d;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/creation/video/ui/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/instagram/creation/video/widget/d;->b()V

    return-void
.end method

.method private b()V
    .registers 1

    invoke-virtual {p0, p0}, Lcom/instagram/creation/video/widget/d;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/widget/d;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

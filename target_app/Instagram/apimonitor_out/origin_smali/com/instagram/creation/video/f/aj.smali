.class final Lcom/instagram/creation/video/f/aj;
.super Ljava/lang/Object;
.source "VideoCoverFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ah;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/aj;->a:Lcom/instagram/creation/video/f/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/f/aj;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->f(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/c;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/instagram/creation/video/f/aj;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->f(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/aj;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v1, v1, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v1}, Lcom/instagram/creation/video/f/ad;->h(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/PreviewTextureView;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/aj;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v2, v2, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v2}, Lcom/instagram/creation/video/f/ad;->g(Lcom/instagram/creation/video/f/ad;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/creation/video/f/aj;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v3, v3, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v3}, Lcom/instagram/creation/video/f/ad;->g(Lcom/instagram/creation/video/f/ad;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/creation/video/widget/PreviewTextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/widget/c;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/aj;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->g(Lcom/instagram/creation/video/f/ad;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    :cond_44
    return-void
.end method

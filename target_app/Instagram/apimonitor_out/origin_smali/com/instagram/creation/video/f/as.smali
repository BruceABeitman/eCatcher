.class final Lcom/instagram/creation/video/f/as;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ar;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/ar;->U()Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/g;->a(Landroid/os/Bundle;Lcom/instagram/creation/b/a/b;)Z

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    iget-object v2, p0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    invoke-virtual {v2}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "VideoEditFragment.EDIT_MODE"

    sget-object v4, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    iget v4, v4, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/f/ar;I)V

    if-eqz v0, :cond_5a

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->r()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ar;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->overlay_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    invoke-static {v1, v0}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/f/ar;Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;)Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    :cond_4a
    iget-object v0, p0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ar;->c(Lcom/instagram/creation/video/f/ar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/at;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/at;-><init>(Lcom/instagram/creation/video/f/as;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5a
    return-void
.end method

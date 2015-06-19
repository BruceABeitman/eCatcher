.class final Lcom/instagram/creation/video/widget/a;
.super Ljava/lang/Object;
.source "IgScrubberProgressIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/widget/a;->a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/widget/a;->a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;

    invoke-static {v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/instagram/creation/video/widget/a;->a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;

    invoke-static {v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/instagram/creation/video/widget/a;->a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;

    invoke-static {v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1d
    return-void
.end method

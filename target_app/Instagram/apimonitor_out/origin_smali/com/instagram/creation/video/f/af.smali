.class final Lcom/instagram/creation/video/f/af;
.super Ljava/lang/Object;
.source "VideoCoverFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ad;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/af;->a:Lcom/instagram/creation/video/f/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/af;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/instagram/creation/video/f/af;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->scrubber_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/af;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->scrubber_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    return-void
.end method

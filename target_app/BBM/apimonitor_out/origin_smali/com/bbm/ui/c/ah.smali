.class final Lcom/bbm/ui/c/ah;
.super Lcom/bbm/e/a;
.source "ChannelDetailsFragment.java"


# instance fields
.field final synthetic c:Lcom/bbm/ui/ObservingImageView;

.field final synthetic d:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;Lcom/bbm/ui/ObservingImageView;)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/ui/c/ah;->d:Lcom/bbm/ui/c/l;

    iput-object p5, p0, Lcom/bbm/ui/c/ah;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/e/a;-><init>(Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/bbm/d/fd;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/ah;->d:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->j(Lcom/bbm/ui/c/l;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bbm/ui/c/ah;->d:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->k(Lcom/bbm/ui/c/l;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/ah;->d:Lcom/bbm/ui/c/l;

    iget-object v1, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/c/ah;->d:Lcom/bbm/ui/c/l;

    iget-boolean v1, p0, Lcom/bbm/e/a;->a:Z

    invoke-static {v0, v1}, Lcom/bbm/ui/c/l;->b(Lcom/bbm/ui/c/l;Z)Z

    :goto_27
    iget-object v0, p0, Lcom/bbm/ui/c/ah;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    invoke-super {p0, p1}, Lcom/bbm/e/a;->a(Lcom/bbm/d/fd;)V

    return-void

    :cond_30
    iget-object v0, p0, Lcom/bbm/ui/c/ah;->d:Lcom/bbm/ui/c/l;

    invoke-virtual {v0}, Lcom/bbm/ui/c/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ah;->d:Lcom/bbm/ui/c/l;

    invoke-virtual {v1}, Lcom/bbm/ui/c/l;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_27
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/bbm/d/fd;

    invoke-virtual {p0, p1}, Lcom/bbm/ui/c/ah;->a(Lcom/bbm/d/fd;)V

    return-void
.end method

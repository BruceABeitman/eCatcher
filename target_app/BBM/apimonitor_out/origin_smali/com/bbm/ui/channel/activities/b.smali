.class final Lcom/bbm/ui/channel/activities/b;
.super Lcom/bbm/j/k;
.source "ChannelInviteToBBM.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;


# direct methods
.method constructor <init>(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    const/16 v6, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v1}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->b(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v3

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v4, :cond_131

    iget-object v1, v3, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    move v1, v0

    :goto_28
    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v4, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v4}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->b(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v4, :cond_3e

    if-eqz v1, :cond_84

    :cond_3e
    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->c(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v4

    invoke-interface {v4}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    iget-object v0, v0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v4}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_79
    if-eqz v1, :cond_da

    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->e(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->a()V

    :cond_84
    :goto_84
    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v4, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v4}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->b(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    sget-object v4, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v0, v4, :cond_cf

    if-nez v1, :cond_cf

    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->c(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->g(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v0, v3, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_ed

    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :cond_cf
    :goto_cf
    return-void

    :cond_d0
    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto :goto_79

    :cond_da
    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->e(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    iget-object v4, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v4}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->f(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ActionBarItem;

    move-result-object v4

    const v5, 0x7f0a0056

    invoke-virtual {v0, v4, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    goto :goto_84

    :cond_ed
    iget-object v0, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_cf

    :cond_101
    new-instance v0, Lcom/bbm/util/b/g;

    iget-object v1, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    iget-object v2, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v2}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/ui/ObservingImageView;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    new-instance v1, Lcom/bbm/util/bo;

    iget-object v2, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    const/4 v3, 0x1

    const/16 v4, 0x3c

    sget-object v5, Lcom/bbm/util/br;->b:Lcom/bbm/util/br;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/util/bo;-><init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/bo;)V

    iget-object v1, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v1}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->g(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/channel/activities/b;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v2}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    goto :goto_cf

    :cond_131
    move v1, v2

    goto/16 :goto_28
.end method

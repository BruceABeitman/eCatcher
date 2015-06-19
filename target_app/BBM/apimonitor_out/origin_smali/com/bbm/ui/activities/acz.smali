.class final Lcom/bbm/ui/activities/acz;
.super Lcom/bbm/j/k;
.source "ReceivedPendingInviteActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->d(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->c(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->x(Ljava/lang/String;)Lcom/bbm/d/fn;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->finish()V

    :cond_1b
    iget-boolean v1, v0, Lcom/bbm/d/fn;->f:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->e(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V

    :cond_24
    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->d(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v3, v0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;Lcom/bbm/d/gp;)Lcom/bbm/d/gp;

    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->g(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->d(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->f(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/gp;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->f(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/gp;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->h(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->f(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/gp;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0600

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v5}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->f(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/gp;

    move-result-object v5

    invoke-static {v5}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->j(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Lcom/bbm/d/fn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->k(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/acz;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v0, Lcom/bbm/d/fn;->i:J

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

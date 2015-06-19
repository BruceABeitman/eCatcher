.class final Lcom/bbm/ui/activities/acp;
.super Lcom/bbm/j/u;
.source "ReceivedPendingGroupInviteActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/acp;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/acp;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    invoke-static {}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->l(Ljava/lang/String;)Lcom/bbm/g/t;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_69

    iget-object v1, v0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v0, p0, Lcom/bbm/ui/activities/acp;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    invoke-static {}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bbm/g/bn;->a:Lcom/bbm/g/bn;

    invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/bn;)Lcom/bbm/g/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/acp;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->finish()V

    :goto_38
    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    new-instance v1, Lcom/bbm/ui/b/k;

    iget-object v2, p0, Lcom/bbm/ui/activities/acp;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-direct {v1, v2}, Lcom/bbm/ui/b/k;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e02fd

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/k;->setTitle(I)V

    iget-object v0, v0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/k;->a_(Ljava/lang/String;)V

    const v0, 0x7f0e02fb

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/k;->c(I)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/k;->d(I)V

    const v0, 0x7f0e02fc

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/k;->f(I)V

    new-instance v0, Lcom/bbm/ui/activities/acq;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/acq;-><init>(Lcom/bbm/ui/activities/acp;Lcom/bbm/ui/b/k;)V

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/k;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/bbm/ui/b/k;->show()V

    goto :goto_38

    :cond_69
    const/4 v0, 0x0

    goto :goto_39
.end method

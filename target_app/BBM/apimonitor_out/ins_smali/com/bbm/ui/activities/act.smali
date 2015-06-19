.class final Lcom/bbm/ui/activities/act;
.super Lcom/bbm/j/k;
.source "ReceivedPendingGroupInviteActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 9
const v7, 0x7f0200d6
const/4 v6, 0x1
const/4 v5, 0x0
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-virtual {v0}, Lcom/bbm/g/am;->c()Lcom/bbm/j/w;
iget-object v0, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-static {}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->l(Ljava/lang/String;)Lcom/bbm/g/t;
move-result-object v0
iget-object v1, v0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_25
:goto_24
return-void
:cond_25
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->d(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0586
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, v0, Lcom/bbm/g/t;->e:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->e(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, v0, Lcom/bbm/g/t;->h:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->f(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0600
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, v0, Lcom/bbm/g/t;->i:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->g(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0583
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, v0, Lcom/bbm/g/t;->h:Ljava/lang/String;
aput-object v4, v3, v5
iget-object v4, v0, Lcom/bbm/g/t;->e:Ljava/lang/String;
aput-object v4, v3, v6
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;
sget-object v2, Lcom/bbm/g/u;->e:Lcom/bbm/g/u;
if-ne v1, v2, :cond_ee
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->h(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->h(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0587
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_ba
:cond_ba
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->j(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->i(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/content/Context;
move-result-object v2
iget-wide v3, v0, Lcom/bbm/g/t;->o:J
invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->d(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/g/t;->i:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_145
iget-object v0, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->k(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v0
invoke-virtual {v0, v7}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
goto/16 :goto_24
:cond_ee
iget-object v1, v0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;
sget-object v2, Lcom/bbm/g/u;->f:Lcom/bbm/g/u;
if-ne v1, v2, :cond_11e
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->h(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->h(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0584
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, v0, Lcom/bbm/g/t;->h:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_ba
:cond_11e
iget-object v1, v0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;
sget-object v2, Lcom/bbm/g/u;->d:Lcom/bbm/g/u;
if-ne v1, v2, :cond_ba
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->h(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->h(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0582
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_ba
:cond_145
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_164
iget-object v0, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->k(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v0
invoke-virtual {v0, v7}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
goto/16 :goto_24
:cond_164
iget-object v1, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->k(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/act;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
goto/16 :goto_24
.end method
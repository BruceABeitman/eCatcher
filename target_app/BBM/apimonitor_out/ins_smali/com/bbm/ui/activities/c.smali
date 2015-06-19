.class final Lcom/bbm/ui/activities/c;
.super Lcom/bbm/e/a;
.source "AddChannelPostActivity.java"
.field final synthetic c:Lcom/bbm/ui/activities/AddChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-direct {p0, p2, p3, p4}, Lcom/bbm/e/a;-><init>(Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;)V
return-void
.end method
.method protected final a(Lcom/bbm/d/fd;)V
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->g(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ProgressBar;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;
if-eqz v1, :cond_8a
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->e(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->f(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->h(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
move-result-object v1
const v2, 0x7f020018
invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->h(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->d(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
iget-boolean v2, p0, Lcom/bbm/e/a;->a:Z
invoke-static {v1, v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->b(Lcom/bbm/ui/activities/AddChannelPostActivity;Z)Z
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
iget-object v2, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a(Lcom/bbm/ui/activities/AddChannelPostActivity;Ljava/lang/String;)Ljava/lang/String;
:goto_4e
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->j(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/InlineImageEditText;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/ui/InlineImageEditText;->requestFocus()Z
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->t(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/d;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/d;-><init>(Lcom/bbm/ui/activities/c;)V
const-wide/16 v3, 0xc8
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
invoke-super {p0, p1}, Lcom/bbm/e/a;->a(Lcom/bbm/d/fd;)V
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->u(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->p(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->n(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
move-result v2
if-eqz v2, :cond_86
iget-object v2, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->o(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
move-result v2
if-nez v2, :cond_86
const/4 v0, 0x1
:cond_86
invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
return-void
:cond_8a
iget-object v1, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e011f
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V
goto :goto_4e
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/bbm/d/fd;
invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/c;->a(Lcom/bbm/d/fd;)V
return-void
.end method
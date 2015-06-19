.class final Lcom/bbm/ui/activities/xw;
.super Lcom/bbm/e/a;
.source "NewChannelActivity.java"
.field final synthetic c:Lcom/bbm/ui/activities/NewChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-direct {p0, p2, p3, p4}, Lcom/bbm/e/a;-><init>(Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;)V
return-void
.end method
.method protected final a(Lcom/bbm/d/fd;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->p(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/ProgressBar;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
iget-boolean v1, p0, Lcom/bbm/e/a;->a:Z
invoke-static {v0, v1}, Lcom/bbm/ui/activities/NewChannelActivity;->b(Lcom/bbm/ui/activities/NewChannelActivity;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
iget-object v1, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Lcom/bbm/ui/activities/NewChannelActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->q(Lcom/bbm/ui/activities/NewChannelActivity;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->r(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
:goto_2c
iget-object v0, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->s(Lcom/bbm/ui/activities/NewChannelActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
invoke-super {p0, p1}, Lcom/bbm/e/a;->a(Lcom/bbm/d/fd;)V
iget-object v0, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a()V
return-void
:cond_3e
iget-object v0, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/xw;->c:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e011f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V
goto :goto_2c
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/bbm/d/fd;
invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/xw;->a(Lcom/bbm/d/fd;)V
return-void
.end method
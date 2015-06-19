.class final Lcom/bbm/ui/activities/ait;
.super Lcom/bbm/ui/d/h;
.source "ViewChannelPostActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ait;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-direct {p0}, Lcom/bbm/ui/d/h;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ait;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->j(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/views/ChannelPostCommentListView;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelPostCommentListView;->invalidate()V
iget-object v0, p0, Lcom/bbm/ui/activities/ait;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/activities/ait;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/a/k;->notifyDataSetChanged()V
:cond_1a
return-void
.end method
.method public final a(I)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/ait;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getBaseContext()Landroid/content/Context;
iget-object v0, p0, Lcom/bbm/ui/activities/ait;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {v0, p1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ait;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
const/4 v2, 0x0
invoke-static {v1, v0, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
return-void
.end method
.class final Lcom/bbm/ui/a/o;
.super Ljava/lang/Object;
.source "ChannelPostCommentListAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/d/el;
.field final synthetic b:Lcom/bbm/ui/a/q;
.field final synthetic c:Landroid/view/View;
.field final synthetic d:Lcom/bbm/ui/a/k;
.method constructor <init>(Lcom/bbm/ui/a/k;Lcom/bbm/d/el;Lcom/bbm/ui/a/q;Landroid/view/View;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/a/o;->d:Lcom/bbm/ui/a/k;
iput-object p2, p0, Lcom/bbm/ui/a/o;->a:Lcom/bbm/d/el;
iput-object p3, p0, Lcom/bbm/ui/a/o;->b:Lcom/bbm/ui/a/q;
iput-object p4, p0, Lcom/bbm/ui/a/o;->c:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/a/o; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "replyButton Clicked"
const-class v1, Lcom/bbm/ui/a/k;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/a/o;->d:Lcom/bbm/ui/a/k;
invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v1, p0, Lcom/bbm/ui/a/o;->a:Lcom/bbm/d/el;
iget-object v1, v1, Lcom/bbm/d/el;->k:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/a/o;->b:Lcom/bbm/ui/a/q;
iget-object v0, v0, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/a/o;->c:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/a/o;->c:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I
move-result v1
iget-object v2, p0, Lcom/bbm/ui/a/o;->d:Lcom/bbm/ui/a/k;
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v2, v0, v1}, Lcom/bbm/ui/a/k;->a(Landroid/view/View;I)V
iget-object v0, p0, Lcom/bbm/ui/a/o;->d:Lcom/bbm/ui/a/k;
invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;
iput v1, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e:I
const-string v1, " - Lcom/bbm/ui/a/o; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
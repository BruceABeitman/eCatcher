.class  Lcom/twidroid/activity/MutedUsers$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/twidroid/activity/MutedUsers;
.method constructor <init>(Lcom/twidroid/activity/MutedUsers;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$10;->a:Lcom/twidroid/activity/MutedUsers;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/MutedUsers$10; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$10;->a:Lcom/twidroid/activity/MutedUsers;
invoke-virtual {v0}, Lcom/twidroid/activity/MutedUsers;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
sub-int v0, p3, v0
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers$10;->a:Lcom/twidroid/activity/MutedUsers;
iget-object v1, v1, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/a;
iget-object v0, v0, Lcom/twidroid/model/a;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers$10;->a:Lcom/twidroid/activity/MutedUsers;
const/4 v2, -0x1
const-string v3, "mute screen"
const/4 v4, 0x0
invoke-virtual {v1, v0, v2, v3, v4}, Lcom/twidroid/activity/MutedUsers;->a(Ljava/lang/String;ILjava/lang/String;Lcom/twidroid/activity/aa;)V
const-string v1, " - Lcom/twidroid/activity/MutedUsers$10; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
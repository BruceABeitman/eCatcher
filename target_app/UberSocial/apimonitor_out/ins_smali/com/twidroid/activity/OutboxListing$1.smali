.class  Lcom/twidroid/activity/OutboxListing$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/twidroid/activity/OutboxListing;
.method constructor <init>(Lcom/twidroid/activity/OutboxListing;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/OutboxListing$1;->a:Lcom/twidroid/activity/OutboxListing;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/OutboxListing$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/activity/n;
iget-object v1, p0, Lcom/twidroid/activity/OutboxListing$1;->a:Lcom/twidroid/activity/OutboxListing;
iget-object v2, p0, Lcom/twidroid/activity/OutboxListing$1;->a:Lcom/twidroid/activity/OutboxListing;
invoke-direct {v0, v1, v2, p4, p5}, Lcom/twidroid/activity/n;-><init>(Lcom/twidroid/activity/OutboxListing;Landroid/content/Context;J)V
invoke-virtual {v0}, Lcom/twidroid/activity/n;->show()V
const-string v1, " - Lcom/twidroid/activity/OutboxListing$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class  Lcom/fsck/k9/activity/ManageIdentities$1;
.super Ljava/lang/Object;
.source "ManageIdentities.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/fsck/k9/activity/ManageIdentities;
.method constructor <init>(Lcom/fsck/k9/activity/ManageIdentities;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/ManageIdentities$1;->this$0:Lcom/fsck/k9/activity/ManageIdentities;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/ManageIdentities$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/ManageIdentities$1;->this$0:Lcom/fsck/k9/activity/ManageIdentities;
#calls: Lcom/fsck/k9/activity/ManageIdentities;->editItem(I)V
invoke-static {v0, p3}, Lcom/fsck/k9/activity/ManageIdentities;->access$000(Lcom/fsck/k9/activity/ManageIdentities;I)V
const-string v1, " - Lcom/fsck/k9/activity/ManageIdentities$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
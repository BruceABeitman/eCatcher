.class  Lcom/fsck/k9/activity/FolderList$2;
.super Ljava/lang/Object;
.source "FolderList.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$2;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/FolderList$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$2;->this$0:Lcom/fsck/k9/activity/FolderList;
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$2;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$2;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-static {v2}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-result-object v2
invoke-virtual {v2, p4, p5}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(J)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/activity/MessageList;->actionHandleFolder(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
const-string v1, " - Lcom/fsck/k9/activity/FolderList$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class  Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;
.super Ljava/lang/Object;
.source "FolderList.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->notifyDataSetChanged()V
return-void
.end method
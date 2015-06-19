.class  Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;
.super Ljava/lang/Object;
.source "FolderList.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
.field final synthetic val$folder:Ljava/lang/String;
.field final synthetic val$loading:Z
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Ljava/lang/String;Z)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iput-object p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->val$folder:Ljava/lang/String;
iput-boolean p3, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->val$loading:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->val$folder:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
move-result-object v0
if-eqz v0, :cond_14
iget-boolean v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->val$loading:Z
iput-boolean v1, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->loading:Z
:cond_14
return-void
.end method
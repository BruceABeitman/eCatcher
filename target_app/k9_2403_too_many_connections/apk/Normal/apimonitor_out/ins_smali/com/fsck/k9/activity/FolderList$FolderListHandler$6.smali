.class  Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;
.super Ljava/lang/Object;
.source "FolderList.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
.field final synthetic val$progress:Z
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Z)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iput-boolean p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->val$progress:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
iget-boolean v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->val$progress:Z
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->setProgressBarIndeterminateVisibility(Z)V
return-void
.end method
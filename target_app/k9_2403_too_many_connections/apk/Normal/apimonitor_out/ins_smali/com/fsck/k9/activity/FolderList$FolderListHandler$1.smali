.class  Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;
.super Ljava/lang/Object;
.source "FolderList.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 9
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-result-object v1
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v3, v3, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
const v4, 0x7f08000c
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
iget-object v7, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v7, v7, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v7}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v7
invoke-virtual {v7}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-virtual {v3, v4, v5}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v4, v4, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mUnreadMessageCount:I
invoke-static {v4}, Lcom/fsck/k9/activity/FolderList;->access$100(Lcom/fsck/k9/activity/FolderList;)I
move-result v4
invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/activity/ActivityListener;->formatHeader(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/FolderList;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
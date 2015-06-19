.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->newFolders(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

.field final synthetic val$newFolders:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iput-object p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->val$newFolders:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v0

    #getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v0

    #getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->val$newFolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    return-void
.end method

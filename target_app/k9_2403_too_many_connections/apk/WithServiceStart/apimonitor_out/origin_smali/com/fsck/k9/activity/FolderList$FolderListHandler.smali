.class Lcom/fsck/k9/activity/FolderList$FolderListHandler;
.super Landroid/os/Handler;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/FolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public accountSizeChanged(JJ)V
    .registers 12

    iget-object v6, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;JJ)V

    invoke-virtual {v6, v0}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dataChanged()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public folderLoading(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public newFolders(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public progress(Z)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshTitle()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public workingAccount(I)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;I)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

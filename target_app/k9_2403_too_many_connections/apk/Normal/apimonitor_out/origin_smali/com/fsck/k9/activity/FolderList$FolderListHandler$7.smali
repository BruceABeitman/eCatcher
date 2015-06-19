.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

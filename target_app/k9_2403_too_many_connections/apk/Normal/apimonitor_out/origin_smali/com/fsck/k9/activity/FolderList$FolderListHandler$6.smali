.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

.field final synthetic val$progress:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Z)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iput-boolean p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->val$progress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    iget-boolean v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->val$progress:Z

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

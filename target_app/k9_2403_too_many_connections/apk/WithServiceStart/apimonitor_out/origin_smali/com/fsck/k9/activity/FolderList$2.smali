.class Lcom/fsck/k9/activity/FolderList$2;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList;->initializeActivityView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$2;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

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

    return-void
.end method

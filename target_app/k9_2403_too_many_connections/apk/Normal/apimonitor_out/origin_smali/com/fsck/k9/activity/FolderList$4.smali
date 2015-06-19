.class Lcom/fsck/k9/activity/FolderList$4;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList;->createMarkAllAsReadDialog()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$4;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$4;->this$0:Lcom/fsck/k9/activity/FolderList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->dismissDialog(I)V

    :try_start_6
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$4;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$4;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$4;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
    invoke-static {v2}, Lcom/fsck/k9/activity/FolderList;->access$600(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->markAllMessagesRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$4;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$600(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->unreadMessageCount:I

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$4;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33
.end method

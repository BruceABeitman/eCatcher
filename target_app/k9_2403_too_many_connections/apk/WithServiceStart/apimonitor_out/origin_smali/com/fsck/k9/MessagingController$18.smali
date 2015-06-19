.class Lcom/fsck/k9/MessagingController$18;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->getFolderUnreadMessageCount(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$l:Lcom/fsck/k9/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 5

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$18;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$18;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$18;->val$folderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/MessagingController$18;->val$l:Lcom/fsck/k9/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/MessagingController$18;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController$18;->this$0:Lcom/fsck/k9/MessagingController;

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v4}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/MessagingController$18;->val$folderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I
    :try_end_1a
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1a} :catch_25

    move-result v2

    :goto_1b
    iget-object v3, p0, Lcom/fsck/k9/MessagingController$18;->val$l:Lcom/fsck/k9/MessagingListener;

    iget-object v4, p0, Lcom/fsck/k9/MessagingController$18;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$18;->val$folderName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Lcom/fsck/k9/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    return-void

    :catch_25
    move-exception v3

    move-object v1, v3

    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count not get unread count for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$18;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

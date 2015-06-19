.class Lcom/fsck/k9/MessagingController$5;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->searchLocalMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/MessagingListener;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$5;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$5;->val$listener:Lcom/fsck/k9/MessagingListener;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$5;->val$account:Lcom/fsck/k9/Account;

    iput-object p4, p0, Lcom/fsck/k9/MessagingController$5;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$5;->this$0:Lcom/fsck/k9/MessagingController;

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v9}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v1

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$5;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v10, p0, Lcom/fsck/k9/MessagingController$5;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v9, v10, v12}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    move-object v2, v1

    array-length v5, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v5, :cond_61

    aget-object v0, v2, v4

    new-instance v8, Lcom/fsck/k9/MessagingController$5$1;

    invoke-direct {v8, p0, v0}, Lcom/fsck/k9/MessagingController$5$1;-><init>(Lcom/fsck/k9/MessagingController$5;Lcom/fsck/k9/Account;)V

    :try_start_26
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/MessagingController$5;->this$0:Lcom/fsck/k9/MessagingController;

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v10}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/store/LocalStore;

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$5;->val$query:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/fsck/k9/mail/store/LocalStore;->searchForMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_5a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_43

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$5;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v9, v0, v12}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesFinished(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :catch_43
    move-exception v9

    move-object v3, v9

    :try_start_45
    iget-object v9, p0, Lcom/fsck/k9/MessagingController$5;->val$listener:Lcom/fsck/k9/MessagingListener;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v0, v10, v11}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$5;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v9, v0, v3}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_5a

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$5;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v9, v0, v12}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesFinished(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_40

    :catchall_5a
    move-exception v9

    iget-object v10, p0, Lcom/fsck/k9/MessagingController$5;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-virtual {v10, v0, v12}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesFinished(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    throw v9

    :cond_61
    return-void
.end method

.class Lcom/fsck/k9/MessagingController$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;

.field final synthetic val$refreshRemote:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;Z)V
    .registers 5

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$1;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    iput-boolean p4, p0, Lcom/fsck/k9/MessagingController$1;->val$refreshRemote:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v8}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/MessagingListener;

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v3, v8}, Lcom/fsck/k9/MessagingListener;->listFoldersStarted(Lcom/fsck/k9/Account;)V

    goto :goto_a

    :cond_1c
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v8, :cond_27

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v8, v9}, Lcom/fsck/k9/MessagingListener;->listFoldersStarted(Lcom/fsck/k9/Account;)V

    :cond_27
    const/4 v6, 0x0

    :try_start_28
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$1;->this$0:Lcom/fsck/k9/MessagingController;

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v9}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Store;->getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/fsck/k9/MessagingController$1;->val$refreshRemote:Z

    if-nez v8, :cond_45

    if-eqz v6, :cond_45

    array-length v8, v6

    if-nez v8, :cond_5f

    :cond_45
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    iget-object v10, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    #calls: Lcom/fsck/k9/MessagingController;->doRefreshRemote(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    invoke-static {v8, v9, v10}, Lcom/fsck/k9/MessagingController;->access$100(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4e} :catch_7b

    if-eqz v6, :cond_11a

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_53
    if-ge v2, v4, :cond_11a

    aget-object v5, v0, v2

    if-eqz v5, :cond_5c

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_5f
    :try_start_5f
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v8}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/MessagingListener;

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v3, v8, v6}, Lcom/fsck/k9/MessagingListener;->listFolders(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Folder;)V
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7a} :catch_7b

    goto :goto_69

    :catch_7b
    move-exception v8

    move-object v1, v8

    :try_start_7d
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v8}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/MessagingListener;

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/fsck/k9/MessagingListener;->listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_7d .. :try_end_9c} :catchall_9d

    goto :goto_87

    :catchall_9d
    move-exception v8

    if-eqz v6, :cond_f2

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_a3
    if-ge v2, v4, :cond_f2

    aget-object v5, v0, v2

    if-eqz v5, :cond_ac

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    :cond_af
    :try_start_af
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v8, :cond_ba

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v8, v9, v6}, Lcom/fsck/k9/MessagingListener;->listFolders(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Folder;)V
    :try_end_ba
    .catchall {:try_start_af .. :try_end_ba} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_ba} :catch_7b

    :cond_ba
    if-eqz v6, :cond_f3

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_bf
    if-ge v2, v4, :cond_f3

    aget-object v5, v0, v2

    if-eqz v5, :cond_c8

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_c8
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    :cond_cb
    :try_start_cb
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v8, :cond_da

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/fsck/k9/MessagingListener;->listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    :cond_da
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v8, v9, v1}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_e1
    .catchall {:try_start_cb .. :try_end_e1} :catchall_9d

    if-eqz v6, :cond_11a

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_e6
    if-ge v2, v4, :cond_11a

    aget-object v5, v0, v2

    if-eqz v5, :cond_ef

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_ef
    add-int/lit8 v2, v2, 0x1

    goto :goto_e6

    :cond_f2
    throw v8

    :cond_f3
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v8}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_fd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/MessagingListener;

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v3, v8}, Lcom/fsck/k9/MessagingListener;->listFoldersFinished(Lcom/fsck/k9/Account;)V

    goto :goto_fd

    :cond_10f
    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v8, :cond_11a

    iget-object v8, p0, Lcom/fsck/k9/MessagingController$1;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v9, p0, Lcom/fsck/k9/MessagingController$1;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v8, v9}, Lcom/fsck/k9/MessagingListener;->listFoldersFinished(Lcom/fsck/k9/Account;)V

    :cond_11a
    return-void
.end method

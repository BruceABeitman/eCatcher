.class Lcom/fsck/k9/MessagingController$13;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->loadMessageForViewRemote(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    .registers 6

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    const/4 v15, 0x0

    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v3, v0

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v3}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v13, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object v12, v0

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v12, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v12, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v14

    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v14, v2}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_10e

    new-instance v9, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v9}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v9, v2}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v9, v2}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/fsck/k9/mail/Message;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v9, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    :goto_54
    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v14, v2}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-nez v2, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v3, v0

    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    sget-object v6, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Flag;Z)V

    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v2, v0

    if-eqz v2, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5, v14}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_176

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v11, v2, v3, v4, v14}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_d3
    .catchall {:try_start_2 .. :try_end_d3} :catchall_102
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d3} :catch_d4

    goto :goto_b5

    :catch_d4
    move-exception v2

    move-object v8, v2

    :try_start_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1df

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v11, v2, v3, v4, v8}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_101
    .catchall {:try_start_d6 .. :try_end_101} :catchall_102

    goto :goto_e3

    :catchall_102
    move-exception v2

    if-eqz v15, :cond_108

    invoke-virtual {v15}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_108
    if-eqz v12, :cond_10d

    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_10d
    throw v2

    :cond_10e
    :try_start_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v3, v0

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v3}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v15

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v15, v2}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v15, v2}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v16

    new-instance v9, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v9}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v9, v2}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/fsck/k9/mail/Message;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v9, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/fsck/k9/mail/Message;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    invoke-virtual {v12, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v12, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v14

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/fsck/k9/mail/Message;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v9, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    goto/16 :goto_54

    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v2, v0

    if-eqz v2, :cond_1a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5, v14}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    :cond_1a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/MessagingListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v11, v2, v3, v4, v14}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_1d3
    .catchall {:try_start_10e .. :try_end_1d3} :catchall_102
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_1d3} :catch_d4

    goto :goto_1b5

    :cond_1d4
    if-eqz v15, :cond_1d9

    invoke-virtual {v15}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_1d9
    if-eqz v12, :cond_1de

    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_1de
    :goto_1de
    return-void

    :cond_1df
    :try_start_1df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v2, v0

    if-eqz v2, :cond_211

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_211

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$listener:Lcom/fsck/k9/MessagingListener;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$folder:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$uid:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5, v8}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    move-object v3, v0

    invoke-virtual {v2, v3, v8}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_21e
    .catchall {:try_start_1df .. :try_end_21e} :catchall_102

    if-eqz v15, :cond_223

    invoke-virtual {v15}, Lcom/fsck/k9/mail/Folder;->close()V

    :cond_223
    if-eqz v12, :cond_1de

    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    goto :goto_1de
.end method

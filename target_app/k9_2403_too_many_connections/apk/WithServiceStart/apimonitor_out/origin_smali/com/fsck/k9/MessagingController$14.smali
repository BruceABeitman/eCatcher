.class Lcom/fsck/k9/MessagingController$14;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->loadMessageForView(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
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

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v1}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v11

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v10

    check-cast v10, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v10, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    if-eqz v12, :cond_31

    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7a

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message not found: folder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_58

    :catch_58
    move-exception v0

    move-object v6, v0

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_64
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_184

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/MessagingListener;

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v2, v6}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64

    :cond_7a
    :try_start_7a
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_84
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/MessagingListener;

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v2, v12}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewHeadersAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_84

    :cond_9a
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewHeadersAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    :cond_b7
    sget-object v0, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    #calls: Lcom/fsck/k9/MessagingController;->loadMessageForViewRemote(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingController;->access$700(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    :cond_cf
    :goto_cf
    return-void

    :cond_d0
    new-instance v7, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v7}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v7, v0}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v7, v0}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v7, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V

    sget-object v0, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v0

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/fsck/k9/mail/Message;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Flag;Z)V

    :cond_108
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_112
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/MessagingListener;

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v2, v12}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_112

    :cond_128
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_145

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    :cond_145
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_14f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_165

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/MessagingListener;

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v2, v12}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_14f

    :cond_165
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_182} :catch_58

    goto/16 :goto_cf

    :cond_184
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    if-eqz v0, :cond_1a1

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a1

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->val$listener:Lcom/fsck/k9/MessagingListener;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/MessagingController$14;->val$folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/MessagingController$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/fsck/k9/MessagingListener;->loadMessageForViewFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a1
    iget-object v0, p0, Lcom/fsck/k9/MessagingController$14;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, v6}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    goto/16 :goto_cf
.end method

.class Lcom/fsck/k9/MessagingController$7;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$largeMessages:Ljava/util/ArrayList;

.field final synthetic val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field final synthetic val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$remoteFolder:Lcom/fsck/k9/mail/Folder;

.field final synthetic val$smallMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/fsck/k9/mail/Folder;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$7;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$7;->val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/fsck/k9/MessagingController$7;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p5, p0, Lcom/fsck/k9/MessagingController$7;->val$largeMessages:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/fsck/k9/MessagingController$7;->val$smallMessages:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/fsck/k9/MessagingController$7;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    iput-object p8, p0, Lcom/fsck/k9/MessagingController$7;->val$folder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageFinished(Lcom/fsck/k9/mail/Message;II)V
    .registers 13

    const-string v8, "k9"

    const-string v5, ":"

    :try_start_4
    sget-object v5, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->isNotifySelfNewMail()Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    move-result v5

    if-nez v5, :cond_25

    :cond_20
    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_25
    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/fsck/k9/mail/Message;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSize()I

    move-result v5

    const v6, 0xc800

    if-le v5, v6, :cond_df

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$largeMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3e
    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    iget-object v6, p0, Lcom/fsck/k9/MessagingController$7;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPushState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/fsck/k9/mail/Folder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_51

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v5, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setPushState(Ljava/lang/String;)V

    :cond_51
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_de

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v5

    if-eqz v5, :cond_de

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v6, p0, Lcom/fsck/k9/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    iget-object v7, p0, Lcom/fsck/k9/MessagingController$7;->val$folder:Ljava/lang/String;

    #calls: Lcom/fsck/k9/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z
    invoke-static {v5, v6, v7, p1}, Lcom/fsck/k9/MessagingController;->access$200(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v5

    if-nez v5, :cond_de

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v3

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->this$0:Lcom/fsck/k9/MessagingController;

    #calls: Lcom/fsck/k9/MessagingController;->syncFlags(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z
    invoke-static {v5, v3, p1}, Lcom/fsck/k9/MessagingController;->access$300(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_b0

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "About to notify listeners that we got a new unsynced message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/MessagingController$7;->val$folder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v5}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/MessagingListener;

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/MessagingController$7;->val$folder:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxAddOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_cd} :catch_ce

    goto :goto_ba

    :catch_ce
    move-exception v5

    move-object v0, v5

    const-string v5, "k9"

    const-string v5, "Error while storing downloaded message."

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->this$0:Lcom/fsck/k9/MessagingController;

    iget-object v6, p0, Lcom/fsck/k9/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v5, v6, v0}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    :cond_de
    return-void

    :cond_df
    :try_start_df
    iget-object v5, p0, Lcom/fsck/k9/MessagingController$7;->val$smallMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e4} :catch_ce

    goto/16 :goto_3e
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public messagesFinished(I)V
    .registers 2

    return-void
.end method

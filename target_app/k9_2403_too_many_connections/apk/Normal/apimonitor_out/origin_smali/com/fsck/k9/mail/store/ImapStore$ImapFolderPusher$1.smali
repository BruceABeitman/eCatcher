.class Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v13}, Lcom/fsck/k9/mail/PushReceiver;->acquireWakeLock()V

    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_2f

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pusher starting for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3fc

    const/4 v6, -0x1

    :try_start_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/fsck/k9/mail/PushReceiver;->getPushState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;

    move-result-object v7

    iget v6, v7, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I

    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_87

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got oldUidNext "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_87} :catch_11e

    :cond_87
    :goto_87
    :try_start_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    sget-object v14, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v13, v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->internalOpen(Lcom/fsck/k9/mail/Folder$OpenMode;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v13, :cond_143

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    const-string v14, "Could not establish connection for IDLE"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v13, Lcom/fsck/k9/mail/MessagingException;

    const-string v14, "Could not establish connection for IDLE"

    invoke-direct {v13, v14}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b0} :catch_b0

    :catch_b0
    move-exception v13

    move-object v2, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v13}, Lcom/fsck/k9/mail/PushReceiver;->acquireWakeLock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    :try_start_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->close()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ed} :catch_36a

    :goto_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_38f

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got exception while idling, but stop is set for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :catch_11e
    move-exception v13

    move-object v2, v13

    :try_start_120
    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to get oldUidNext for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_87

    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->isIdleCapable()Z

    move-result v13

    if-nez v13, :cond_1a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMAP server is not IDLE capable: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    iget-object v15, v15, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v13, Lcom/fsck/k9/mail/MessagingException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMAP server is not IDLE capable:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    iget-object v15, v15, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1a8
    if-eqz v9, :cond_1b2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    invoke-virtual {v13, v9}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;

    :cond_1b2
    move v10, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->uidNext:I

    const/16 v14, 0xa

    sub-int/2addr v13, v14

    if-ge v10, v13, :cond_1ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->uidNext:I

    const/16 v14, 0xa

    sub-int v10, v13, v14

    :cond_1ca
    const/4 v13, 0x1

    if-ge v10, v13, :cond_1ce

    const/4 v10, 0x1

    :cond_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->uidNext:I

    if-le v13, v10, :cond_261

    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_217

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Needs sync from uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    iget v15, v15, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->uidNext:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_217
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v11, v10

    :goto_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->uidNext:I

    if-ge v11, v13, :cond_250

    new-instance v4, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-direct {v4, v13, v14, v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_21d

    :cond_250
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    const/4 v14, 0x1

    #calls: Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->pushMessages(Ljava/util/List;Z)V
    invoke-static {v13, v5, v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->access$2100(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;Ljava/util/List;Z)V

    goto/16 :goto_2f

    :cond_261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-nez v13, :cond_2f

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2ef

    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_2b6

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Processing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    iget-object v15, v15, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from previous commands for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b6
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-nez v13, :cond_2e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    invoke-virtual {v13, v12}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->processUntaggedResponses(Ljava/util/List;)V

    :cond_2e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v14, Lcom/fsck/k9/mail/store/ImapStore;->NORMAL_DELAY_TIME:I

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_2f

    :cond_2ef
    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_314

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "About to IDLE for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->doneSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    const v14, 0x1a8ce0

    invoke-virtual {v13, v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->setReadTimeout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    const-string v14, "IDLE"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_368} :catch_b0

    goto/16 :goto_2c2

    :catch_36a
    move-exception v13

    move-object v3, v13

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got exception while closing for exception for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ed

    :cond_38f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Push error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got exception while idling for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    int-to-long v14, v1

    invoke-interface {v13, v14, v15}, Lcom/fsck/k9/mail/PushReceiver;->sleep(J)V

    mul-int/lit8 v1, v1, 0x2

    sget v13, Lcom/fsck/k9/mail/store/ImapStore;->MAX_DELAY_TIME:I

    if-le v1, v13, :cond_3f0

    sget v1, Lcom/fsck/k9/mail/store/ImapStore;->MAX_DELAY_TIME:I

    :cond_3f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_2f

    :cond_3fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    :try_start_410
    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_43b

    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pusher for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is exiting"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->close()V
    :try_end_443
    .catchall {:try_start_410 .. :try_end_443} :catchall_47c
    .catch Ljava/lang/Exception; {:try_start_410 .. :try_end_443} :catch_44e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v13}, Lcom/fsck/k9/mail/PushReceiver;->releaseWakeLock()V

    :goto_44d
    return-void

    :catch_44e
    move-exception v13

    move-object v3, v13

    :try_start_450
    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got exception while closing for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_471
    .catchall {:try_start_450 .. :try_end_471} :catchall_47c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v13, v0

    iget-object v13, v13, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v13}, Lcom/fsck/k9/mail/PushReceiver;->releaseWakeLock()V

    goto :goto_44d

    :catchall_47c
    move-exception v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object v14, v0

    iget-object v14, v14, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v14}, Lcom/fsck/k9/mail/PushReceiver;->releaseWakeLock()V

    throw v13
.end method

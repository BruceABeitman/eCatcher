.class public Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
.super Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapFolderPusher"
.end annotation


# instance fields
.field final delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

.field final doneSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final idling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field listeningThread:Ljava/lang/Thread;

.field final receiver:Lcom/fsck/k9/mail/PushReceiver;

.field final stop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field storedUntaggedResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/PushReceiver;)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->doneSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/fsck/k9/mail/store/ImapStore;->NORMAL_DELAY_TIME:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    iput-object p4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    return-void
.end method

.method static synthetic access$2100(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->pushMessages(Ljava/util/List;Z)V

    return-void
.end method

.method private pushMessages(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v2, p0, p1}, Lcom/fsck/k9/mail/PushReceiver;->messagesArrived(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_11

    :goto_8
    if-eqz v1, :cond_15

    throw v1

    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v2, p0, p1}, Lcom/fsck/k9/mail/PushReceiver;->messagesFlagsChanged(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_8

    :catch_11
    move-exception v2

    move-object v0, v2

    move-object v1, v0

    goto :goto_8

    :cond_15
    return-void
.end method

.method private sendContinuation(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    #calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendContinuation(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$2000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private sendDone()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->doneSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->setReadTimeout(I)V

    const-string v0, "DONE"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->sendContinuation(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private syncMessages(IIZ)V
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getMessages(IIZLcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_19

    aget-object v4, v0, v2

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    invoke-direct {p0, v6, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->pushMessages(Ljava/util/List;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v7

    move-object v1, v7

    iget-object v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    const-string v8, "Exception while processing Push untagged responses"

    invoke-interface {v7, v8, v1}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1c
.end method

.method private syncMessages(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v7, v8}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getMessages(Ljava/util/List;ZLcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_19

    aget-object v4, v0, v2

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->pushMessages(Ljava/util/List;Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v7

    move-object v1, v7

    iget-object v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    const-string v8, "Exception while processing Push untagged responses"

    invoke-interface {v7, v8, v1}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1d
.end method


# virtual methods
.method public bridge synthetic appendMessages([Lcom/fsck/k9/mail/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    return-void
.end method

.method public bridge synthetic close()V
    .registers 1

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->close()V

    return-void
.end method

.method public bridge synthetic copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    return-void
.end method

.method public bridge synthetic create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic delete(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->delete(Z)V

    return-void
.end method

.method public bridge synthetic delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic exists()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic expunge()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->expunge()V

    return-void
.end method

.method public bridge synthetic fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    return-void
.end method

.method public bridge synthetic getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageCount()I
    .registers 2

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessageCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMessages(IILcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages(IILcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPermanentFlags()[Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrefixedName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUnreadMessageCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getUnreadMessageCount()I

    move-result v0

    return v0
.end method

.method public handleAsyncUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    .registers 10

    const/4 v6, 0x1

    const-string v7, "Exception while sending DONE for "

    const-string v5, "k9"

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_21

    const-string v3, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got async response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-ne v3, v6, :cond_75

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_53

    const-string v3, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got async untagged response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but stop is set for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :try_start_53
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->sendDone()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    :cond_56
    :goto_56
    return-void

    :catch_57
    move-exception v0

    const-string v3, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while sending DONE for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :cond_75
    iget-object v3, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v3, :cond_56

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v3

    if-le v3, v6, :cond_f1

    const/4 v2, 0x0

    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "EXISTS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    const-string v3, "EXPUNGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    const-string v3, "FETCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    :cond_9c
    if-nez v2, :cond_a4

    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v3}, Lcom/fsck/k9/mail/PushReceiver;->acquireWakeLock()V

    const/4 v2, 0x1

    :cond_a4
    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_ce

    const-string v3, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got useful async untagged response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    :try_start_ce
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->sendDone()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_d2

    goto :goto_56

    :catch_d2
    move-exception v0

    const-string v3, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while sending DONE for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    :cond_f1
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v3

    if-lez v3, :cond_56

    const-string v3, "idling"

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_124

    const-string v3, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Idling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v3}, Lcom/fsck/k9/mail/PushReceiver;->releaseWakeLock()V

    goto/16 :goto_56
.end method

.method protected handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    .registers 6

    const/4 v2, 0x1

    iget-object v1, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v1, :cond_51

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v1

    if-le v1, v2, :cond_51

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FETCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "EXPUNGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "EXISTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_27
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_49

    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for later processing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->handlePossibleUidNext(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    :cond_51
    return-void
.end method

.method public bridge synthetic internalOpen(Lcom/fsck/k9/mail/Folder$OpenMode;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->internalOpen(Lcom/fsck/k9/mail/Folder$OpenMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isOpen()Z
    .registers 2

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    return-void
.end method

.method public bridge synthetic open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    return-void
.end method

.method protected processUntaggedResponse(ILcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Ljava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-super {p0, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    const/4 v4, 0x0

    iget-object v8, p2, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v8, :cond_cc

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_cc

    const/4 v8, 0x1

    :try_start_10
    invoke-virtual {p2, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "FETCH"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I

    move-result v5

    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v8, :cond_4b

    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got untagged FETCH for msgseq "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    const-string v8, "EXPUNGE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I

    move-result v5

    if-gt v5, p1, :cond_6c

    const/4 v4, -0x1

    :cond_6c
    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v8, :cond_96

    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got untagged EXPUNGE for msgseq "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9f
    :goto_9f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v5, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v5, :cond_9f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_9f

    :cond_c9
    invoke-interface {p3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_cc} :catch_cd

    :cond_cc
    :goto_cc
    return v4

    :catch_cd
    move-exception v8

    move-object v0, v8

    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not handle untagged FETCH for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc
.end method

.method protected processUntaggedResponses(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mMessageCount:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    const/4 v4, 0x1

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    invoke-virtual {p0, v2, v3, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->processUntaggedResponse(ILcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Ljava/util/List;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_10

    :cond_22
    if-nez v4, :cond_33

    if-gez v2, :cond_27

    const/4 v2, 0x0

    :cond_27
    iget v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mMessageCount:I

    if-le v5, v2, :cond_33

    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mMessageCount:I

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->syncMessages(IIZ)V

    :cond_33
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_5d

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " messages needing flag sync for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_66

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->syncMessages(Ljava/util/List;)V

    :cond_66
    return-void
.end method

.method public refresh()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v0}, Lcom/fsck/k9/mail/PushReceiver;->acquireWakeLock()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->sendDone()V

    :cond_10
    return-void
.end method

.method public bridge synthetic setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method public bridge synthetic setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method public start()V
    .registers 3

    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;-><init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .registers 4

    const-string v2, "k9"

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_11
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_3b

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_35

    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing mConnection to stop pushing for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    #calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
    invoke-static {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    :goto_3a
    return-void

    :cond_3b
    const-string v0, "k9"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to interrupt null mConnection to stop pushing on folderPusher for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

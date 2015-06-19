.class public Lcom/sun/mail/pop3/POP3Folder;
.super Ljavax/mail/Folder;
.source "SourceFile"


# instance fields
.field private doneUidl:Z

.field private exists:Z

.field private message_cache:Ljava/util/Vector;

.field private name:Ljava/lang/String;

.field private opened:Z

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private size:I

.field private total:I


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    :cond_17
    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .registers 4

    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Append not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkClosed()V
    .registers 3

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method checkOpen()V
    .registers 3

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method checkReadable()V
    .registers 3

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method

.method checkWritable()V
    .registers 3

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method public declared-synchronized close(Z)V
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_78

    :try_start_5
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->rset()Z

    :cond_12
    if-eqz p1, :cond_21

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    :goto_19
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_3c

    :cond_21
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_62

    const/4 v0, 0x0

    :try_start_27
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_78

    :goto_3a
    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    if-eqz v0, :cond_55

    sget-object v2, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2}, Lcom/sun/mail/pop3/POP3Message;->isSet(Ljavax/mail/Flags$Flag;)Z
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4b} :catch_62

    move-result v0

    if-eqz v0, :cond_55

    :try_start_4e
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lcom/sun/mail/pop3/Protocol;->dele(I)Z
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_55} :catch_59

    :cond_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    :catch_59
    move-exception v0

    :try_start_5a
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Exception deleting messages during close"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_62} :catch_62

    :catch_62
    move-exception v0

    const/4 v0, 0x0

    :try_start_64
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_78

    goto :goto_3a

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_7b
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :try_start_7e
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    throw v1
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_78
.end method

.method public create(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    iget-object v0, v0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_28

    const/4 v2, 0x2

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_25

    :goto_1d
    if-nez v0, :cond_24

    new-instance v0, Lcom/sun/mail/pop3/POP3Message;

    invoke-direct {v0, p0, p2}, Lcom/sun/mail/pop3/POP3Message;-><init>(Ljavax/mail/Folder;I)V

    :cond_24
    return-object v0

    :catch_25
    move-exception v0

    move-object v0, v1

    goto :goto_1d

    :cond_28
    move-object v0, v1

    goto :goto_1d
.end method

.method public delete(Z)Z
    .registers 4

    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "delete"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    return v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .registers 3

    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Expunge not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    if-nez v0, :cond_45

    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_32

    :try_start_19
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0, v3}, Lcom/sun/mail/pop3/Protocol;->uidl([Ljava/lang/String;)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_32
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_1e} :catch_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_35

    move-result v0

    if-nez v0, :cond_3e

    :cond_21
    monitor-exit p0

    return-void

    :catch_23
    move-exception v0

    const/4 v1, 0x0

    :try_start_25
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_35
    move-exception v0

    :try_start_36
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error getting UIDL"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3e
    move v2, v1

    :goto_3f
    array-length v0, v3

    if-lt v2, v0, :cond_60

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    :cond_45
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_4d
    array-length v0, p1
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_32

    if-ge v1, v0, :cond_21

    :try_start_50
    aget-object v0, p1, v1

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/sun/mail/pop3/POP3Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Message;->getSize()I
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_32
    .catch Ljavax/mail/MessageRemovedException; {:try_start_50 .. :try_end_5c} :catch_75

    :goto_5c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4d

    :cond_60
    :try_start_60
    aget-object v0, v3, v2

    if-nez v0, :cond_68

    :goto_64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3f

    :cond_68
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    aget-object v4, v3, v2

    iput-object v4, v0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_74
    .catchall {:try_start_60 .. :try_end_74} :catchall_32

    goto :goto_64

    :catch_75
    move-exception v0

    goto :goto_5c
.end method

.method protected finalize()V
    .registers 2

    invoke-super {p0}, Ljavax/mail/Folder;->finalize()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    return-void
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 4

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    if-nez v0, :cond_1b

    invoke-virtual {p0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_6

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .registers 3

    new-instance v1, Lcom/sun/mail/pop3/DefaultFolder;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-direct {v1, v0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v1
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .registers 2

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    return-object v0
.end method

.method getProtocol()Lcom/sun/mail/pop3/Protocol;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    return-object v0
.end method

.method public getSeparator()C
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSize()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizes()[I
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    new-array v3, v0, [I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_64

    :try_start_9
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_57
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_48

    move-result-object v2

    :try_start_f
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_71
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_78

    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_73
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_7c

    move-result-object v1

    if-nez v1, :cond_26

    if-eqz v0, :cond_1f

    :try_start_1c
    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_64
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_6d

    :cond_1f
    :goto_1f
    if-eqz v2, :cond_24

    :try_start_21
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_64
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_6f

    :cond_24
    :goto_24
    monitor-exit p0

    return-object v3

    :cond_26
    :try_start_26
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v1, :cond_14

    iget v5, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    if-gt v1, v5, :cond_14

    add-int/lit8 v1, v1, -0x1

    aput v4, v3, v1
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_45} :catch_46
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_45} :catch_7c

    goto :goto_14

    :catch_46
    move-exception v1

    goto :goto_14

    :catch_48
    move-exception v0

    move-object v0, v1

    :goto_4a
    if-eqz v0, :cond_4f

    :try_start_4c
    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_64
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_67

    :cond_4f
    :goto_4f
    if-eqz v1, :cond_24

    :try_start_51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_64
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_24

    :catch_55
    move-exception v0

    goto :goto_24

    :catchall_57
    move-exception v0

    move-object v2, v1

    :goto_59
    if-eqz v1, :cond_5e

    :try_start_5b
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_69

    :cond_5e
    :goto_5e
    if-eqz v2, :cond_63

    :try_start_60
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6b

    :cond_63
    :goto_63
    :try_start_63
    throw v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_67
    move-exception v0

    goto :goto_4f

    :catch_69
    move-exception v1

    goto :goto_5e

    :catch_6b
    move-exception v1

    goto :goto_63

    :catch_6d
    move-exception v0

    goto :goto_1f

    :catch_6f
    move-exception v0

    goto :goto_24

    :catchall_71
    move-exception v0

    goto :goto_59

    :catchall_73
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_59

    :catch_78
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_4a

    :catch_7c
    move-exception v1

    move-object v1, v2

    goto :goto_4a
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    check-cast p1, Lcom/sun/mail/pop3/POP3Message;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    :try_start_6
    iget-object v0, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {p1}, Lcom/sun/mail/pop3/POP3Message;->getMessageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->uidl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    :cond_18
    iget-object v0, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_2b
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_1a} :catch_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_2e

    monitor-exit p0

    return-object v0

    :catch_1c
    move-exception v0

    const/4 v1, 0x0

    :try_start_1e
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2e
    move-exception v0

    :try_start_2f
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error getting UIDL"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2b
.end method

.method public hasNewMessages()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Ljavax/mail/Store;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
    :try_end_14
    .catch Ljavax/mail/MessagingException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_5

    :catch_15
    move-exception v1

    goto :goto_5
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 4

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized listCommand()Ljava/io/InputStream;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    return-void
.end method

.method public declared-synchronized open(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkClosed()V

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    if-nez v0, :cond_13

    new-instance v0, Ljavax/mail/FolderNotFoundException;

    const-string v1, "folder is not INBOX"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->stat()Lcom/sun/mail/pop3/Status;

    move-result-object v0

    iget v1, v0, Lcom/sun/mail/pop3/Status;->total:I

    iput v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    iget v0, v0, Lcom/sun/mail/pop3/Status;->size:I

    iput v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I

    iput p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_10
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_49

    :try_start_30
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iget v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_10

    monitor-exit p0

    return-void

    :catch_49
    move-exception v0

    move-object v1, v0

    :try_start_4b
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_72
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_66

    :cond_54
    const/4 v0, 0x0

    :try_start_55
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    :goto_5e
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "Open failed"

    invoke-direct {v0, v2, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_66
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    goto :goto_5e

    :catchall_72
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    throw v1
    :try_end_7f
    .catchall {:try_start_55 .. :try_end_7f} :catchall_10
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .registers 4

    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "renameTo"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

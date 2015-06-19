.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final slop:I = 0x40


# instance fields
.field private blksize:I

.field private buf:[B

.field private bufcount:I

.field private bufpos:I

.field private max:I

.field private msg:Lcom/sun/mail/imap/IMAPMessage;

.field private peek:Z

.field private pos:I

.field private readbuf:Lcom/sun/mail/iap/ByteArray;

.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    return-void
.end method

.method private checkSeen()V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V
    :try_end_26
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_26} :catch_27

    goto :goto_5

    :catch_27
    move-exception v0

    goto :goto_5
.end method

.method private fill()V
    .registers 8

    const/4 v3, -0x1

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v0, v3, :cond_16

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-lt v0, v1, :cond_16

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    if-nez v0, :cond_25

    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/lit8 v1, v1, 0x40

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    :cond_25
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_2c
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    const-string v1, "No content for expunged message"

    invoke-direct {v0, v1}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_50
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2c .. :try_end_42} :catch_42
    .catch Ljavax/mail/FolderClosedException; {:try_start_2c .. :try_end_42} :catch_9a

    :catch_42
    move-exception v0

    :try_start_43
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_50
    move-exception v0

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_50

    throw v0

    :cond_53
    :try_start_53
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    iget v4, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v2, v3, :cond_6e

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-le v2, v3, :cond_6e

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    sub-int v4, v2, v3

    :cond_6e
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_7b
    .catchall {:try_start_53 .. :try_end_7b} :catchall_50
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_53 .. :try_end_7b} :catch_42
    .catch Ljavax/mail/FolderClosedException; {:try_start_53 .. :try_end_7b} :catch_9a

    move-result-object v0

    :goto_7c
    if-eqz v0, :cond_84

    :try_start_7e
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    if-nez v0, :cond_a9

    :cond_84
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_50

    :cond_8f
    :try_start_8f
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_50
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8f .. :try_end_98} :catch_42
    .catch Ljavax/mail/FolderClosedException; {:try_start_8f .. :try_end_98} :catch_9a

    move-result-object v0

    goto :goto_7c

    :catch_9a
    move-exception v0

    :try_start_9b
    new-instance v1, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :cond_a9
    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_9b .. :try_end_aa} :catchall_50

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v1, :cond_b1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    :cond_b1
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v0

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    goto/16 :goto_15
.end method

.method private forceCheckExpunged()V
    .registers 5

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_30
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_10} :catch_1f
    .catch Ljavax/mail/FolderClosedException; {:try_start_7 .. :try_end_10} :catch_33
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_10} :catch_43

    :goto_10
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_30

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    invoke-direct {v0}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>()V

    throw v0

    :catch_1f
    move-exception v0

    :try_start_20
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_30

    throw v0

    :catch_33
    move-exception v0

    :try_start_34
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_30

    :cond_42
    return-void

    :catch_43
    move-exception v0

    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    if-lt v0, v1, :cond_13

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_20

    if-lt v0, v1, :cond_13

    const/4 v0, -0x1

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    aget-byte v0, v0, v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_20

    and-int/lit16 v0, v0, 0xff

    goto :goto_11

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_15

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_24

    sub-int/2addr v0, v1

    if-gtz v0, :cond_15

    const/4 v0, -0x1

    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    if-ge v0, p3, :cond_27

    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_24

    goto :goto_13

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_27
    move v0, p3

    goto :goto_17
.end method

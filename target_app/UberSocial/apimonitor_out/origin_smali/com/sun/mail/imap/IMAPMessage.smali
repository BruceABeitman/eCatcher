.class public Lcom/sun/mail/imap/IMAPMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "SourceFile"


# static fields
.field private static EnvelopeCmd:Ljava/lang/String;


# instance fields
.field protected bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field protected envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field private headersLoaded:Z

.field private loadedHeaders:Ljava/util/Hashtable;

.field private peek:Z

.field private receivedDate:Ljava/util/Date;

.field protected sectionId:Ljava/lang/String;

.field private seqnum:I

.field private size:I

.field private subject:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ENVELOPE INTERNALDATE RFC822.SIZE"

    sput-object v0, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/IMAPFolder;II)V
    .registers 6

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    iput p3, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;)V
    .registers 4

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    return-void
.end method

.method private _getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    return-object v0
.end method

.method private _getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    return-object v0
.end method

.method private _getFlags()Ljavax/mail/Flags;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-object v0
.end method

.method private aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    goto :goto_3
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;
    .registers 2

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;
    .registers 2

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getFlags()Ljavax/mail/Flags;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .registers 2

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPMessage;)Z
    .registers 2

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->areHeadersLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/sun/mail/imap/IMAPMessage;)I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return v0
.end method

.method static synthetic access$5(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized areHeadersLoaded()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static craftHeaderCmd(Lcom/sun/mail/imap/protocol/IMAPProtocol;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_d
    const/4 v1, 0x0

    :goto_e
    array-length v2, p1

    if-lt v1, v2, :cond_29

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RFC822.HEADER.LINES ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_29
    if-lez v1, :cond_30

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_30
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_38
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c
.end method

.method static fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 20

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v1, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :cond_17
    sget-object v3, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v3

    if-eqz v3, :cond_29

    if-eqz v1, :cond_b3

    const-string v1, "FLAGS"

    :goto_25
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :cond_29
    sget-object v3, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v3

    if-eqz v3, :cond_3b

    if-eqz v1, :cond_b7

    const-string v1, "BODYSTRUCTURE"

    :goto_37
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :cond_3b
    sget-object v3, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v3

    if-eqz v3, :cond_4d

    if-eqz v1, :cond_bb

    const-string v1, "UID"

    :goto_49
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :cond_4d
    sget-object v3, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v3

    if-eqz v3, :cond_231

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_c1

    if-eqz v1, :cond_be

    const-string v1, "BODY.PEEK[HEADER]"

    :goto_66
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_69
    const/4 v1, 0x0

    move v3, v2

    :goto_6b
    sget-object v2, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v2

    if-eqz v2, :cond_22e

    if-eqz v1, :cond_cc

    const-string v1, "RFC822.SIZE"

    :goto_79
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_7e
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    if-nez v3, :cond_9c

    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-lez v4, :cond_9c

    if-nez v2, :cond_91

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-static {v2, v1}, Lcom/sun/mail/imap/IMAPMessage;->craftHeaderCmd(Lcom/sun/mail/imap/protocol/IMAPProtocol;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9c
    move-object v4, v1

    new-instance v1, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_a9
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    if-nez v2, :cond_cf

    monitor-exit v9
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_e8

    :goto_b2
    return-void

    :cond_b3
    const-string v1, " FLAGS"

    goto/16 :goto_25

    :cond_b7
    const-string v1, " BODYSTRUCTURE"

    goto/16 :goto_37

    :cond_bb
    const-string v1, " UID"

    goto :goto_49

    :cond_be
    const-string v1, " BODY.PEEK[HEADER]"

    goto :goto_66

    :cond_c1
    if-eqz v1, :cond_c9

    const-string v1, "RFC822.HEADER"

    :goto_c5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_69

    :cond_c9
    const-string v1, " RFC822.HEADER"

    goto :goto_c5

    :cond_cc
    const-string v1, " RFC822.SIZE"

    goto :goto_79

    :cond_cf
    const/4 v1, 0x0

    :try_start_d0
    check-cast v1, [Lcom/sun/mail/iap/Response;

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_e8

    :try_start_d7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
    :try_end_e2
    .catchall {:try_start_d7 .. :try_end_e2} :catchall_e8
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d7 .. :try_end_e2} :catch_eb
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_d7 .. :try_end_e2} :catch_f8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d7 .. :try_end_e2} :catch_fb

    move-result-object v1

    move-object v8, v1

    :goto_e4
    if-nez v8, :cond_106

    :try_start_e6
    monitor-exit v9

    goto :goto_b2

    :catchall_e8
    move-exception v1

    monitor-exit v9
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_e8

    throw v1

    :catch_eb
    move-exception v1

    :try_start_ec
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catch_f8
    move-exception v2

    move-object v8, v1

    goto :goto_e4

    :catch_fb
    move-exception v1

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_106
    const/4 v1, 0x0

    move v7, v1

    :goto_108
    array-length v1, v8

    if-lt v7, v1, :cond_11d

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_11b

    new-array v1, v1, [Lcom/sun/mail/iap/Response;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    :cond_11b
    monitor-exit v9

    goto :goto_b2

    :cond_11d
    aget-object v1, v8, v7

    if-nez v1, :cond_125

    :cond_121
    :goto_121
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_108

    :cond_125
    aget-object v1, v8, v7

    instance-of v1, v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v1, :cond_131

    aget-object v1, v8, v7

    invoke-virtual {v10, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_121

    :cond_131
    aget-object v1, v8, v7

    check-cast v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v12

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v2

    :goto_146
    if-lt v6, v12, :cond_14e

    if-eqz v5, :cond_121

    invoke-virtual {v10, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_121

    :cond_14e
    invoke-virtual {v1, v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    instance-of v13, v2, Ljavax/mail/Flags;

    if-eqz v13, :cond_16e

    sget-object v13, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v13

    if-eqz v13, :cond_162

    if-nez v11, :cond_168

    :cond_162
    const/4 v2, 0x1

    :goto_163
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v2

    goto :goto_146

    :cond_168
    check-cast v2, Ljavax/mail/Flags;

    iput-object v2, v11, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    move v2, v5

    goto :goto_163

    :cond_16e
    instance-of v13, v2, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v13, :cond_178

    check-cast v2, Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v2, v11, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    move v2, v5

    goto :goto_163

    :cond_178
    instance-of v13, v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v13, :cond_186

    check-cast v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v11, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    move v2, v5

    goto :goto_163

    :cond_186
    instance-of v13, v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v13, :cond_192

    check-cast v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    iget v2, v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v2, v11, Lcom/sun/mail/imap/IMAPMessage;->size:I

    move v2, v5

    goto :goto_163

    :cond_192
    instance-of v13, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v13, :cond_19c

    check-cast v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v2, v11, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move v2, v5

    goto :goto_163

    :cond_19c
    instance-of v13, v2, Lcom/sun/mail/imap/protocol/UID;

    if-eqz v13, :cond_1c5

    check-cast v2, Lcom/sun/mail/imap/protocol/UID;

    iget-wide v13, v2, Lcom/sun/mail/imap/protocol/UID;->uid:J

    iput-wide v13, v11, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v13, :cond_1b5

    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    :cond_1b5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Long;

    iget-wide v15, v2, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-direct/range {v14 .. v16}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v13, v14, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    goto :goto_163

    :cond_1c5
    instance-of v13, v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    if-nez v13, :cond_1cd

    instance-of v13, v2, Lcom/sun/mail/imap/protocol/BODY;

    if-eqz v13, :cond_223

    :cond_1cd
    instance-of v13, v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    if-eqz v13, :cond_1f0

    check-cast v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v2

    :goto_1d7
    new-instance v13, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v13}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    invoke-virtual {v13, v2}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    iget-object v2, v11, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v2, :cond_1e5

    if-eqz v3, :cond_1f7

    :cond_1e5
    iput-object v13, v11, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    :cond_1e7
    if-eqz v3, :cond_21f

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Lcom/sun/mail/imap/IMAPMessage;->setHeadersLoaded(Z)V

    move v2, v5

    goto/16 :goto_163

    :cond_1f0
    check-cast v2, Lcom/sun/mail/imap/protocol/BODY;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v2

    goto :goto_1d7

    :cond_1f7
    invoke-virtual {v13}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v13

    :cond_1fb
    :goto_1fb
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1e7

    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/Header;

    invoke-virtual {v2}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1fb

    iget-object v14, v11, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v2}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v15, v2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fb

    :cond_21f
    const/4 v2, 0x0

    :goto_220
    array-length v13, v4

    if-lt v2, v13, :cond_226

    :cond_223
    move v2, v5

    goto/16 :goto_163

    :cond_226
    aget-object v13, v4, v2

    invoke-direct {v11, v13}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V
    :try_end_22b
    .catchall {:try_start_ec .. :try_end_22b} :catchall_e8

    add-int/lit8 v2, v2, 0x1

    goto :goto_220

    :cond_22e
    move v2, v1

    goto/16 :goto_7e

    :cond_231
    move v3, v2

    goto/16 :goto_6b
.end method

.method private declared-synchronized isHeaderLoaded(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    move-result v0

    goto :goto_6

    :cond_19
    const/4 v0, 0x0

    goto :goto_6

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadBODYSTRUCTURE()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2f

    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_2c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_1d} :catch_32
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_1d} :catch_3f

    :try_start_1d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "Unable to load BODYSTRUCTURE"

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_32
    move-exception v0

    :try_start_33
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catch_3f
    move-exception v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_2c

    goto :goto_5
.end method

.method private declared-synchronized loadEnvelope()V
    .registers 12

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3d

    if-eqz v0, :cond_8

    :cond_6
    monitor-exit p0

    return-void

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    check-cast v0, [Lcom/sun/mail/iap/Response;

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_3d

    :try_start_10
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v7

    sget-object v0, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v8

    move v4, v3

    :goto_22
    array-length v0, v8

    if-lt v4, v0, :cond_40

    invoke-virtual {v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v8, v0

    invoke-virtual {v6, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_8d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_10 .. :try_end_30} :catch_80
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_10 .. :try_end_30} :catch_9b

    :try_start_30
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_8d

    :try_start_31
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-nez v0, :cond_6

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Failed to load IMAP envelope"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_40
    :try_start_40
    aget-object v0, v8, v4

    if-eqz v0, :cond_54

    aget-object v0, v8, v4

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v0, :cond_54

    aget-object v0, v8, v4

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    if-eq v0, v7, :cond_58

    :cond_54
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_22

    :cond_58
    aget-object v0, v8, v4

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v9

    move v2, v3

    :goto_61
    if-ge v2, v9, :cond_54

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v1

    instance-of v10, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v10, :cond_73

    check-cast v1, Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    :cond_6f
    :goto_6f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_61

    :cond_73
    instance-of v10, v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v10, :cond_90

    check-cast v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;
    :try_end_7f
    .catchall {:try_start_40 .. :try_end_7f} :catchall_8d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_40 .. :try_end_7f} :catch_80
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_40 .. :try_end_7f} :catch_9b

    goto :goto_6f

    :catch_80
    move-exception v0

    :try_start_81
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :catchall_8d
    move-exception v0

    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_3d

    :cond_90
    :try_start_90
    instance-of v10, v1, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v10, :cond_6f

    check-cast v1, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    iget v1, v1, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v1, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_8d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_90 .. :try_end_9a} :catch_80
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_90 .. :try_end_9a} :catch_9b

    goto :goto_6f

    :catch_9b
    move-exception v0

    :try_start_9c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_a9
    .catchall {:try_start_9c .. :try_end_a9} :catchall_8d
.end method

.method private declared-synchronized loadFlags()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_22

    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchFlags(I)Ljavax/mail/Flags;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_1d} :catch_25
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_1d} :catch_32

    :try_start_1d
    monitor-exit v1

    goto :goto_5

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_25
    move-exception v0

    :try_start_26
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catch_32
    move-exception v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_1f
.end method

.method private declared-synchronized loadHeaders()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_39

    :try_start_d
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    const-string v4, "HEADER"

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_5a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d .. :try_end_2d} :catch_4d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_2d} :catch_5d

    move-result-object v0

    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_5a

    if-nez v0, :cond_6b

    :try_start_31
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot load header"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    const-string v4, "HEADER"

    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_5a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3c .. :try_end_4b} :catch_4d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3c .. :try_end_4b} :catch_5d

    move-result-object v0

    goto :goto_2e

    :catch_4d
    move-exception v0

    :try_start_4e
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_39

    :catch_5d
    move-exception v0

    :try_start_5e
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_5a

    :cond_6b
    :try_start_6b
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_39

    goto :goto_5
.end method

.method private declared-synchronized setHeaderLoaded(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setHeadersLoaded(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private toSection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method


# virtual methods
.method _getSession()Ljavax/mail/Session;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method _setFlags(Ljavax/mail/Flags;)V
    .registers 2

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-void
.end method

.method public addFrom([Ljavax/mail/Address;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .registers 5

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkExpunged()V
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0

    :cond_a
    return-void
.end method

.method protected forceCheckExpunged()V
    .registers 5

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_24
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_c} :catch_17
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_c} :catch_28

    :goto_c
    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_24

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0

    :catch_17
    move-exception v0

    :try_start_18
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    return-void

    :catch_28
    move-exception v0

    goto :goto_c
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getContentMD5()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .registers 7

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v5

    if-eq v5, v1, :cond_33

    new-instance v0, Lcom/sun/mail/imap/IMAPInputStream;

    const-string v4, "TEXT"

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v5, :cond_2e

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    :cond_2e
    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_87
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_31} :catch_7a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_31} :catch_8a

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_87

    :cond_32
    return-object v0

    :cond_33
    :try_start_33
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v1

    if-eqz v1, :cond_69

    if-eqz v2, :cond_5a

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    const-string v2, "TEXT"

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    :goto_49
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_87
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_33 .. :try_end_4e} :catch_7a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_33 .. :try_end_4e} :catch_8a

    move-result-object v0

    :cond_4f
    :goto_4f
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_87

    if-nez v0, :cond_32

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    const-string v2, "TEXT"

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    goto :goto_49

    :cond_69
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    const-string v2, "TEXT"

    invoke-virtual {v4, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_87
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5a .. :try_end_78} :catch_7a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5a .. :try_end_78} :catch_8a

    move-result-object v0

    goto :goto_4f

    :catch_7a
    move-exception v0

    :try_start_7b
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :catchall_87
    move-exception v0

    monitor-exit v3
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_87

    throw v0

    :catch_8a
    move-exception v0

    :try_start_8b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_98
    .catchall {:try_start_8b .. :try_end_98} :catchall_87
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    :cond_21
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_40

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v0, :cond_26

    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lcom/sun/mail/imap/IMAPMultipartDataSource;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, p0}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    :cond_40
    :goto_40
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_74

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v1, Ljavax/activation/DataHandler;

    new-instance v2, Lcom/sun/mail/imap/IMAPNestedMessage;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v0, :cond_77

    const-string v0, "1"

    :goto_69
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;
    :try_end_73
    .catchall {:try_start_46 .. :try_end_73} :catchall_74

    goto :goto_40

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_77
    :try_start_77
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_74

    move-result-object v0

    goto :goto_69
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_22

    :goto_1f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    goto :goto_9

    :catch_22
    move-exception v0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    goto :goto_1f
.end method

.method public getDisposition()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getFetchBlockSize()I
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFetchBlockSize()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    if-nez v0, :cond_29

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_29

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_16
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER.FIELDS ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    if-eqz v1, :cond_a9

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_98
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_16 .. :try_end_49} :catch_8b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_16 .. :try_end_49} :catch_9b

    move-result-object v1

    :goto_4a
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_98

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_58

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    :cond_58
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_67
    :try_start_67
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER.LINES ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v1

    if-eqz v1, :cond_a9

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_89
    .catchall {:try_start_67 .. :try_end_89} :catchall_98
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_67 .. :try_end_89} :catch_8b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_67 .. :try_end_89} :catch_9b

    move-result-object v1

    goto :goto_4a

    :catch_8b
    move-exception v0

    :try_start_8c
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :catchall_98
    move-exception v0

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_8c .. :try_end_9a} :catchall_98

    throw v0

    :catch_9b
    move-exception v0

    :try_start_9c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_a9
    .catchall {:try_start_9c .. :try_end_a9} :catchall_98

    :cond_a9
    move-object v1, v0

    goto :goto_4a
.end method

.method public getInReplyTo()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    return-object v0
.end method

.method public getLineCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageCacheLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPeek()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_17

    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    :cond_17
    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_b
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .registers 3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    goto :goto_12

    :cond_20
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    goto :goto_12

    :cond_2d
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    goto :goto_12
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .registers 3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_d
.end method

.method protected getSequenceNumber()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    return v0
.end method

.method public getSize()I
    .registers 3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    :cond_b
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_22

    :goto_1f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    goto :goto_9

    :catch_22
    move-exception v0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    goto :goto_1f
.end method

.method protected getUID()J
    .registers 3

    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    return-wide v0
.end method

.method public declared-synchronized invalidateHeaders()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isREV1()Z
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_10

    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    :cond_10
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->isSet(Ljavax/mail/Flags$Flag;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentID(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setExpunged(Z)V
    .registers 3

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setExpunged(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_27

    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v2, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(ILjavax/mail/Flags;Z)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_24
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_14} :catch_17
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_14} :catch_2a

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_24

    monitor-exit p0

    return-void

    :catch_17
    move-exception v0

    :try_start_18
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2a
    move-exception v0

    :try_start_2b
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_24
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setMessageNumber(I)V
    .registers 2

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setMessageNumber(I)V

    return-void
.end method

.method public declared-synchronized setPeek(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .registers 5

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSender(Ljavax/mail/Address;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .registers 4

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSequenceNumber(I)V
    .registers 2

    iput p1, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUID(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_3f

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    :goto_23
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_5c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_28} :catch_4f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_28} :catch_5f

    move-result-object v0

    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_5c

    if-nez v0, :cond_6d

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    goto :goto_23

    :cond_3f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_5c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_34 .. :try_end_4d} :catch_4f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_34 .. :try_end_4d} :catch_5f

    move-result-object v0

    goto :goto_29

    :catch_4f
    move-exception v0

    :try_start_50
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :catchall_5c
    move-exception v0

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_5c

    throw v0

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_5c

    :cond_6d
    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_71
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_79

    return-void

    :cond_79
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_71
.end method

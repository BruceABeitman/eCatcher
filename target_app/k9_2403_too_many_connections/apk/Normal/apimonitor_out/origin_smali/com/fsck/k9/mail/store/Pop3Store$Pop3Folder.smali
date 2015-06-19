.class Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;
.super Lcom/fsck/k9/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Folder"
.end annotation


# instance fields
.field private mIn:Ljava/io/InputStream;

.field private mMessageCount:I

.field private mMsgNumToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Ljava/net/Socket;

.field private mUidToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUidToMsgNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;)V
    .registers 6

    const-string v2, "INBOX"

    iput-object p1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "INBOX"

    iput-object v2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    :cond_2c
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeIO()V
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1b

    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_19

    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_17

    :goto_10
    iput-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    return-void

    :catch_17
    move-exception v0

    goto :goto_10

    :catch_19
    move-exception v0

    goto :goto_b

    :catch_1b
    move-exception v0

    goto :goto_6
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    sget-object v3, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->writeLine(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_34

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_34

    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    invoke-direct {v3, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_24
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_24} :catch_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_27

    :catch_24
    move-exception v3

    move-object v1, v3

    throw v1

    :catch_27
    move-exception v3

    move-object v0, v3

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->closeIO()V

    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Unable to execute POP3 command"

    invoke-direct {v3, v4, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_34
    return-object v2
.end method

.method private fetchBody(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    if-eq p2, v6, :cond_10

    iget-object v2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v2

    iget-boolean v2, v2, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->top:Z

    if-nez v2, :cond_49

    :cond_10
    const-string v2, "RETR %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_28
    if-eqz v1, :cond_48

    :try_start_2a
    new-instance v2, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-direct {v2, v3, v4}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/io/InputStream;)V

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V

    if-eq p2, v6, :cond_42

    iget-object v2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v2

    iget-boolean v2, v2, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->top:Z

    if-nez v2, :cond_48

    :cond_42
    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_48
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2a .. :try_end_48} :catch_69

    :cond_48
    return-void

    :cond_49
    const-string v2, "TOP %d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :catch_69
    move-exception v2

    move-object v0, v2

    if-ne p2, v6, :cond_48

    throw v0
.end method

.method private fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/16 v16, 0x0

    move-object/from16 v4, p1

    array-length v8, v4

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_1b

    aget-object v10, v4, v7

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getSize()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    add-int/lit8 v16, v16, 0x1

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_1b
    if-nez v16, :cond_1e

    :cond_1d
    return-void

    :cond_1e
    const/16 v17, 0x32

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    move/from16 v17, v0

    const/16 v18, 0x1388

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_b0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    :goto_39
    if-ge v6, v5, :cond_1d

    aget-object v10, p1, v6

    move-object v0, v10

    instance-of v0, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    move/from16 v17, v0

    if-nez v17, :cond_4c

    new-instance v17, Lcom/fsck/k9/mail/MessagingException;

    const-string v18, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct/range {v17 .. v18}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_4c
    move-object v0, v10

    check-cast v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    move-object v14, v0

    if-eqz p2, :cond_5f

    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move v2, v6

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    :cond_5f
    const-string v17, "LIST %d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v17, " "

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v17, 0x2

    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v14, v12}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    if-eqz p2, :cond_ad

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v6

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    :cond_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_b0
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v4, p1

    array-length v8, v4

    const/4 v7, 0x0

    :goto_b9
    if-ge v7, v8, :cond_ca

    aget-object v10, v4, v7

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_b9

    :cond_ca
    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    const-string v17, "LIST"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_d9
    :goto_d9
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1d

    const-string v17, "."

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, " "

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x0

    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v17, 0x1

    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-eqz v14, :cond_d9

    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d9

    if-eqz p2, :cond_131

    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move v2, v6

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    :cond_131
    invoke-virtual {v14, v12}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    if-eqz p2, :cond_13e

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v6

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    :cond_13e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d9
.end method

.method private getCapabilities()Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {v0, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;)V

    :try_start_7
    const-string v2, "CAPA"

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    const-string v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    goto :goto_d

    :catch_28
    move-exception v2

    goto :goto_1b

    :cond_2a
    const-string v2, "UIDL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    goto :goto_d

    :cond_36
    const-string v2, "PIPELINING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->pipelining:Z

    goto :goto_d

    :cond_42
    const-string v2, "USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->user:Z

    goto :goto_d

    :cond_4e
    const-string v2, "TOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->top:Z
    :try_end_59
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_59} :catch_28

    goto :goto_d
.end method

.method private indexMessage(ILcom/fsck/k9/mail/store/Pop3Store$Pop3Message;)V
    .registers 6

    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding index for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to msgNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private indexMsgNums(II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move v1, p1

    :goto_2
    if-gt v1, p2, :cond_15

    iget-object v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_12

    add-int/lit8 v6, v6, 0x1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    if-nez v6, :cond_18

    :cond_17
    return-void

    :cond_18
    const/16 v7, 0x32

    if-ge v6, v7, :cond_63

    iget v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v8, 0x1388

    if-le v7, v8, :cond_63

    move v1, p1

    :goto_23
    if-gt v1, p2, :cond_17

    iget-object v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-nez v0, :cond_60

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UIDL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    iget-object v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {v0, v7, v2, p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/Pop3Store$Pop3Message;)V

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_63
    const-string v7, "UIDL"

    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_69
    :goto_69
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aget-object v2, v5, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, p1, :cond_69

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v7, p2, :cond_69

    iget-object v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-nez v0, :cond_69

    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    iget-object v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {v0, v7, v2, p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_69
.end method

.method private indexUids(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v10, "k9"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    const-string v8, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Need to index UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3b
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_42

    :cond_41
    return-void

    :cond_42
    const-string v8, "UIDL"

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v3, v6, v8

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    const-string v8, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got msgNum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-nez v1, :cond_9f

    new-instance v1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {v1, v8, v3, p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V

    :cond_9f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_48
.end method

.method private readLine()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_16

    new-instance v3, Ljava/io/IOException;

    const-string v4, "End of stream reached while trying to read line."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_16
    int-to-char v3, v0

    const/16 v4, 0xd

    if-ne v3, v4, :cond_44

    :goto_1b
    iget-object v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_16

    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_43

    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-object v1

    :cond_44
    int-to-char v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_23

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1b
.end method

.method private writeLine(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public appendMessages([Lcom/fsck/k9/mail/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method public close()V
    .registers 2

    :try_start_0
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_9

    :goto_5
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->closeIO()V

    return-void

    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public delete(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method public delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v3, 0x1

    new-array v0, v3, [Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, v3}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;

    iget-object v0, p1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public exists()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    if-eqz p1, :cond_5

    array-length v10, p1

    if-nez v10, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    array-length v6, v1

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v6, :cond_1c

    aget-object v7, v1, v4

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1c
    :try_start_1c
    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_44

    :try_start_1f
    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-virtual {p2}, Lcom/fsck/k9/mail/FetchProfile;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4d

    move-object v10, p3

    :goto_2f
    invoke-direct {p0, p1, v10}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_32} :catch_4f

    :cond_32
    const/4 v3, 0x0

    array-length v2, p1

    :goto_34
    if-ge v3, v2, :cond_5

    aget-object v7, p1, v3

    instance-of v10, v7, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-nez v10, :cond_59

    new-instance v10, Lcom/fsck/k9/mail/MessagingException;

    const-string v11, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_44
    move-exception v5

    new-instance v10, Lcom/fsck/k9/mail/MessagingException;

    const-string v11, "fetch"

    invoke-direct {v10, v11, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_4d
    const/4 v10, 0x0

    goto :goto_2f

    :catch_4f
    move-exception v10

    move-object v5, v10

    new-instance v10, Lcom/fsck/k9/mail/MessagingException;

    const-string v11, "fetch"

    invoke-direct {v10, v11, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_59
    move-object v0, v7

    check-cast v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    move-object v8, v0

    if-eqz p3, :cond_6e

    :try_start_5f
    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6e

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p3, v10, v3, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    :cond_6e
    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_91

    const/4 v10, -0x1

    invoke-direct {p0, v8, v10}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;I)V

    :cond_7a
    :goto_7a
    if-eqz p3, :cond_8e

    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    invoke-virtual {p2}, Lcom/fsck/k9/mail/FetchProfile;->size()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_8e

    :cond_8b
    invoke-interface {p3, v7, v3, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_91
    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a9

    const/16 v10, 0x2a1

    invoke-direct {p0, v8, v10}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;I)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_9e} :catch_9f

    goto :goto_7a

    :catch_9f
    move-exception v10

    move-object v5, v10

    new-instance v10, Lcom/fsck/k9/mail/MessagingException;

    const-string v11, "Unable to fetch message"

    invoke-direct {v10, v11, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_a9
    :try_start_a9
    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7a

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setBody(Lcom/fsck/k9/mail/Body;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b5} :catch_9f

    goto :goto_7a
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-nez v0, :cond_11

    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {v0, v1, p1, p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V

    :cond_11
    return-object v0
.end method

.method public getMessageCount()I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v11, 0x1

    if-lt p1, v11, :cond_7

    if-lt p2, v11, :cond_7

    if-ge p2, p1, :cond_23

    :cond_7
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Invalid message set %d %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_23
    :try_start_23
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_5e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v5, p1

    move v1, v0

    :goto_2e
    if-gt v5, p2, :cond_67

    iget-object v6, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-eqz p3, :cond_74

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v1, 0x1

    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p3, v6, v1, v7}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    :goto_4b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_5a

    add-int/lit8 v1, v0, 0x1

    sub-int v6, p2, p1

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p3, v3, v0, v6}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    move v0, v1

    :cond_5a
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_2e

    :catch_5e
    move-exception v2

    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "getMessages"

    invoke-direct {v6, v7, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Message;

    return-object p0

    :cond_74
    move v0, v1

    goto :goto_4b
.end method

.method public getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3: No getMessages"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3: No getMessages by uids"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/fsck/k9/mail/store/Pop3Store;->access$700()[Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public isOpen()Z
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public declared-synchronized open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->isOpen()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    move-result v9

    if-eqz v9, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v10, "INBOX"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1e

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Folder does not exist"

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_1e
    :try_start_1e
    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mHost:Ljava/lang/String;
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$100(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
    invoke-static {v10}, Lcom/fsck/k9/mail/store/Pop3Store;->access$200(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v10

    invoke-direct {v7, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_41

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_bf

    :cond_41
    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_bc

    const/4 v9, 0x1

    move v6, v9

    :goto_52
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/net/ssl/TrustManager;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mHost:Ljava/lang/String;
    invoke-static {v12}, Lcom/fsck/k9/mail/store/Pop3Store;->access$100(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v12

    aput-object v12, v10, v11

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v8, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const/16 v10, 0x2710

    invoke-virtual {v9, v7, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/16 v11, 0x200

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    :goto_9a
    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const v10, 0xea60

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->isOpen()Z

    move-result v9

    if-nez v9, :cond_f6

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Unable to connect socket"

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_b0
    .catchall {:try_start_1e .. :try_end_b0} :catchall_1b
    .catch Ljavax/net/ssl/SSLException; {:try_start_1e .. :try_end_b0} :catch_b0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1e .. :try_end_b0} :catch_ec
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_b0} :catch_19b

    :catch_b0
    move-exception v9

    move-object v0, v9

    :try_start_b2
    new-instance v9, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_1b

    :cond_bc
    const/4 v9, 0x0

    move v6, v9

    goto :goto_52

    :cond_bf
    :try_start_bf
    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9}, Ljava/net/Socket;-><init>()V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const/16 v10, 0x2710

    invoke-virtual {v9, v7, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/16 v11, 0x200

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;
    :try_end_eb
    .catchall {:try_start_bf .. :try_end_eb} :catchall_1b
    .catch Ljavax/net/ssl/SSLException; {:try_start_bf .. :try_end_eb} :catch_b0
    .catch Ljava/security/GeneralSecurityException; {:try_start_bf .. :try_end_eb} :catch_ec
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_eb} :catch_19b

    goto :goto_9a

    :catch_ec
    move-exception v9

    move-object v1, v9

    :try_start_ee
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Unable to open connection to POP server due to security error."

    invoke-direct {v9, v10, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_f6
    .catchall {:try_start_ee .. :try_end_f6} :catchall_1b

    :cond_f6
    const/4 v9, 0x0

    :try_start_f7
    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v10

    #setter for: Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    invoke-static {v9, v10}, Lcom/fsck/k9/mail/store/Pop3Store;->access$402(Lcom/fsck/k9/mail/store/Pop3Store;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_115

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1b9

    :cond_115
    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v9

    iget-boolean v9, v9, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    if-eqz v9, :cond_1a8

    const-string v9, "STLS"

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->writeLine(Ljava/lang/String;)V

    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1a5

    const/4 v9, 0x1

    move v6, v9

    :goto_135
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/net/ssl/TrustManager;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mHost:Ljava/lang/String;
    invoke-static {v12}, Lcom/fsck/k9/mail/store/Pop3Store;->access$100(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v12

    aput-object v12, v10, v11

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v8, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    iget-object v11, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mHost:Ljava/lang/String;
    invoke-static {v11}, Lcom/fsck/k9/mail/store/Pop3Store;->access$100(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I
    invoke-static {v12}, Lcom/fsck/k9/mail/store/Pop3Store;->access$200(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const v10, 0xea60

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/16 v11, 0x200

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->isOpen()Z

    move-result v9

    if-nez v9, :cond_1b9

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Unable to connect socket"

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_19b
    .catchall {:try_start_f7 .. :try_end_19b} :catchall_1b
    .catch Ljavax/net/ssl/SSLException; {:try_start_f7 .. :try_end_19b} :catch_b0
    .catch Ljava/security/GeneralSecurityException; {:try_start_f7 .. :try_end_19b} :catch_ec
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_19b} :catch_19b

    :catch_19b
    move-exception v9

    move-object v2, v9

    :try_start_19d
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Unable to open connection to POP server."

    invoke-direct {v9, v10, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_1a5
    .catchall {:try_start_19d .. :try_end_1a5} :catchall_1b

    :cond_1a5
    const/4 v9, 0x0

    move v6, v9

    goto :goto_135

    :cond_1a8
    :try_start_1a8
    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I
    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1b9

    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "TLS not supported but required"

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1b9
    .catchall {:try_start_1a8 .. :try_end_1b9} :catchall_1b
    .catch Ljavax/net/ssl/SSLException; {:try_start_1a8 .. :try_end_1b9} :catch_b0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a8 .. :try_end_1b9} :catch_ec
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1b9} :catch_19b

    :cond_1b9
    :try_start_1b9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USER "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mUsername:Ljava/lang/String;
    invoke-static {v10}, Lcom/fsck/k9/mail/store/Pop3Store;->access$500(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PASS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    #getter for: Lcom/fsck/k9/mail/store/Pop3Store;->mPassword:Ljava/lang/String;
    invoke-static {v10}, Lcom/fsck/k9/mail/store/Pop3Store;->access$600(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f1
    .catchall {:try_start_1b9 .. :try_end_1f1} :catchall_1b
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1b9 .. :try_end_1f1} :catch_217
    .catch Ljavax/net/ssl/SSLException; {:try_start_1b9 .. :try_end_1f1} :catch_b0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b9 .. :try_end_1f1} :catch_ec
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1f1} :catch_19b

    :try_start_1f1
    const-string v9, "STAT"

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_215
    .catchall {:try_start_1f1 .. :try_end_215} :catchall_1b

    goto/16 :goto_7

    :catch_217
    move-exception v9

    move-object v3, v9

    :try_start_219
    new-instance v9, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v3}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_220
    .catchall {:try_start_219 .. :try_end_220} :catchall_1b
    .catch Ljavax/net/ssl/SSLException; {:try_start_219 .. :try_end_220} :catch_b0
    .catch Ljava/security/GeneralSecurityException; {:try_start_219 .. :try_end_220} :catch_ec
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_220} :catch_19b
.end method

.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method public setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v11, 0x1

    if-eqz p3, :cond_b

    sget-object v8, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-static {p2, v8}, Lcom/fsck/k9/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    return-void

    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    :try_start_12
    array-length v3, v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_22

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_60

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v3, :cond_b

    aget-object v5, v0, v1

    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_7b

    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not delete message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " because no msgNum found; permanent error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/fsck/k9/mail/MessagingException;->setPermanentFailure(Z)V

    throw v4

    :catch_60
    move-exception v8

    move-object v2, v8

    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not get message number for uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_7b
    const-string v8, "DELE %s"

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_28
.end method

.method public supportsFetchingFlags()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/fsck/k9/mail/store/ImapStore;
.super Lcom/fsck/k9/mail/Store;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;,
        Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapException;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;,
        Lcom/fsck/k9/mail/store/ImapStore$AuthType;
    }
.end annotation


# static fields
.field private static final CAPABILITY_IDLE:Ljava/lang/String; = "IDLE"

.field private static final CAPABILITY_NAMESPACE:Ljava/lang/String; = "NAMESPACE"

.field private static final COMMAND_IDLE:Ljava/lang/String; = "IDLE"

.field private static final COMMAND_NAMESPACE:Ljava/lang/String; = "NAMESPACE"

.field public static final CONNECTION_SECURITY_NONE:I = 0x0

.field public static final CONNECTION_SECURITY_SSL_OPTIONAL:I = 0x4

.field public static final CONNECTION_SECURITY_SSL_REQUIRED:I = 0x3

.field public static final CONNECTION_SECURITY_TLS_OPTIONAL:I = 0x1

.field public static final CONNECTION_SECURITY_TLS_REQUIRED:I = 0x2

.field private static final IDLE_READ_TIMEOUT:I = 0x1a8ce0

.field private static final IDLE_REFRESH_INTERVAL:I = 0x124f80

.field public static MAX_DELAY_TIME:I

.field public static NORMAL_DELAY_TIME:I

.field private static final PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;


# instance fields
.field private mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

.field private volatile mCombinedPrefix:Ljava/lang/String;

.field private mConnectionSecurity:I

.field private mConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mModifiedUtf7Charset:Ljava/nio/charset/Charset;

.field private mPassword:Ljava/lang/String;

.field private volatile mPathDelimeter:Ljava/lang/String;

.field private volatile mPathPrefix:Ljava/lang/String;

.field private mPort:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    const v0, 0xc350

    sput v0, Lcom/fsck/k9/mail/store/ImapStore;->MAX_DELAY_TIME:I

    const/16 v0, 0x9c4

    sput v0, Lcom/fsck/k9/mail/store/ImapStore;->NORMAL_DELAY_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/16 v9, 0x3e1

    const/16 v5, 0x8f

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/fsck/k9/mail/Store;-><init>()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    :try_start_1b
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/net/URISyntaxException; {:try_start_1b .. :try_end_20} :catch_9d

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "imap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    iput v7, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    :goto_30
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_43

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    iput v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    :cond_43
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_62

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v8, :cond_e9

    sget-object v4, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->PLAIN:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    aget-object v4, v3, v7

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    aget-object v4, v3, v6

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    :cond_62
    :goto_62
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8f

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8f

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8f

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    :cond_8f
    new-instance v4, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v4}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v5, "X-RFC-3501"

    invoke-virtual {v4, v5}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    return-void

    :catch_9d
    move-exception v4

    move-object v2, v4

    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "Invalid ImapStore URI"

    invoke-direct {v4, v5, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_a7
    const-string v4, "imap+tls"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    iput v6, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    goto/16 :goto_30

    :cond_b5
    const-string v4, "imap+tls+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    iput v8, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    goto/16 :goto_30

    :cond_c3
    const-string v4, "imap+ssl+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d2

    const/4 v4, 0x3

    iput v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    iput v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    goto/16 :goto_30

    :cond_d2
    const-string v4, "imap+ssl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e1

    const/4 v4, 0x4

    iput v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    iput v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    goto/16 :goto_30

    :cond_e1
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "Unsupported protocol"

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e9
    aget-object v4, v3, v7

    invoke-static {v4}, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    aget-object v4, v3, v6

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    aget-object v4, v3, v8

    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    goto/16 :goto_62
.end method

.method static synthetic access$1200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/mail/store/ImapStore;)I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    return v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/mail/store/ImapStore;)I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    return v0
.end method

.method static synthetic access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    return-void
.end method

.method static synthetic access$900()[Lcom/fsck/k9/mail/Flag;
    .registers 1

    sget-object v0, Lcom/fsck/k9/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    return-object v0
.end method

.method private decodeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v3, "US-ASCII"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v3

    return-object v3

    :catch_15
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to decode folder name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v3

    :catch_17
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to encode folder name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getCombinedPrefix()Ljava/lang/String;
    .registers 5

    const-string v3, ""

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    return-object v2

    :cond_26
    const-string v2, ""

    move-object v0, v3

    goto :goto_1b

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    goto :goto_23

    :cond_44
    const-string v2, ""

    iput-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    goto :goto_23

    :cond_49
    const-string v2, ""

    iput-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    goto :goto_23
.end method

.method private getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    monitor-enter v5

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object v1, v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_25

    if-eqz v1, :cond_15

    :try_start_10
    const-string v4, "NOOP"

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_25
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1f

    :cond_15
    if-nez v1, :cond_1d

    :try_start_17
    new-instance v2, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;-><init>(Lcom/fsck/k9/mail/store/ImapStore;)V

    move-object v1, v2

    :cond_1d
    monitor-exit v5

    return-object v1

    :catch_1f
    move-exception v4

    move-object v3, v4

    #calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
    invoke-static {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    goto :goto_4

    :catchall_25
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_25

    throw v4
.end method

.method private releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
    .registers 4

    #calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->isOpen()Z
    invoke-static {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$100(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    :cond_f
    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method


# virtual methods
.method public checkSettings()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;-><init>(Lcom/fsck/k9/mail/store/ImapStore;)V

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->open()V

    #calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
    invoke-static {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v2

    move-object v1, v2

    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Unable to connect."

    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    if-nez v0, :cond_17

    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    invoke-direct {v0, p0, p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-result-object v4

    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "LIST \"\" \"%s*\""

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_22
    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "LIST"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    const/4 v10, 0x1

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    move-object v14, v0

    if-nez v14, :cond_5f

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    :cond_5f
    const-string v14, "INBOX"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_b3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v14, v15, :cond_8b

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_8b
    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b3

    const/4 v10, 0x0

    :cond_b3
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v5

    :goto_bd
    if-ge v8, v5, :cond_cf

    invoke-virtual {v3, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v14, "\\NoSelect"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_cc

    const/4 v10, 0x0

    :cond_cc
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    :cond_cf
    if-eqz v10, :cond_22

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catchall {:try_start_4 .. :try_end_db} :catchall_ea
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_db} :catch_dd

    goto/16 :goto_22

    :catch_dd
    move-exception v14

    move-object v11, v14

    :try_start_df
    #calls: Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V
    invoke-static {v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    new-instance v14, Lcom/fsck/k9/mail/MessagingException;

    const-string v15, "Unable to get folder list."

    invoke-direct {v14, v15, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_ea
    .catchall {:try_start_df .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception v14

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    throw v14

    :cond_f2
    :try_start_f2
    const-string v14, "INBOX"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    new-array v14, v14, [Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fsck/k9/mail/Folder;
    :try_end_107
    .catchall {:try_start_f2 .. :try_end_107} :catchall_ea
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_107} :catch_dd

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    return-object v2
.end method

.method public getPusher(Lcom/fsck/k9/mail/PushReceiver;)Lcom/fsck/k9/mail/Pusher;
    .registers 3

    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;

    invoke-direct {v0, p0, p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/PushReceiver;)V

    return-object v0
.end method

.method public isCopyCapable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isExpungeCapable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isMoveCapable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isPushCapable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

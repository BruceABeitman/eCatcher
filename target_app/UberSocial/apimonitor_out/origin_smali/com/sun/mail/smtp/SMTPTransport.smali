.class public Lcom/sun/mail/smtp/SMTPTransport;
.super Ljavax/mail/Transport;
.source "SourceFile"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:[B = null

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static hexchar:[C

.field private static final ignoreList:[Ljava/lang/String;


# instance fields
.field private addresses:[Ljavax/mail/Address;

.field private dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

.field private defaultPort:I

.field private exception:Ljavax/mail/MessagingException;

.field private extMap:Ljava/util/Hashtable;

.field private invalidAddr:[Ljavax/mail/Address;

.field private isSSL:Z

.field private lastReturnCode:I

.field private lastServerResponse:Ljava/lang/String;

.field private lineInputStream:Lcom/sun/mail/util/LineInputStream;

.field private localHostName:Ljava/lang/String;

.field private md5support:Lcom/sun/mail/smtp/DigestMD5;

.field private message:Ljavax/mail/internet/MimeMessage;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private quitWait:Z

.field private reportSuccess:Z

.field private saslRealm:Ljava/lang/String;

.field private sendPartiallyFailed:Z

.field private serverInput:Ljava/io/BufferedInputStream;

.field private serverOutput:Ljava/io/OutputStream;

.field private serverSocket:Ljava/net/Socket;

.field private useRset:Z

.field private useStartTLS:Z

.field private validSentAddr:[Ljavax/mail/Address;

.field private validUnsentAddr:[Ljavax/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string v3, "Bcc"

    aput-object v3, v0, v2

    const-string v2, "Content-Length"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_34

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    return-void

    :cond_2b
    move v0, v2

    goto :goto_c

    nop

    :array_2e
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_34
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 9

    const-string v3, "smtp"

    const/16 v4, 0x19

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/mail/Transport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "smtp"

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    const/16 v0, 0x19

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    :cond_1d
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    iput p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    iput-boolean p5, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".quitwait"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c1

    move v0, v1

    :goto_4d
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".reportsuccess"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c3

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    move v0, v2

    :goto_73
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".starttls.enable"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c5

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    move v0, v2

    :goto_99
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".userset"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c7

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    :goto_be
    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    return-void

    :cond_c1
    move v0, v2

    goto :goto_4d

    :cond_c3
    move v0, v1

    goto :goto_73

    :cond_c5
    move v0, v1

    goto :goto_99

    :cond_c7
    move v2, v1

    goto :goto_be
.end method

.method private closeConnection()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_1c

    :cond_a
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Server Close Failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    :cond_37
    throw v0
.end method

.method private convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_2
    const-string v0, "text/*"

    invoke-interface {p1, v0}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    const-string v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_20
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->is8Bit(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "8bit"

    invoke-interface {p1, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return v2

    :cond_3d
    const-string v0, "multipart/*"

    invoke-interface {p1, v0}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v5

    move v4, v3

    :goto_50
    if-lt v4, v5, :cond_54

    move v2, v3

    goto :goto_3c

    :cond_54
    invoke-virtual {v0, v4}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimePart;

    invoke-direct {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5d} :catch_69
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_5d} :catch_66

    move-result v1

    if-eqz v1, :cond_6c

    move v1, v2

    :goto_61
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_50

    :catch_66
    move-exception v0

    move v2, v3

    goto :goto_3c

    :catch_69
    move-exception v0

    move v2, v3

    goto :goto_3c

    :cond_6c
    move v1, v3

    goto :goto_61

    :cond_6e
    move v2, v3

    goto :goto_3c
.end method

.method private expandGroups()V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v2, v3

    :goto_3
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v0, v0

    if-lt v2, v0, :cond_16

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    :cond_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v0, v0, v2

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_5a

    if-nez v1, :cond_2c

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v4, v3

    :goto_2a
    if-lt v4, v2, :cond_3d

    :cond_2c
    const/4 v4, 0x1

    :try_start_2d
    invoke-virtual {v0, v4}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v5

    if-eqz v5, :cond_4f

    move v4, v3

    :goto_34
    array-length v6, v5
    :try_end_35
    .catch Ljavax/mail/internet/ParseException; {:try_start_2d .. :try_end_35} :catch_54

    if-lt v4, v6, :cond_47

    move-object v0, v1

    :goto_38
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_3

    :cond_3d
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_47
    :try_start_47
    aget-object v6, v5, v4

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_4f
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_52
    .catch Ljavax/mail/internet/ParseException; {:try_start_47 .. :try_end_52} :catch_54

    move-object v0, v1

    goto :goto_38

    :catch_54
    move-exception v4

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_38

    :cond_5a
    if-eqz v1, :cond_5f

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5f
    move-object v0, v1

    goto :goto_38
.end method

.method private declared-synchronized getMD5()Lcom/sun/mail/smtp/DigestMD5;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    if-nez v0, :cond_12

    new-instance v1, Lcom/sun/mail/smtp/DigestMD5;

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    :goto_d
    invoke-direct {v1, v0}, Lcom/sun/mail/smtp/DigestMD5;-><init>(Ljava/io/PrintStream;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    :cond_12
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    monitor-exit p0

    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_d

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initStreams()V
    .registers 7

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebug()Z

    move-result v2

    const-string v3, "mail.debug.quote"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x1

    :goto_23
    new-instance v3, Lcom/sun/mail/util/TraceInputStream;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    invoke-virtual {v3, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    new-instance v4, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4, v2}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    invoke-virtual {v4, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    return-void

    :cond_5d
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private is8Bit(Ljava/io/InputStream;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :cond_3
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_32

    move-result v3

    if-gez v3, :cond_18

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: found an 8bit part"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    return v0

    :cond_18
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xd

    if-eq v3, v4, :cond_22

    const/16 v4, 0xa

    if-ne v3, v4, :cond_29

    :cond_22
    move v2, v0

    :cond_23
    const/16 v4, 0x7f

    if-le v3, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_29
    if-eqz v3, :cond_17

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x3e6

    if-le v2, v4, :cond_23

    goto :goto_17

    :catch_32
    move-exception v1

    goto :goto_17
.end method

.method private isNotLastLine(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_14

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private issueSendCommand(Ljava/lang/String;I)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v2

    if-eq v2, p2, :cond_7b

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-nez v0, :cond_73

    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-nez v3, :cond_77

    move v3, v1

    :goto_14
    add-int v4, v0, v3

    new-array v4, v4, [Ljavax/mail/Address;

    if-lez v0, :cond_1f

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    if-lez v3, :cond_26

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-static {v5, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: got response code "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", with response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4f
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v3, :cond_5e

    const-string v3, "RSET"

    const/16 v4, 0xfa

    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    :cond_5e
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    new-instance v0, Lcom/sun/mail/smtp/SMTPSendFailedException;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v0

    :cond_73
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v0, v0

    goto :goto_f

    :cond_77
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    goto :goto_14

    :cond_7b
    return-void
.end method

.method private normalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_25
    return-object p1
.end method

.method private openServer()V
    .registers 7

    const/4 v2, -0x1

    const-string v1, "UNKNOWN"

    :try_start_3
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v2

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: starting protocol to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_35
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    const/16 v3, 0xdc

    if-eq v0, v3, :cond_cc

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_83

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: got bad greeting from host \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_83
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got bad greeting from SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception v0

    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not start protocol to SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", port: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :cond_cc
    :try_start_cc
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: protocol started to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_f4} :catch_ac

    :cond_f4
    return-void
.end method

.method private openServer(Ljava/lang/String;I)V
    .registers 7

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG SMTP: trying to connect to host \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSSL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-static {p1, p2, v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result p2

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_e0

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: could not connect to host \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a1
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not connect to SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ca
    .catch Ljava/net/UnknownHostException; {:try_start_2e .. :try_end_ca} :catch_ca
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_ca} :catch_109

    :catch_ca
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_e0
    :try_start_e0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG SMTP: connected to host \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/net/UnknownHostException; {:try_start_e0 .. :try_end_108} :catch_ca
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_108} :catch_109

    :cond_108
    return-void

    :catch_109
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not connect to SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private sendCommand([B)V
    .registers 5

    sget-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t send command to SMTP host"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected static xtext(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v6, 0x2b

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_12

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_11
    return-object p0

    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-ASCII character in SMTP submitter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const/16 v4, 0x21

    if-lt v3, v4, :cond_3d

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_3d

    if-eq v3, v6, :cond_3d

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_6b

    :cond_3d
    if-nez v0, :cond_51

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_51
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6b
    if-eqz v0, :cond_68

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_68
.end method


# virtual methods
.method protected checkConnected()V
    .registers 3

    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public declared-synchronized close()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_39

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_35

    const-string v0, "QUIT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_35

    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: QUIT failed with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_3c

    :cond_35
    :try_start_35
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_7

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    throw v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_39
.end method

.method public declared-synchronized connect(Ljava/net/Socket;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-super {p0}, Ljavax/mail/Transport;->connect()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected data()Ljava/io/OutputStream;
    .registers 3

    sget-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    const-string v0, "DATA"

    const/16 v1, 0x162

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    new-instance v0, Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    return-object v0
.end method

.method protected ehlo(Ljava/lang/String;)Z
    .registers 13

    const/16 v10, 0xfa

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "EHLO "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v5

    if-ne v5, v10, :cond_38

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    move v4, v1

    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_98

    move-result-object v0

    if-nez v0, :cond_3f

    :cond_38
    :goto_38
    if-ne v5, v10, :cond_9a

    move v0, v1

    :goto_3b
    return v0

    :cond_3c
    const-string v0, "EHLO"

    goto :goto_15

    :cond_3f
    if-eqz v4, :cond_43

    move v4, v2

    goto :goto_32

    :cond_43
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x5

    if-lt v3, v7, :cond_32

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string v0, ""

    if-lez v7, :cond_64

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_64
    iget-boolean v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v7, :cond_8c

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG SMTP: Found extension \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\", arg \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8c
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_97} :catch_98

    goto :goto_32

    :catch_98
    move-exception v0

    goto :goto_38

    :cond_9a
    move v0, v2

    goto :goto_3b
.end method

.method protected finalize()V
    .registers 2

    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method protected finishData()V
    .registers 3

    sget-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    const-string v0, "."

    const/16 v1, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    return-void
.end method

.method public getExtensionParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5
.end method

.method public declared-synchronized getLastReturnCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastServerResponse()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalHost()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2c

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".localhost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    :cond_2c
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_57

    :cond_38
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".localaddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    :cond_57
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8c

    :cond_63
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-nez v1, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_8c
    .catchall {:try_start_1 .. :try_end_8c} :catchall_90
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_8c} :catch_93

    :cond_8c
    :goto_8c
    :try_start_8c
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_90

    monitor-exit p0

    return-object v0

    :catchall_90
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_93
    move-exception v0

    goto :goto_8c
.end method

.method public declared-synchronized getReportSuccess()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLRealm()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sasl.realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".saslrealm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    :cond_49
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object v0

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTLS()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRset()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected helo(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0xfa

    if-eqz p1, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HELO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    :goto_16
    return-void

    :cond_17
    const-string v0, "HELO"

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    goto :goto_16
.end method

.method public declared-synchronized isConnected()Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_32

    move-result v1

    if-nez v1, :cond_a

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    if-eqz v1, :cond_1f

    const-string v1, "RSET"

    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    :goto_13
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    if-ltz v1, :cond_2c

    const/16 v2, 0x1a5

    if-eq v1, v2, :cond_2c

    const/4 v0, 0x1

    goto :goto_8

    :cond_1f
    const-string v1, "NOOP"

    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v1

    :try_start_26
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_32
    .catch Ljavax/mail/MessagingException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_8

    :catch_2a
    move-exception v1

    goto :goto_8

    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_32
    .catch Ljavax/mail/MessagingException; {:try_start_2c .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_25

    goto :goto_8

    :catch_30
    move-exception v1

    goto :goto_8

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issueCommand(Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    if-eq v0, p2, :cond_15

    new-instance v0, Ljavax/mail/MessagingException;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    monitor-exit p0

    return-void
.end method

.method protected mailFrom()V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v0, v0, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v0, :cond_19d

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getEnvelopeFrom()Ljava/lang/String;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_34

    :cond_17
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".from"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_34
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_56

    :cond_3c
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_15d

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_15d

    array-length v1, v0

    if-lez v1, :cond_15d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_4e
    if-eqz v0, :cond_165

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MAIL FROM:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "DSN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v0, v0, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v0, :cond_19a

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNRet()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dsn.ret"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9e
    if-eqz v0, :cond_b8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " RET="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_b8
    const-string v0, "AUTH"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v0, v0, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v0, :cond_197

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getSubmitter()Ljava/lang/String;

    move-result-object v0

    :goto_ce
    if-nez v0, :cond_194

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".submitter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_ee
    if-eqz v3, :cond_10b

    :try_start_f0
    invoke-static {v3}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " AUTH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f0 .. :try_end_10a} :catch_16d

    move-result-object v1

    :cond_10b
    :goto_10b
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v0, v0, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v0, :cond_192

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getMailExtension()Ljava/lang/String;

    move-result-object v0

    :goto_119
    if-nez v0, :cond_138

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mailextension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_138
    if-eqz v0, :cond_157

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_157

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_157
    const/16 v0, 0xfa

    invoke-direct {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    return-void

    :cond_15d
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    goto/16 :goto_4e

    :cond_165
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "can\'t determine local email address"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_16d
    move-exception v0

    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v4, :cond_10b

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG SMTP: ignoring invalid submitter: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_10b

    :cond_192
    move-object v0, v2

    goto :goto_119

    :cond_194
    move-object v3, v0

    goto/16 :goto_ee

    :cond_197
    move-object v0, v2

    goto/16 :goto_ce

    :cond_19a
    move-object v0, v2

    goto/16 :goto_7f

    :cond_19d
    move-object v0, v2

    goto/16 :goto_f
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ehlo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7b

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".auth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7d

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x1

    move v2, v1

    :goto_51
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: useEhlo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", useAuth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_73
    if-eqz v2, :cond_80

    if-eqz p3, :cond_79

    if-nez p4, :cond_80

    :cond_79
    const/4 v0, 0x0

    :goto_7a
    return v0

    :cond_7b
    const/4 v0, 0x1

    goto :goto_28

    :cond_7d
    const/4 v1, 0x0

    move v2, v1

    goto :goto_51

    :cond_80
    const/4 v1, -0x1

    if-ne p2, v1, :cond_a6

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".port"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_185

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_a6
    :goto_a6
    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_290

    :cond_ae
    const-string v1, "localhost"

    :goto_b0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v4, :cond_189

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->openServer()V

    :goto_b8
    if-eqz v0, :cond_28d

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    move-result v0

    :goto_c2
    if-nez v0, :cond_cb

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->helo(Ljava/lang/String;)V

    :cond_cb
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    if-eqz v0, :cond_e1

    const-string v0, "STARTTLS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    :cond_e1
    if-nez v2, :cond_e7

    if-eqz p3, :cond_281

    if-eqz p4, :cond_281

    :cond_e7
    const-string v0, "AUTH"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f7

    const-string v0, "AUTH=LOGIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_281

    :cond_f7
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_119

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Attempt to authenticate"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "LOGIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_119

    const-string v0, "AUTH=LOGIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_119

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: use AUTH=LOGIN hack"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_119
    const-string v0, "LOGIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_129

    const-string v0, "AUTH=LOGIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    :cond_129
    const-string v0, "AUTH LOGIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x212

    if-ne v0, v1, :cond_13c

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    const-string v0, "AUTH LOGIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v0

    :cond_13c
    :try_start_13c
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lcom/sun/mail/util/BASE64EncoderStream;

    const v3, 0x7fffffff

    invoke-direct {v2, v1, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v3, 0x14e

    if-ne v0, v3, :cond_162

    invoke-static {p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_162
    const/16 v3, 0x14e

    if-ne v0, v3, :cond_17b

    invoke-static {p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_17b
    .catchall {:try_start_13c .. :try_end_17b} :catchall_199
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_17b} :catch_18e

    :cond_17b
    const/16 v1, 0xeb

    if-eq v0, v1, :cond_281

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :cond_185
    iget p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    goto/16 :goto_a6

    :cond_189
    invoke-direct {p0, v1, p2}, Lcom/sun/mail/smtp/SMTPTransport;->openServer(Ljava/lang/String;I)V

    goto/16 :goto_b8

    :catch_18e
    move-exception v1

    const/16 v1, 0xeb

    if-eq v0, v1, :cond_281

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :catchall_199
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    const/16 v2, 0xeb

    if-eq v1, v2, :cond_1a7

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :cond_1a7
    throw v0

    :cond_1a8
    const-string v0, "PLAIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_209

    const-string v0, "AUTH PLAIN"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v1

    :try_start_1b6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lcom/sun/mail/util/BASE64EncoderStream;

    const v3, 0x7fffffff

    invoke-direct {v2, v0, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v3, 0x14e

    if-ne v1, v3, :cond_28a

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I
    :try_end_1e7
    .catchall {:try_start_1b6 .. :try_end_1e7} :catchall_1fd
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1e7} :catch_1f2

    move-result v0

    :goto_1e8
    const/16 v1, 0xeb

    if-eq v0, v1, :cond_281

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :catch_1f2
    move-exception v0

    const/16 v0, 0xeb

    if-eq v1, v0, :cond_281

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :catchall_1fd
    move-exception v0

    const/16 v2, 0xeb

    if-eq v1, v2, :cond_208

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :cond_208
    throw v0

    :cond_209
    const-string v0, "DIGEST-MD5"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_281

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getMD5()Lcom/sun/mail/smtp/DigestMD5;

    move-result-object v0

    if-eqz v0, :cond_281

    const-string v2, "AUTH DIGEST-MD5"

    invoke-virtual {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v6

    const/16 v2, 0x14e

    if-ne v6, v2, :cond_288

    :try_start_221
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/smtp/DigestMD5;->authClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I
    :try_end_230
    .catchall {:try_start_221 .. :try_end_230} :catchall_274
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_230} :catch_250

    move-result v1

    const/16 v2, 0x14e

    if-ne v1, v2, :cond_23e

    :try_start_235
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/mail/smtp/DigestMD5;->authServer(Ljava/lang/String;)Z
    :try_end_23a
    .catchall {:try_start_235 .. :try_end_23a} :catchall_284
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_23a} :catch_286

    move-result v0

    if-nez v0, :cond_248

    const/4 v1, -0x1

    :cond_23e
    :goto_23e
    const/16 v0, 0xeb

    if-eq v1, v0, :cond_281

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :cond_248
    const/4 v0, 0x0

    :try_start_249
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I
    :try_end_24e
    .catchall {:try_start_249 .. :try_end_24e} :catchall_284
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_24e} :catch_286

    move-result v1

    goto :goto_23e

    :catch_250
    move-exception v0

    move v1, v6

    :goto_252
    :try_start_252
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_26a

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: DIGEST-MD5: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_26a
    .catchall {:try_start_252 .. :try_end_26a} :catchall_284

    :cond_26a
    const/16 v0, 0xeb

    if-eq v1, v0, :cond_281

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :catchall_274
    move-exception v0

    move v1, v6

    :goto_276
    const/16 v2, 0xeb

    if-eq v1, v2, :cond_280

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    const/4 v0, 0x0

    goto/16 :goto_7a

    :cond_280
    throw v0

    :cond_281
    const/4 v0, 0x1

    goto/16 :goto_7a

    :catchall_284
    move-exception v0

    goto :goto_276

    :catch_286
    move-exception v0

    goto :goto_252

    :cond_288
    move v1, v6

    goto :goto_23e

    :cond_28a
    move v0, v1

    goto/16 :goto_1e8

    :cond_28d
    move v0, v3

    goto/16 :goto_c2

    :cond_290
    move-object v1, p1

    goto/16 :goto_b0
.end method

.method protected rcptTo()V
    .registers 15

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v1, v1, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v1, :cond_27

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getSendPartial()Z

    move-result v0

    :cond_27
    if-nez v0, :cond_340

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sendpartial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15b

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    const/4 v0, 0x1

    :goto_51
    move v1, v0

    :goto_52
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_5f

    if-eqz v1, :cond_5f

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: sendPartial set"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5f
    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v3, "DSN"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33c

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v3, v3, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v3, :cond_77

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNNotify()Ljava/lang/String;

    move-result-object v0

    :cond_77
    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dsn.notify"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_96
    if-eqz v0, :cond_338

    const/4 v2, 0x1

    move v3, v2

    move-object v2, v0

    :goto_9b
    const/4 v0, 0x0

    move v7, v0

    :goto_9d
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v0, v0

    if-lt v7, v0, :cond_15e

    if-eqz v1, :cond_ab

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_ab

    const/4 v4, 0x1

    :cond_ab
    if-eqz v4, :cond_27f

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_cb
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_25b

    const/4 v0, 0x0

    move v1, v0

    :goto_d3
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_26d

    :goto_d9
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v0, v0

    if-lez v0, :cond_f3

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG SMTP: Verified Addresses"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_ee
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lt v0, v1, :cond_2c5

    :cond_f3
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v0, v0

    if-lez v0, :cond_109

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG SMTP: Valid Unsent Addresses"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_104
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lt v0, v1, :cond_2e1

    :cond_109
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v0, v0

    if-lez v0, :cond_11f

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG SMTP: Invalid Addresses"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_11a
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lt v0, v1, :cond_2fd

    :cond_11f
    if-eqz v4, :cond_334

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_12c

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG SMTP: Sending failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12c
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    :try_start_13d
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_148

    const-string v0, "RSET"

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V
    :try_end_148
    .catchall {:try_start_13d .. :try_end_148} :catchall_32e
    .catch Ljavax/mail/MessagingException; {:try_start_13d .. :try_end_148} :catch_319

    :cond_148
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    :goto_14c
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v1, "Invalid Addresses"

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v0

    :cond_15b
    const/4 v0, 0x0

    goto/16 :goto_51

    :cond_15e
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v0, v0, v7

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "RCPT TO:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_335

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " NOTIFY="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    :goto_195
    invoke-virtual {p0, v8}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v12

    sparse-switch v12, :sswitch_data_344

    const/16 v5, 0x190

    if-lt v12, v5, :cond_20b

    const/16 v5, 0x1f3

    if-gt v12, v5, :cond_20b

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1aa
    if-nez v1, :cond_1ad

    const/4 v4, 0x1

    :cond_1ad
    new-instance v5, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v13, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v5, v0, v8, v12, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v6, :cond_254

    move v0, v4

    move-object v4, v5

    :goto_1b8
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move-object v6, v4

    move v4, v0

    goto/16 :goto_9d

    :sswitch_1bf
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v5, :cond_1c9

    move v0, v4

    move-object v4, v6

    goto :goto_1b8

    :cond_1c9
    new-instance v5, Lcom/sun/mail/smtp/SMTPAddressSucceededException;

    iget-object v13, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v5, v0, v8, v12, v13}, Lcom/sun/mail/smtp/SMTPAddressSucceededException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v6, :cond_1d5

    move v0, v4

    move-object v4, v5

    goto :goto_1b8

    :cond_1d5
    invoke-virtual {v6, v5}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move v0, v4

    move-object v4, v6

    goto :goto_1b8

    :sswitch_1db
    if-nez v1, :cond_1de

    const/4 v4, 0x1

    :cond_1de
    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v5, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v13, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v5, v0, v8, v12, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v6, :cond_1ed

    move v0, v4

    move-object v4, v5

    goto :goto_1b8

    :cond_1ed
    invoke-virtual {v6, v5}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move v0, v4

    move-object v4, v6

    goto :goto_1b8

    :sswitch_1f3
    if-nez v1, :cond_1f6

    const/4 v4, 0x1

    :cond_1f6
    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v5, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v13, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v5, v0, v8, v12, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v6, :cond_205

    move v0, v4

    move-object v4, v5

    goto :goto_1b8

    :cond_205
    invoke-virtual {v6, v5}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move v0, v4

    move-object v4, v6

    goto :goto_1b8

    :cond_20b
    const/16 v5, 0x1f4

    if-lt v12, v5, :cond_217

    const/16 v5, 0x257

    if-gt v12, v5, :cond_217

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1aa

    :cond_217
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_23b

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: got response code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", with response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_23b
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v3, :cond_24a

    const-string v3, "RSET"

    const/16 v4, 0xfa

    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    :cond_24a
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    new-instance v2, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    invoke-direct {v2, v0, v8, v12, v1}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :cond_254
    invoke-virtual {v6, v5}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move v0, v4

    move-object v4, v6

    goto/16 :goto_1b8

    :cond_25b
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Address;

    aput-object v0, v5, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto/16 :goto_cb

    :cond_26d
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v10, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Address;

    aput-object v0, v5, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto/16 :goto_d3

    :cond_27f
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v0, :cond_291

    if-eqz v1, :cond_2bf

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_291

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2bf

    :cond_291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    iput-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto/16 :goto_d9

    :cond_2bf
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto/16 :goto_d9

    :cond_2c5
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_ee

    :cond_2e1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_104

    :cond_2fd
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11a

    :catch_319
    move-exception v0

    :try_start_31a
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_31d
    .catchall {:try_start_31a .. :try_end_31d} :catchall_32e
    .catch Ljavax/mail/MessagingException; {:try_start_31a .. :try_end_31d} :catch_323

    :cond_31d
    :goto_31d
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    goto/16 :goto_14c

    :catch_323
    move-exception v0

    :try_start_324
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_31d

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_32d
    .catchall {:try_start_324 .. :try_end_32d} :catchall_32e

    goto :goto_31d

    :catchall_32e
    move-exception v0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    throw v0

    :cond_334
    return-void

    :cond_335
    move-object v8, v5

    goto/16 :goto_195

    :cond_338
    move v3, v2

    move-object v2, v0

    goto/16 :goto_9b

    :cond_33c
    move v3, v2

    move-object v2, v0

    goto/16 :goto_9b

    :cond_340
    move v1, v0

    goto/16 :goto_52

    nop

    :sswitch_data_344
    .sparse-switch
        0xfa -> :sswitch_1bf
        0xfb -> :sswitch_1bf
        0x1c2 -> :sswitch_1f3
        0x1c3 -> :sswitch_1f3
        0x1c4 -> :sswitch_1f3
        0x1f5 -> :sswitch_1db
        0x1f7 -> :sswitch_1db
        0x226 -> :sswitch_1db
        0x227 -> :sswitch_1db
        0x228 -> :sswitch_1f3
        0x229 -> :sswitch_1db
    .end sparse-switch
.end method

.method protected readServerResponse()I
    .registers 7

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v0, -0x1

    sget-boolean v1, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v1, :cond_13

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    const-string v1, ""

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_30

    const-string v1, "[EOF]"

    :cond_30
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: EOF: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return v0

    :cond_4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->isNotLastLine(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_5f} :catch_92

    move-result-object v2

    if-eqz v2, :cond_db

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_db

    const/4 v1, 0x0

    const/4 v3, 0x3

    :try_start_6a
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_71} :catch_b9
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6a .. :try_end_71} :catch_ca

    move-result v1

    :goto_72
    if-ne v1, v0, :cond_8c

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: bad server response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8c
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    move v0, v1

    goto :goto_4d

    :catch_92
    move-exception v0

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: exception reading response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ab
    const-string v1, ""

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Exception reading response"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_b9
    move-exception v1

    :try_start_ba
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_bd
    .catch Ljavax/mail/MessagingException; {:try_start_ba .. :try_end_bd} :catch_bf

    :cond_bd
    :goto_bd
    move v1, v0

    goto :goto_72

    :catch_bf
    move-exception v1

    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_bd

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_bd

    :catch_ca
    move-exception v1

    :try_start_cb
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_ce
    .catch Ljavax/mail/MessagingException; {:try_start_cb .. :try_end_ce} :catch_d0

    :cond_ce
    :goto_ce
    move v1, v0

    goto :goto_72

    :catch_d0
    move-exception v1

    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_ce

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_ce

    :cond_db
    move v1, v0

    goto :goto_72
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    return-void
.end method

.method public declared-synchronized sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->checkConnected()V

    instance-of v1, p1, Ljavax/mail/internet/MimeMessage;

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Can only send RFC822 msgs"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "SMTP can only send RFC822 messages"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_20
    move v1, v3

    :goto_21
    :try_start_21
    array-length v4, p2

    if-lt v1, v4, :cond_106

    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    move-object v1, v0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->expandGroups()V

    instance-of v1, p1, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v1, :cond_178

    check-cast p1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {p1}, Lcom/sun/mail/smtp/SMTPMessage;->getAllow8bitMIME()Z

    move-result v1

    :goto_3b
    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".allow8bitmime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12b

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12b

    move v1, v2

    :cond_65
    :goto_65
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: use8bit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7d
    if-eqz v1, :cond_94

    const-string v1, "8BITMIME"

    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-direct {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    :try_end_8c
    .catchall {:try_start_21 .. :try_end_8c} :catchall_1d

    move-result v1

    if-eqz v1, :cond_94

    :try_start_8f
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_1d
    .catch Ljavax/mail/MessagingException; {:try_start_8f .. :try_end_94} :catch_175

    :cond_94
    :goto_94
    :try_start_94
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->mailFrom()V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->rcptTo()V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->data()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishData()V

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    if-eqz v1, :cond_12e

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Sending partially failed because of invalid destination addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b7
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    new-instance v1, Lcom/sun/mail/smtp/SMTPSendFailedException;

    const-string v2, "."

    iget v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    invoke-direct/range {v1 .. v8}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v1
    :try_end_d8
    .catchall {:try_start_94 .. :try_end_d8} :catchall_f1
    .catch Ljavax/mail/MessagingException; {:try_start_94 .. :try_end_d8} :catch_d8
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_d8} :catch_150

    :catch_d8
    move-exception v1

    move-object v7, v1

    :try_start_da
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_e3
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    throw v7
    :try_end_f1
    .catchall {:try_start_da .. :try_end_f1} :catchall_f1

    :catchall_f1
    move-exception v1

    const/4 v2, 0x0

    :try_start_f3
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    throw v1

    :cond_106
    aget-object v4, p2, v1

    instance-of v4, v4, Ljavax/mail/internet/InternetAddress;

    if-nez v4, :cond_127

    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not an InternetAddress"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_127
    .catchall {:try_start_f3 .. :try_end_127} :catchall_1d

    :cond_127
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    :cond_12b
    move v1, v3

    goto/16 :goto_65

    :cond_12e
    const/4 v2, 0x1

    :try_start_12f
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    :try_end_13b
    .catchall {:try_start_12f .. :try_end_13b} :catchall_f1
    .catch Ljavax/mail/MessagingException; {:try_start_12f .. :try_end_13b} :catch_d8
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_13b} :catch_150

    const/4 v1, 0x0

    :try_start_13c
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z
    :try_end_14e
    .catchall {:try_start_13c .. :try_end_14e} :catchall_1d

    monitor-exit p0

    return-void

    :catch_150
    move-exception v1

    move-object v7, v1

    :try_start_152
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_15b

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_15b
    .catchall {:try_start_152 .. :try_end_15b} :catchall_f1

    :cond_15b
    :try_start_15b
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_f1
    .catch Ljavax/mail/MessagingException; {:try_start_15b .. :try_end_15e} :catch_173

    :goto_15e
    const/4 v2, 0x2

    :try_start_15f
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException while sending message"

    invoke-direct {v1, v2, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_173
    .catchall {:try_start_15f .. :try_end_173} :catchall_f1

    :catch_173
    move-exception v1

    goto :goto_15e

    :catch_175
    move-exception v1

    goto/16 :goto_94

    :cond_178
    move v1, v3

    goto/16 :goto_3b
.end method

.method public declared-synchronized setLocalHost(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReportSuccess(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSASLRealm(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartTLS(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseRset(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized simpleCommand(Ljava/lang/String;)I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result v0

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected simpleCommand([B)I
    .registers 3

    sget-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    return v0
.end method

.method protected startTLS()V
    .registers 5

    const-string v0, "STARTTLS"

    const/16 v1, 0xdc

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    :try_start_7
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected supportsAuthentication(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const-string v2, "AUTH"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_16

    :cond_25
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_2a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_32

    move v0, v1

    goto :goto_16

    :cond_32
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_16
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

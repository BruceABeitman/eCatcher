.class public Lcom/sun/mail/imap/IMAPStore;
.super Ljavax/mail/Store;
.source "SourceFile"

# interfaces
.implements Lcom/sun/mail/iap/ResponseHandler;
.implements Ljavax/mail/QuotaAwareStore;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final RESPONSE:I = 0x3e8


# instance fields
.field private appendBufferSize:I

.field private authorizationID:Ljava/lang/String;

.field private blksize:I

.field private volatile connected:Z

.field private defaultPort:I

.field private disableAuthLogin:Z

.field private disableAuthPlain:Z

.field private enableImapEvents:Z

.field private enableSASL:Z

.field private enableStartTLS:Z

.field private forcePasswordRefresh:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field private minIdleTime:I

.field private name:Ljava/lang/String;

.field private namespaces:Lcom/sun/mail/imap/protocol/Namespaces;

.field private out:Ljava/io/PrintStream;

.field private password:Ljava/lang/String;

.field private pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

.field private port:I

.field private proxyAuthUser:Ljava/lang/String;

.field private saslMechanisms:[Ljava/lang/String;

.field private saslRealm:Ljava/lang/String;

.field private statusCacheTimeout:I

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 9

    const-string v3, "imap"

    const/16 v4, 0x8f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/imap/IMAPStore;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .registers 11

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "imap"

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const/16 v0, 0x8f

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    iput v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    iput v3, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    new-instance v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-direct {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    :cond_3b
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iput p4, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    iput-boolean p5, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J
    invoke-static {v0, v1, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_5e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".connectionpool.debug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".partialfetch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49b

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49b

    iput v3, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: mail.imap.partialfetch: false"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b6
    :goto_b6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".statuscachetimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.statuscachetimeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".appendbuffersize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_12c

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.appendbuffersize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".minidletime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_167

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_167

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.minidletime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".connectionpoolsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1af

    :try_start_182
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_18d

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I
    invoke-static {v1, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$2(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V
    :try_end_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_182 .. :try_end_18d} :catch_4ed

    :cond_18d
    :goto_18d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_1af

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.connectionpoolsize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1af
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".connectionpooltimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f8

    :try_start_1ca
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1d6

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    int-to-long v2, v0

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J
    invoke-static {v1, v2, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$5(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    :try_end_1d6
    .catch Ljava/lang/NumberFormatException; {:try_start_1ca .. :try_end_1d6} :catch_4ea

    :cond_1d6
    :goto_1d6
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.connectionpooltimeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".servertimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_241

    :try_start_213
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_21f

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    int-to-long v2, v0

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J
    invoke-static {v1, v2, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    :try_end_21f
    .catch Ljava/lang/NumberFormatException; {:try_start_213 .. :try_end_21f} :catch_4e7

    :cond_21f
    :goto_21f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_241

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.servertimeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".separatestoreconnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_278

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_278

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_273

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: dedicate a store connection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_273
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z
    invoke-static {v0, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$9(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    :cond_278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".proxyauth.user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2af

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_2af

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.proxyauth.user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2af
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".auth.login.disable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2df

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2df

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_2dd

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: disable AUTH=LOGIN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2dd
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    :cond_2df
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".auth.plain.disable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30f

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30f

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_30d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: disable AUTH=PLAIN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_30d
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    :cond_30f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".starttls.enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33f

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33f

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_33d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: enable STARTTLS"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_33d
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    :cond_33f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sasl.enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36f

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36f

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_36d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: enable SASL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_36d
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    :cond_36f
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v0, :cond_3cc

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sasl.mechanisms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3cc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3cc

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v1, :cond_3ac

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: SASL mechanisms allowed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3ac
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " ,"

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b9
    :goto_3b9
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_4d8

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :cond_3cc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sasl.authorizationid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_403

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_403

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.sasl.authorizationid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sasl.realm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43a

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_43a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.sasl.realm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_43a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".forcepasswordrefresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46a

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46a

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_468

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: enable forcePasswordRefresh"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_468
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    :cond_46a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".enableimapevents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49a

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49a

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_498

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: enable IMAP events"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_498
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    :cond_49a
    return-void

    :cond_49b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fetchsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4bc

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    :cond_4bc
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail.imap.fetchsize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_b6

    :cond_4d8
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3b9

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3b9

    :catch_4e7
    move-exception v0

    goto/16 :goto_21f

    :catch_4ea
    move-exception v0

    goto/16 :goto_1d6

    :catch_4ed
    move-exception v0

    goto/16 :goto_18d
.end method

.method private checkConnected()V
    .registers 3

    sget-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-nez v0, :cond_20

    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljavax/mail/Store;->setConnected(Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private cleanup()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->cleanup(Z)V

    return-void
.end method

.method private cleanup(Z)V
    .registers 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: IMAPStore cleanup, force "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_1d
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_4e

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v4, 0x0

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v0, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V

    move v0, v3

    :goto_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_53

    if-eqz v0, :cond_56

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    :try_start_38
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->emptyConnectionPool(Z)V

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_8b

    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->notifyConnectionListeners(I)V

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: IMAPStore cleanup done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4d
    return-void

    :cond_4e
    const/4 v1, 0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_32

    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v3

    :goto_5b
    if-lt v2, v4, :cond_5f

    move-object v0, v1

    goto :goto_1a

    :cond_5f
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz p1, :cond_79

    :try_start_67
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v6, "DEBUG: force folder to close"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_72
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->forceClose()V

    :goto_75
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5b

    :cond_79
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v5, :cond_84

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v6, "DEBUG: close folder"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_84
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sun/mail/imap/IMAPFolder;->close(Z)V
    :try_end_88
    .catch Ljavax/mail/MessagingException; {:try_start_67 .. :try_end_88} :catch_89
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_88} :catch_8e

    goto :goto_75

    :catch_89
    move-exception v0

    goto :goto_75

    :catchall_8b
    move-exception v0

    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v0

    :catch_8e
    move-exception v0

    goto :goto_75
.end method

.method private emptyConnectionPool(Z)V
    .registers 5

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_10
    if-gez v1, :cond_2c

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_4a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: removed all authenticated connections"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2b
    return-void

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    if-eqz p1, :cond_44

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    :goto_40
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_10

    :cond_44
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_4a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2c .. :try_end_47} :catch_48

    goto :goto_40

    :catch_48
    move-exception v0

    goto :goto_40

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private declared-synchronized getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    if-nez v1, :cond_1b

    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_52
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_9 .. :try_end_c} :catch_1f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_c} :catch_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_c} :catch_44

    move-result-object v0

    :try_start_d
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->namespace()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_57
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_d .. :try_end_13} :catch_1f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d .. :try_end_13} :catch_61
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_13} :catch_5c

    :try_start_13
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_29

    monitor-exit p0

    return-object v0

    :catch_1f
    move-exception v1

    :try_start_20
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_29

    goto :goto_1b

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2c
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_30
    :try_start_30
    new-instance v2, Ljavax/mail/StoreClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v2
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_43

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_43
    throw v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_29

    :catch_44
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_48
    :try_start_48
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_3a

    :catchall_52
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3b

    :catchall_57
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3b

    :catch_5c
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_48

    :catch_61
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_30
.end method

.method private login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    if-eqz v0, :cond_12

    const-string v0, "STARTTLS"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->startTLS()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    :cond_12
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    const-string v1, "__PRELOGIN__"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    :goto_2a
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_5e

    :goto_3e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyauth(Ljava/lang/String;)V

    :cond_47
    const-string v0, "__PRELOGIN__"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :try_start_4f
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V
    :try_end_52
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4f .. :try_end_52} :catch_53
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4f .. :try_end_52} :catch_9a

    goto :goto_18

    :catch_53
    move-exception v0

    throw v0

    :cond_55
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    goto :goto_2a

    :cond_5c
    move-object v3, p2

    goto :goto_2a

    :cond_5e
    const-string v0, "AUTH=PLAIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    if-nez v0, :cond_6e

    invoke-virtual {p1, v3, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_6e
    const-string v0, "AUTH-LOGIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "AUTH=LOGIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_7e
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    if-nez v0, :cond_86

    invoke-virtual {p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_86
    const-string v0, "LOGINDISABLED"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    invoke-virtual {p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_92
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "No login methods supported!"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_9a
    move-exception v0

    goto/16 :goto_18
.end method

.method private namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 10

    const/4 v1, 0x0

    array-length v0, p1

    new-array v4, v0, [Ljavax/mail/Folder;

    move v0, v1

    :goto_5
    array-length v2, v4

    if-lt v0, v2, :cond_9

    return-object v4

    :cond_9
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    if-nez p2, :cond_38

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_27

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-object v6, p1, v0

    iget-char v6, v6, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-ne v5, v6, :cond_27

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_27
    :goto_27
    new-instance v5, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v3, p1, v0

    iget-char v6, v3, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-nez p2, :cond_4a

    const/4 v3, 0x1

    :goto_30
    invoke-direct {v5, v2, v6, p0, v3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_4a
    move v3, v1

    goto :goto_30
.end method

.method private timeoutConnections()V
    .registers 10

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$17(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_7e

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7e

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: checking for connections to prune: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J
    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: clientTimeoutInterval: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_66
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_73
    if-gtz v1, :cond_80

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J
    invoke-static {v0, v3, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V

    :cond_7e
    monitor-exit v2

    return-void

    :cond_80
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: protocol last used: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J
    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_e9

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-eqz v3, :cond_da

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: authenticated connection timed out"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: logging out the connection"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_da
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_e6
    .catchall {:try_start_3 .. :try_end_e6} :catchall_ed

    :try_start_e6
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ed
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e6 .. :try_end_e9} :catch_f0

    :cond_e9
    :goto_e9
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_73

    :catchall_ed
    move-exception v0

    :try_start_ee
    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v0

    :catch_f0
    move-exception v0

    goto :goto_e9
.end method

.method private waitIfIdle()V
    .registers 3

    sget-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$21(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v1, 0x2

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_38

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    if-nez v0, :cond_12

    return-void

    :catch_38
    move-exception v0

    goto :goto_2f
.end method


# virtual methods
.method allowReadOnlySelect()Z
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".allowreadonlyselect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public declared-synchronized close()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_44
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_d} :catch_36

    :try_start_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_33

    if-eqz v0, :cond_49

    :try_start_1a
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: close() - no connections "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_29
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_44
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1a .. :try_end_2c} :catch_36

    :try_start_2c
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_7

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_44
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    :try_start_37
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    :try_start_45
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_30

    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_44
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_49 .. :try_end_50} :catch_36

    :try_start_50
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_61

    :try_start_5a
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_44
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5a .. :try_end_5d} :catch_36

    :try_start_5d
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_30

    goto :goto_7

    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_44
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_63 .. :try_end_64} :catch_36
.end method

.method protected finalize()V
    .registers 1

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->close()V

    return-void
.end method

.method getAppendBufferSize()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    return v0
.end method

.method getConnectionPoolDebug()Z
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getDefaultFolder()Ljavax/mail/Folder;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFetchBlockSize()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    return v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    const v1, 0xffff

    invoke-direct {v0, p1, v1, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMinIdleTime()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    return v0
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .registers 3

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_f

    :cond_a
    invoke-super {p0}, Ljavax/mail/Store;->getPersonalNamespaces()[Ljavax/mail/Folder;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    goto :goto_e
.end method

.method getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 13

    const/4 v9, 0x0

    move-object v8, v9

    :goto_2
    if-eqz v8, :cond_5

    return-object v8

    :cond_5
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v10

    :try_start_8
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_a0

    :cond_31
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: no connections in the pool, creating a new one"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_92

    :cond_3c
    :try_start_3c
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3e} :catch_124

    if-eqz v0, :cond_61

    :try_start_40
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_92
    .catch Ljava/net/UnknownHostException; {:try_start_40 .. :try_end_45} :catch_95
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_124

    move-result-object v1

    :goto_46
    :try_start_46
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    iget v2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    :cond_61
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v4}, Ljavax/mail/Session;->getDebug()Z

    move-result v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v6}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_80
    .catchall {:try_start_46 .. :try_end_80} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_80} :catch_124

    :try_start_80
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_98

    move-object v8, v0

    :goto_88
    if-nez v8, :cond_f1

    :try_start_8a
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "connection failure"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_92
    move-exception v0

    monitor-exit v10
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_92

    throw v0

    :catch_95
    move-exception v0

    move-object v1, v9

    goto :goto_46

    :catch_98
    move-exception v1

    :goto_99
    if-eqz v0, :cond_9e

    :try_start_9b
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_11f

    :cond_9e
    :goto_9e
    move-object v8, v9

    goto :goto_88

    :cond_a0
    :try_start_a0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: connection available -- size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    :try_end_e5
    .catchall {:try_start_a0 .. :try_end_e5} :catchall_92

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_ed

    :try_start_ea
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_92
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_ea .. :try_end_ed} :catch_114

    :cond_ed
    :try_start_ed
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    move-object v8, v0

    :cond_f1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    if-eqz p1, :cond_111

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V

    :cond_108
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_111
    monitor-exit v10
    :try_end_112
    .catchall {:try_start_ed .. :try_end_112} :catchall_92

    goto/16 :goto_2

    :catch_114
    move-exception v1

    :try_start_115
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_11b
    .catchall {:try_start_115 .. :try_end_11b} :catchall_122

    :goto_11b
    :try_start_11b
    monitor-exit v10
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_92

    move-object v8, v9

    goto/16 :goto_2

    :catch_11f
    move-exception v0

    goto/16 :goto_9e

    :catchall_122
    move-exception v0

    goto :goto_11b

    :catch_124
    move-exception v0

    move-object v0, v8

    goto/16 :goto_99
.end method

.method public declared-synchronized getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .registers 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    const/4 v0, 0x0

    check-cast v0, [Ljavax/mail/Quota;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_2d

    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_23
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_f} :catch_1a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_f} :catch_30
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_f} :catch_3b

    move-result-object v0

    :try_start_10
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_18

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_2d

    :cond_18
    monitor-exit p0

    return-object v0

    :catch_1a
    move-exception v0

    :try_start_1b
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "QUOTA not supported"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    :try_start_24
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_2c

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_30
    move-exception v0

    :try_start_31
    new-instance v2, Ljavax/mail/StoreClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v2

    :catch_3b
    move-exception v0

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_23
.end method

.method getSession()Ljavax/mail/Session;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .registers 3

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_f

    :cond_a
    invoke-super {p0}, Ljavax/mail/Store;->getSharedNamespaces()[Ljavax/mail/Folder;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    goto :goto_e
.end method

.method getStatusCacheTimeout()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    return v0
.end method

.method getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 12

    const/4 v9, 0x0

    move-object v8, v9

    :goto_2
    if-eqz v8, :cond_5

    return-object v8

    :cond_5
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v10

    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->waitIfIdle()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: getStoreProtocol() - no connections in the pool, creating a new one"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_57

    :cond_26
    :try_start_26
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v4}, Ljavax/mail/Session;->getDebug()Z

    move-result v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v6}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_45} :catch_d0

    :try_start_45
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_5a

    move-object v8, v0

    :goto_4d
    if-nez v8, :cond_62

    :try_start_4f
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    const-string v1, "failed to create new store connection"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_57
    move-exception v0

    monitor-exit v10
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw v0

    :catch_5a
    move-exception v1

    :goto_5b
    if-eqz v0, :cond_60

    :try_start_5d
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_ce

    :cond_60
    :goto_60
    move-object v8, v9

    goto :goto_4d

    :cond_62
    :try_start_62
    invoke-virtual {v8, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_6e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    :try_end_73
    .catchall {:try_start_62 .. :try_end_73} :catchall_57

    move-result v0

    if-eqz v0, :cond_b8

    :try_start_76
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_57
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_7b} :catch_b5

    move-object v8, v9

    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    monitor-exit v10

    goto :goto_2

    :cond_81
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: getStoreProtocol() - connection available -- size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a7
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object v8, v0

    goto :goto_6e

    :catch_b5
    move-exception v0

    move-object v8, v9

    goto :goto_7c

    :cond_b8
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v1, 0x1

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z
    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: getStoreProtocol() -- storeConnectionInUse"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_7c .. :try_end_cd} :catchall_57

    goto :goto_7c

    :catch_ce
    move-exception v0

    goto :goto_60

    :catch_d0
    move-exception v0

    move-object v0, v8

    goto :goto_5b
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 4

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_f

    :cond_a
    invoke-super {p0, p1}, Ljavax/mail/Store;->getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    goto :goto_e
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_18
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    :cond_1b
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: IMAPStore connection dead"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2c
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->cleanup(Z)V

    :cond_37
    return-void
.end method

.method handleResponseCode(Lcom/sun/mail/iap/Response;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_25

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[ALERT]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    move v0, v1

    :cond_25
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_2f
    if-eqz v0, :cond_35

    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    goto :goto_34
.end method

.method public declared-synchronized hasCapability(Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_1f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_9} :catch_f

    move-result v0

    :try_start_a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_24

    monitor-exit p0

    return v0

    :catch_f
    move-exception v0

    if-nez v1, :cond_15

    :try_start_12
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_15
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    :try_start_20
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method hasSeparateStoreConnection()Z
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public idle()V
    .registers 6

    const/4 v1, 0x0

    sget-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    monitor-enter p0

    :try_start_14
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_6e

    :try_start_18
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_99
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_18 .. :try_end_1b} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_18 .. :try_end_1b} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_18 .. :try_end_1b} :catch_d1

    :try_start_1b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v3, 0x1

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v0, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_8d

    :cond_36
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_99
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_36 .. :try_end_3d} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_36 .. :try_end_3d} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_36 .. :try_end_3d} :catch_d1

    if-eqz v0, :cond_45

    :try_start_3f
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v3

    if-nez v3, :cond_ad

    :cond_45
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v3, 0x0

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v0, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_ce

    :try_start_51
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_99
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_51 .. :try_end_54} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_51 .. :try_end_54} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_51 .. :try_end_54} :catch_d1

    move-result v0

    if-lez v0, :cond_5b

    int-to-long v2, v0

    :try_start_58
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_99
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_e2
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_58 .. :try_end_5b} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_58 .. :try_end_5b} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_58 .. :try_end_5b} :catch_d1

    :cond_5b
    :goto_5b
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_5e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v3, 0x0

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {v0, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_df

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_6d

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_6d
    :goto_6d
    return-void

    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    :cond_71
    :try_start_71
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_8d
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_76} :catch_e5

    :goto_76
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_8d

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_7a
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v3, 0x0

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {v0, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_8a

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_6d

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    goto :goto_6d

    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0

    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_99
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8f .. :try_end_90} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8f .. :try_end_90} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8f .. :try_end_90} :catch_d1

    :catch_90
    move-exception v0

    :try_start_91
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "IDLE not supported"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_9d
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v4, 0x0

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {v3, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_dc

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_ac

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_ac
    throw v0

    :cond_ad
    :try_start_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ce

    :try_start_ae
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0x3e8

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_ae .. :try_end_c1} :catchall_99
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_ae .. :try_end_c1} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_ae .. :try_end_c1} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_ae .. :try_end_c1} :catch_d1

    goto/16 :goto_36

    :catch_c3
    move-exception v0

    :try_start_c4
    new-instance v2, Ljavax/mail/StoreClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v2
    :try_end_ce
    .catchall {:try_start_c4 .. :try_end_ce} :catchall_99

    :catchall_ce
    move-exception v0

    :try_start_cf
    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    :try_start_d0
    throw v0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_99
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_d0 .. :try_end_d1} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d0 .. :try_end_d1} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d0 .. :try_end_d1} :catch_d1

    :catch_d1
    move-exception v0

    :try_start_d2
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_99

    :catchall_dc
    move-exception v0

    :try_start_dd
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v0

    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0

    :catch_e2
    move-exception v0

    goto/16 :goto_5b

    :catch_e5
    move-exception v0

    goto :goto_76
.end method

.method public declared-synchronized isConnected()Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-nez v1, :cond_c

    const/4 v1, 0x0

    invoke-super {p0, v1}, Ljavax/mail/Store;->setConnected(Z)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_26

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_29
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_10} :catch_1c

    move-result-object v0

    :try_start_11
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_31
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_11 .. :try_end_14} :catch_1c

    :try_start_14
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    :goto_17
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_26

    move-result v0

    goto :goto_a

    :catch_1c
    move-exception v1

    if-nez v0, :cond_22

    :try_start_1f
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_31

    :cond_22
    :try_start_22
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_17

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_29
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_2d
    :try_start_2d
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_26

    :catchall_31
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2d
.end method

.method isConnectionPoolFull()Z
    .registers 5

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: current size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_39
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v2

    if-lt v0, v2, :cond_4e

    const/4 v0, 0x1

    :goto_4c
    monitor-exit v1

    return v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4c

    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v0
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 16

    const/4 v8, 0x1

    const/4 v3, -0x1

    monitor-enter p0

    const/4 v9, 0x0

    if-eqz p1, :cond_a

    if-eqz p4, :cond_a

    if-nez p3, :cond_40

    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: protocolConnect returning false, host="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", user="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", password="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_3d

    const-string v0, "<non-null>"

    :goto_2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_e8

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    monitor-exit p0

    return v0

    :cond_3d
    :try_start_3d
    const-string v0, "<null>"

    goto :goto_2f

    :cond_40
    if-eq p2, v3, :cond_c1

    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    :cond_44
    :goto_44
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    if-ne v0, v3, :cond_4c

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_e8

    :cond_4c
    :try_start_4c
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_e8
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4c .. :try_end_4f} :catch_ee
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4c .. :try_end_4f} :catch_10b
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_116

    :try_start_4f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_eb

    if-eqz v0, :cond_bb

    :try_start_5c
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebug()Z

    move-result v4

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v5

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_7a
    .catchall {:try_start_5c .. :try_end_7a} :catchall_e8
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5c .. :try_end_7a} :catch_ee
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5c .. :try_end_7a} :catch_10b
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_7a} :catch_116

    :try_start_7a
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: protocolConnect login, host="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", password=<non-null>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a2
    invoke-direct {p0, v0, p3, p4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2
    :try_end_b1
    .catchall {:try_start_7a .. :try_end_b1} :catchall_e8
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_7a .. :try_end_b1} :catch_106
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7a .. :try_end_b1} :catch_10b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_b1} :catch_116

    :try_start_b1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_103

    :cond_bb
    const/4 v0, 0x1

    :try_start_bc
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    move v0, v8

    goto/16 :goto_3b

    :cond_c1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_e6
    .catchall {:try_start_bc .. :try_end_e6} :catchall_e8

    goto/16 :goto_44

    :catchall_e8
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    :try_start_ed
    throw v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_e8
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_ed .. :try_end_ee} :catch_ee
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_ed .. :try_end_ee} :catch_10b
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_ee} :catch_116

    :catch_ee
    move-exception v0

    move-object v1, v9

    :goto_f0
    if-eqz v1, :cond_f5

    :try_start_f2
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    :cond_f5
    new-instance v1, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_103
    .catchall {:try_start_f2 .. :try_end_103} :catchall_e8

    :catchall_103
    move-exception v1

    :try_start_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    :try_start_105
    throw v1
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_e8
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_105 .. :try_end_106} :catch_106
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_105 .. :try_end_106} :catch_10b
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_106} :catch_116

    :catch_106
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_f0

    :catch_10b
    move-exception v0

    :try_start_10c
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_116
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_121
    .catchall {:try_start_10c .. :try_end_121} :catchall_e8
.end method

.method releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 7

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    if-eqz p2, :cond_39

    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: added an Authenticated connection -- size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_4a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    monitor-exit v1

    return-void

    :cond_4f
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: pool is full, not adding an Authenticated connection"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_60

    :cond_5a
    :try_start_5a
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_60
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_39

    :catch_5e
    move-exception v0

    goto :goto_39

    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0
.end method

.method releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v2, 0x0

    #setter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z
    invoke-static {v0, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    #getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: releaseStoreProtocol()"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_20
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    monitor-exit v1

    goto :goto_2

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQuota(Ljavax/mail/Quota;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_29

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1f
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_5 .. :try_end_c} :catch_16
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_c} :catch_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_c} :catch_37

    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_29

    :cond_14
    monitor-exit p0

    return-void

    :catch_16
    move-exception v0

    :try_start_17
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "QUOTA not supported"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    :try_start_20
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_28

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_28
    throw v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2c
    move-exception v0

    :try_start_2d
    new-instance v2, Ljavax/mail/StoreClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v2

    :catch_37
    move-exception v0

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_1f
.end method

.method public declared-synchronized setUsername(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

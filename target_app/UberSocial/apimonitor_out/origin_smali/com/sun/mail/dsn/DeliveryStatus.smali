.class public Lcom/sun/mail/dsn/DeliveryStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static debug:Z


# instance fields
.field protected messageDSN:Ljavax/mail/internet/InternetHeaders;

.field protected recipientDSN:[Ljavax/mail/internet/InternetHeaders;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    :try_start_3
    const-string v1, "mail.dsn.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    sput-boolean v0, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/internet/InternetHeaders;

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    sget-boolean v0, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v0, :cond_15

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DSN: got messageDSN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_1a
    :try_start_1a
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_1d
    .catch Ljava/io/EOFException; {:try_start_1a .. :try_end_1d} :catch_5e

    move-result v1

    if-gtz v1, :cond_4a

    :cond_20
    :goto_20
    sget-boolean v1, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v1, :cond_3c

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DSN: recipientDSN size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3c
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/internet/InternetHeaders;

    iput-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void

    :cond_4a
    :try_start_4a
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    sget-boolean v2, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v2, :cond_5a

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DSN: got recipientDSN"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5a
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/io/EOFException; {:try_start_4a .. :try_end_5d} :catch_5e

    goto :goto_1a

    :catch_5e
    move-exception v1

    sget-boolean v1, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v1, :cond_20

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DSN: got EOFException"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20
.end method

.method private static writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V
    .registers 6

    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v1

    :goto_4
    :try_start_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_14
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_4

    :catch_15
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_22

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_22
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception writing headers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRecipientDSN(Ljavax/mail/internet/InternetHeaders;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljavax/mail/internet/InternetHeaders;

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v2, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public getMessageDSN()Ljavax/mail/internet/InternetHeaders;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    return-object v0
.end method

.method public getRecipientDSN(I)Ljavax/mail/internet/InternetHeaders;
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRecipientDSNCount()I
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v0, v0

    return v0
.end method

.method public setMessageDSN(Ljavax/mail/internet/InternetHeaders;)V
    .registers 2

    iput-object p1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeliveryStatus: Reporting-MTA="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    const-string v2, "Reporting-MTA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", #Recipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    instance-of v0, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v0, :cond_15

    check-cast p1, Lcom/sun/mail/util/LineOutputStream;

    :goto_6
    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    invoke-static {v0, p1}, Lcom/sun/mail/dsn/DeliveryStatus;->writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V

    invoke-virtual {p1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    return-void

    :cond_15
    new-instance v0, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    goto :goto_6

    :cond_1c
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/sun/mail/dsn/DeliveryStatus;->writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V

    invoke-virtual {p1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

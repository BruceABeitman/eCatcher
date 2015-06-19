.class public Lcom/sun/mail/dsn/text_rfc822headers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;

.field private static myDFs:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Lcom/sun/mail/dsn/MessageHeaders;

    const-string v2, "text/rfc822-headers"

    const-string v3, "RFC822 headers"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljava/lang/String;

    const-string v2, "text/rfc822-headers"

    const-string v3, "RFC822 headers"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "charset"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "us-ascii"

    :cond_f
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13
.end method

.method private getStringContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 9

    const/high16 v6, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_4
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/dsn/text_rfc822headers;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_15} :catch_29

    const/16 v0, 0x400

    new-array v0, v0, [C

    move v1, v2

    :goto_1a
    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_30

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :catch_29
    move-exception v1

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    add-int/2addr v3, v1

    array-length v1, v0

    if-lt v3, v1, :cond_42

    array-length v1, v0

    if-ge v1, v6, :cond_40

    add-int/2addr v1, v1

    :goto_38
    new-array v1, v1, [C

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    move v1, v3

    goto :goto_1a

    :cond_40
    add-int/2addr v1, v6

    goto :goto_38

    :cond_42
    move v1, v3

    goto :goto_1a
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    new-instance v0, Lcom/sun/mail/dsn/MessageHeaders;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/mail/dsn/MessageHeaders;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception creating MessageHeaders: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTransferData(Lc/a/a/a;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lc/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lc/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getStringContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getTransferDataFlavors()[Lc/a/a/a;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lc/a/a/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 8

    instance-of v0, p1, Lcom/sun/mail/dsn/MessageHeaders;

    if-eqz v0, :cond_2b

    check-cast p1, Lcom/sun/mail/dsn/MessageHeaders;

    :try_start_6
    invoke-virtual {p1, p3}, Lcom/sun/mail/dsn/MessageHeaders;->writeTo(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_16

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_16
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

    :cond_2b
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_62

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v2}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" DataContentHandler requires String object, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "was given object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    const/4 v0, 0x0

    :try_start_63
    invoke-direct {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_6c} :catch_7a

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_9

    :catch_7a
    move-exception v1

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

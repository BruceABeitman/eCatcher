.class public Ljavax/mail/internet/MimeBodyPart;
.super Ljavax/mail/BodyPart;
.source "SourceFile"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# static fields
.field static cacheMultipart:Z

.field private static decodeFileName:Z

.field private static encodeFileName:Z

.field private static setContentTypeFileName:Z

.field private static setDefaultTextCharset:Z


# instance fields
.field private cachedContent:Ljava/lang/Object;

.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected headers:Ljavax/mail/internet/InternetHeaders;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sput-boolean v1, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    sput-boolean v1, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    sput-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    :try_start_c
    const-string v2, "mail.mime.setdefaulttextcharset"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6b

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    move v2, v0

    :goto_1d
    sput-boolean v2, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    const-string v2, "mail.mime.setcontenttypefilename"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    move v2, v0

    :goto_30
    sput-boolean v2, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    const-string v2, "mail.mime.encodefilename"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    move v2, v1

    :goto_43
    sput-boolean v2, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    const-string v2, "mail.mime.decodefilename"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_71

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    move v2, v1

    :goto_56
    sput-boolean v2, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    const-string v2, "mail.mime.cachemultipart"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    :goto_68
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z
    :try_end_6a
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_6a} :catch_75

    :goto_6a
    return-void

    :cond_6b
    move v2, v1

    goto :goto_1d

    :cond_6d
    move v2, v1

    goto :goto_30

    :cond_6f
    move v2, v0

    goto :goto_43

    :cond_71
    move v2, v0

    goto :goto_56

    :cond_73
    move v0, v1

    goto :goto_68

    :catch_75
    move-exception v0

    goto :goto_6a
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7

    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_3e

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_3e

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_3e

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_14
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    instance-of v1, v0, Ljavax/mail/internet/SharedInputStream;

    if-eqz v1, :cond_2e

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    :goto_2d
    return-void

    :cond_2e
    :try_start_2e
    invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_35

    goto :goto_2d

    :catch_35
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Error reading input stream"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3e
    move-object v0, p1

    goto :goto_14
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;[B)V
    .registers 3

    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    iput-object p2, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    return-void
.end method

.method static getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-string v1, "Content-Language"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    new-instance v2, Ljavax/mail/internet/HeaderTokenizer;

    const-string v3, "()<>@,;:\\\"\t []/?="

    invoke-direct {v2, v1, v3}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :cond_16
    :goto_16
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    const/4 v5, -0x4

    if-ne v4, v5, :cond_31

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_9

    :cond_31
    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method static getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const-string v1, "Content-Description"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_9

    :catch_13
    move-exception v0

    move-object v0, v1

    goto :goto_9
.end method

.method static getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const-string v1, "Content-Disposition"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentDisposition;->getDisposition()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method static getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "8bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "binary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljavax/mail/internet/HeaderTokenizer;

    const-string v2, "()<>@,;:\\\"\t []/?="

    invoke-direct {v1, v0, v2}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    const/4 v4, -0x4

    if-eq v3, v4, :cond_9

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3d

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method static getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v2, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    if-nez v0, :cond_29

    const-string v2, "Content-Type"

    invoke-interface {p0, v2, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    :try_start_1e
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v2, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Ljavax/mail/internet/ParseException; {:try_start_1e .. :try_end_28} :catch_3d

    move-result-object v0

    :cond_29
    :goto_29
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    :try_start_2f
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_32} :catch_34

    move-result-object v0

    :cond_33
    return-object v0

    :catch_34
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t decode filename"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3d
    move-exception v1

    goto :goto_29

    :cond_3f
    move-object v0, v1

    goto :goto_14
.end method

.method static invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    .registers 2

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method static isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
    :try_end_c
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v0

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method static setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_9
    array-length v2, p1

    if-lt v0, v2, :cond_16

    const-string v0, "Content-Language"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method static setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_8

    const-string v0, "Content-Description"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    :try_start_8
    const-string v0, "Content-Description"

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_7

    :catch_19
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Encoding error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_8

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljavax/mail/internet/ContentDisposition;->setDisposition(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1d
    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method static setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .registers 3

    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    :try_start_7
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_a} :catch_48

    move-result-object p1

    :cond_b
    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    if-nez v0, :cond_17

    const-string v0, "attachment"

    :cond_17
    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-virtual {v1, v0, p1}, Ljavax/mail/internet/ContentDisposition;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Disposition"

    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v0, :cond_47

    const-string v0, "Content-Type"

    invoke-interface {p0, v0, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    :try_start_34
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {v1, v0, p1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljavax/mail/internet/ParseException; {:try_start_34 .. :try_end_47} :catch_51

    :cond_47
    :goto_47
    return-void

    :catch_48
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t encode filename"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_51
    move-exception v0

    goto :goto_47
.end method

.method static setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p2, :cond_d

    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p2

    :cond_d
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-static {p2, v1}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_30
    const-string p2, "us-ascii"

    goto :goto_d
.end method

.method static updateHeaders(Ljavax/mail/internet/MimePart;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v5

    if-nez v5, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    invoke-virtual {v5}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-interface {p0, v4}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_ac

    move v4, v3

    :goto_16
    new-instance v6, Ljavax/mail/internet/ContentType;

    invoke-direct {v6, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v7, "multipart/*"

    invoke-virtual {v6, v7}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fe

    instance-of v1, p0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v1, :cond_b5

    move-object v0, p0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    move-object v1, v0

    iget-object v7, v1, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v7, :cond_af

    iget-object v1, v1, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    :goto_31
    instance-of v7, v1, Ljavax/mail/internet/MimeMultipart;

    if-eqz v7, :cond_d1

    check-cast v1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->updateHeaders()V

    move v1, v3

    :cond_3b
    :goto_3b
    if-nez v1, :cond_10f

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {p0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4c

    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    :cond_4c
    if-eqz v4, :cond_10f

    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    if-eqz v1, :cond_10f

    const-string v1, "text/*"

    invoke-virtual {v6, v1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    const-string v1, "charset"

    invoke-virtual {v6, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10f

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_109

    const-string v2, "7bit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_109

    const-string v1, "us-ascii"

    :goto_72
    const-string v2, "charset"

    invoke-virtual {v6, v2, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7b
    if-eqz v4, :cond_8

    const-string v2, "Content-Disposition"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    new-instance v3, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v3, v2}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    const-string v2, "filename"

    invoke-virtual {v3, v2}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    const-string v1, "name"

    invoke-virtual {v6, v1, v2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9c
    const-string v2, "Content-Type"

    invoke-interface {p0, v2, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_a1} :catch_a3

    goto/16 :goto_8

    :catch_a3
    move-exception v1

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "IOException updating headers"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_ac
    move v4, v1

    goto/16 :goto_16

    :cond_af
    :try_start_af
    invoke-virtual {v5}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_31

    :cond_b5
    instance-of v1, p0, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_cb

    move-object v0, p0

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    move-object v1, v0

    iget-object v7, v1, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v7, :cond_c5

    iget-object v1, v1, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    goto/16 :goto_31

    :cond_c5
    invoke-virtual {v5}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_31

    :cond_cb
    invoke-virtual {v5}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_31

    :cond_d1
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MIME part of type \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" contains object of type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of MimeMultipart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_fe
    const-string v7, "message/rfc822"

    invoke-virtual {v6, v7}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    move v1, v3

    goto/16 :goto_3b

    :cond_109
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_10c} :catch_a3

    move-result-object v1

    goto/16 :goto_72

    :cond_10f
    move-object v1, v2

    goto/16 :goto_7b
.end method

.method static writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .registers 6

    instance-of v0, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lcom/sun/mail/util/LineOutputStream;

    move-object v1, v0

    :goto_8
    invoke-interface {p0, p2}, Ljavax/mail/internet/MimePart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_28
    new-instance v0, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    goto :goto_8

    :cond_2f
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_c
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    return-void
.end method

.method public attachFile(Ljava/io/File;)V
    .registers 4

    new-instance v0, Ljavax/activation/FileDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    new-instance v1, Ljavax/activation/DataHandler;

    invoke-direct {v1, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    invoke-virtual {v0}, Ljavax/activation/FileDataSource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public attachFile(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/io/File;)V

    return-void
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;
    :try_end_e
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_7 .. :try_end_e} :catch_26
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_7 .. :try_end_e} :catch_35

    move-result-object v0

    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_6

    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_1b

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_6

    :cond_1b
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-nez v1, :cond_23

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    :cond_23
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    goto :goto_6

    :catch_26
    move-exception v0

    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :catch_35
    move-exception v0

    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContentID()Ljava/lang/String;
    .registers 3

    const-string v0, "Content-Id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .registers 3

    const-string v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .registers 6

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_10

    :cond_1d
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "text/plain"

    :cond_b
    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_10

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    :cond_10
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .registers 2

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    array-length v0, v0

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    :try_start_c
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_16

    move-result v0

    if-gtz v0, :cond_7

    :cond_14
    :goto_14
    const/4 v0, -0x1

    goto :goto_7

    :catch_16
    move-exception v0

    goto :goto_14
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public saveFile(Ljava/io/File;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3d

    :try_start_b
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_13
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_29

    move-result v3

    if-gtz v3, :cond_24

    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_39

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_23

    :try_start_20
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_3b

    :cond_23
    :goto_23
    return-void

    :cond_24
    const/4 v4, 0x0

    :try_start_25
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_13

    :catchall_29
    move-exception v0

    :goto_2a
    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_35

    :cond_2f
    :goto_2f
    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_37

    :cond_34
    :goto_34
    throw v0

    :catch_35
    move-exception v1

    goto :goto_2f

    :catch_37
    move-exception v1

    goto :goto_34

    :catch_39
    move-exception v0

    goto :goto_1e

    :catch_3b
    move-exception v0

    goto :goto_23

    :catchall_3d
    move-exception v0

    move-object v2, v1

    goto :goto_2a
.end method

.method public saveFile(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->saveFile(Ljava/io/File;)V

    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_a

    check-cast p1, Ljavax/mail/Multipart;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    goto :goto_9
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .registers 4

    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_8

    const-string v0, "Content-ID"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Content-MD5"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .registers 3

    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "plain"

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateHeaders()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_24

    new-instance v0, Ljavax/activation/DataHandler;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_22

    :try_start_1d
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_25

    :cond_22
    :goto_22
    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    :cond_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_22
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void
.end method

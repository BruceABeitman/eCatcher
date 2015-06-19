.class public Lorg/apache/http/entity/mime/HttpMultipart;
.super Ljava/lang/Object;
.source "HttpMultipart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/entity/mime/HttpMultipart$1;
    }
.end annotation


# static fields
.field private static final CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/nio/charset/Charset;

.field private final mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private final subType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string/jumbo v1, ": "

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string/jumbo v1, "\r\n"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string/jumbo v1, "--"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Multipart subtype may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Multipart boundary may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iput-object p1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->subType:Ljava/lang/String;

    if-eqz p2, :cond_2b

    :goto_1d
    iput-object p2, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lorg/apache/http/entity/mime/HttpMultipart;->boundary:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-void

    :cond_2b
    sget-object p2, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_1d
.end method

.method private doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v9, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    iget-object v9, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/entity/mime/FormBodyPart;

    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {v8}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    move-result-object v5

    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    invoke-virtual {p1}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_9e

    :cond_38
    :goto_38
    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_46

    invoke-virtual {v8}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v9

    invoke-interface {v9, p2}, Lorg/apache/http/entity/mime/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    :cond_46
    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_10

    :pswitch_4c
    invoke-virtual {v5}, Lorg/apache/http/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/entity/mime/MinimalField;

    invoke-static {v3, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/io/OutputStream;)V

    goto :goto_50

    :pswitch_60
    invoke-virtual {v8}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    move-result-object v9

    const-string/jumbo v10, "Content-Disposition"

    invoke-virtual {v9, v10}, Lorg/apache/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    move-result-object v1

    iget-object v9, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    invoke-virtual {v8}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-virtual {v8}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    move-result-object v9

    const-string/jumbo v10, "Content-Type"

    invoke-virtual {v9, v10}, Lorg/apache/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    move-result-object v2

    iget-object v9, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v2, v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_38

    :cond_8b
    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_60
    .end packed-switch
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .registers 7

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    return-object v0
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v1, p0}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private static writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public addBodyPart(Lorg/apache/http/entity/mime/FormBodyPart;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getBodyParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMode()Lorg/apache/http/entity/mime/HttpMultipartMode;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .registers 15

    const-wide/16 v10, -0x1

    const-wide/16 v1, 0x0

    iget-object v12, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-virtual {v9}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_38

    add-long/2addr v1, v6

    goto :goto_a

    :cond_26
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_2b
    iget-object v12, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v8, v13}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v10, v4
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_36} :catch_39

    int-to-long v10, v10

    add-long/2addr v10, v1

    :cond_38
    :goto_38
    return-wide v10

    :catch_39
    move-exception v3

    goto :goto_38
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    return-void
.end method

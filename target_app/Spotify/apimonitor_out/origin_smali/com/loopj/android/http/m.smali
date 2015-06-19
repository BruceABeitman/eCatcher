.class public final Lcom/loopj/android/http/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final a:Ljava/lang/UnsupportedOperationException;

.field private static final c:Ljava/lang/StringBuilder;

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:Lorg/apache/http/Header;

.field private static final l:Lorg/apache/http/Header;


# instance fields
.field private final b:[B

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lorg/apache/http/Header;

.field private final o:Lcom/loopj/android/http/s;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/m;->a:Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/m;->d:[B

    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/m;->e:[B

    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/m;->f:[B

    const-string v0, "name"

    invoke-static {v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/m;->g:[B

    const-string v0, "type"

    invoke-static {v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/m;->h:[B

    const-string v0, "contents"

    invoke-static {v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/m;->i:[B

    const-string v0, "_elapsed"

    invoke-static {v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/m;->j:[B

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/m;->k:Lorg/apache/http/Header;

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/m;->l:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/s;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loopj/android/http/m;->b:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/m;->m:Ljava/util/Map;

    iput-object p1, p0, Lcom/loopj/android/http/m;->o:Lcom/loopj/android/http/s;

    if-eqz p2, :cond_19

    sget-object v0, Lcom/loopj/android/http/m;->l:Lorg/apache/http/Header;

    :goto_16
    iput-object v0, p0, Lcom/loopj/android/http/m;->n:Lorg/apache/http/Header;

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private a(Ljava/io/OutputStream;Lcom/loopj/android/http/q;)V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/loopj/android/http/q;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p2, Lcom/loopj/android/http/q;->b:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/loopj/android/http/m;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/loopj/android/http/q;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p2, Lcom/loopj/android/http/q;->a:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Lcom/loopj/android/http/j;

    invoke-direct {v4, p1}, Lcom/loopj/android/http/j;-><init>(Ljava/io/OutputStream;)V

    move v0, v1

    :goto_20
    iget-object v5, p0, Lcom/loopj/android/http/m;->b:[B

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_35

    iget-object v6, p0, Lcom/loopj/android/http/m;->b:[B

    invoke-virtual {v4, v6, v1, v5}, Lcom/loopj/android/http/j;->write([BII)V

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/loopj/android/http/m;->o:Lcom/loopj/android/http/s;

    invoke-interface {v5, v0, v2}, Lcom/loopj/android/http/s;->a(II)V

    goto :goto_20

    :cond_35
    invoke-static {v4}, Lcom/loopj/android/http/b;->a(Ljava/io/OutputStream;)V

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-static {v3}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;Lcom/loopj/android/http/r;)V
    .registers 7

    iget-object v0, p2, Lcom/loopj/android/http/r;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/loopj/android/http/r;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/loopj/android/http/m;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loopj/android/http/j;

    invoke-direct {v0, p1}, Lcom/loopj/android/http/j;-><init>(Ljava/io/OutputStream;)V

    :goto_c
    iget-object v1, p2, Lcom/loopj/android/http/r;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/loopj/android/http/m;->b:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget-object v2, p0, Lcom/loopj/android/http/m;->b:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/loopj/android/http/j;->write([BII)V

    goto :goto_c

    :cond_1e
    invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/OutputStream;)V

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p2, Lcom/loopj/android/http/r;->d:Z

    if-eqz v0, :cond_2f

    iget-object v0, p2, Lcom/loopj/android/http/r;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V

    :cond_2f
    return-void
.end method

.method private static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/16 v2, 0x2c

    const/16 v1, 0x3a

    sget-object v0, Lcom/loopj/android/http/m;->g:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p1}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/loopj/android/http/m;->h:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p2}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/loopj/android/http/m;->i:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 10

    const/16 v8, 0x22

    const/4 v1, 0x0

    if-nez p0, :cond_8

    sget-object v0, Lcom/loopj/android/http/m;->f:[B

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, -0x1

    :goto_12
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v3, :cond_a6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_c4

    if-ltz v0, :cond_23

    const/16 v4, 0x1f

    if-le v0, v4, :cond_33

    :cond_23
    const/16 v4, 0x7f

    if-lt v0, v4, :cond_2b

    const/16 v4, 0x9f

    if-le v0, v4, :cond_33

    :cond_2b
    const/16 v4, 0x2000

    if-lt v0, v4, :cond_9e

    const/16 v4, 0x20ff

    if-gt v0, v4, :cond_9e

    :cond_33
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v5, "\\u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v5, v0, 0x4

    move v0, v1

    :goto_45
    if-ge v0, v5, :cond_90

    sget-object v6, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :sswitch_51
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v4, "\\\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_12

    :sswitch_5a
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v4, "\\\\"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_12

    :sswitch_63
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v4, "\\b"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_12

    :sswitch_6c
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v4, "\\f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_12

    :sswitch_75
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_12

    :sswitch_7e
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_12

    :sswitch_87
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    const-string v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_12

    :cond_90
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto/16 :goto_12

    :cond_9e
    sget-object v4, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto/16 :goto_12

    :cond_a6
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_ab
    sget-object v0, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_bc

    move-result-object v0

    sget-object v2, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_7

    :catchall_bc
    move-exception v0

    sget-object v2, Lcom/loopj/android/http/m;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0

    nop

    :sswitch_data_c4
    .sparse-switch
        0x8 -> :sswitch_63
        0x9 -> :sswitch_87
        0xa -> :sswitch_75
        0xc -> :sswitch_6c
        0xd -> :sswitch_7e
        0x22 -> :sswitch_51
        0x5c -> :sswitch_5a
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/loopj/android/http/m;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final consumeContent()V
    .registers 1

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 2

    sget-object v0, Lcom/loopj/android/http/m;->a:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    iget-object v0, p0, Lcom/loopj/android/http/m;->n:Lorg/apache/http/Header;

    return-object v0
.end method

.method public final getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .registers 2

    sget-object v0, Lcom/loopj/android/http/m;->k:Lorg/apache/http/Header;

    return-object v0
.end method

.method public final isChunked()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 11

    const/16 v8, 0x7b

    const/16 v7, 0x3a

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Output stream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loopj/android/http/m;->n:Lorg/apache/http/Header;

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object p1, v0

    :cond_1e
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/loopj/android/http/m;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/loopj/android/http/m;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-static {v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    instance-of v0, v1, Lcom/loopj/android/http/q;

    if-nez v0, :cond_51

    instance-of v5, v1, Lcom/loopj/android/http/r;

    if-eqz v5, :cond_6d

    :cond_51
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    if-eqz v0, :cond_67

    move-object v0, v1

    check-cast v0, Lcom/loopj/android/http/q;

    invoke-direct {p0, p1, v0}, Lcom/loopj/android/http/m;->a(Ljava/io/OutputStream;Lcom/loopj/android/http/q;)V

    :goto_5c
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_61
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2b

    :cond_67
    check-cast v1, Lcom/loopj/android/http/r;

    invoke-direct {p0, p1, v1}, Lcom/loopj/android/http/m;->a(Ljava/io/OutputStream;Lcom/loopj/android/http/r;)V

    goto :goto_5c

    :cond_6d
    instance-of v0, v1, Lcom/loopj/android/http/n;

    if-eqz v0, :cond_7b

    check-cast v1, Lcom/loopj/android/http/n;

    invoke-interface {v1}, Lcom/loopj/android/http/n;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_61

    :cond_7b
    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_8d

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_61

    :cond_8d
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_9f

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_61

    :cond_9f
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b1

    sget-object v0, Lcom/loopj/android/http/m;->d:[B

    :goto_ad
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_61

    :cond_b1
    sget-object v0, Lcom/loopj/android/http/m;->e:[B

    goto :goto_ad

    :cond_b4
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_61

    :cond_d3
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_f3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_61

    :cond_f3
    instance-of v0, v1, Ljava/lang/Float;

    if-eqz v0, :cond_113

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_61

    :cond_113
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_133

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_61

    :cond_133
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_61

    :cond_140
    sget-object v0, Lcom/loopj/android/http/m;->j:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "JsonStreamerEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Uploaded JSON in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-static {p1}, Lcom/loopj/android/http/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

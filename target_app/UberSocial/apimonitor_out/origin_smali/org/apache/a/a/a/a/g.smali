.class public Lorg/apache/a/a/a/a/g;
.super Lorg/apache/a/a/a/a/a;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "text/plain"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 6

    invoke-direct {p0, p2}, Lorg/apache/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p3, :cond_15

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    :cond_15
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/a/a/a/a/g;->a:[B

    iput-object p3, p0, Lorg/apache/a/a/a/a/g;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 4

    const-string v0, "text/plain"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/a/a/a/a/g;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/a/a/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/a/a/a/a/g;
    .registers 7

    :try_start_0
    new-instance v0, Lorg/apache/a/a/a/a/g;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/a/a/a/a/g;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/a/a/a/a/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/a/a/a/a/g;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_15
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_15

    :cond_21
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/a/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lorg/apache/a/a/a/a/g;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "8bit"

    return-object v0
.end method

.method public h()Ljava/io/Reader;
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/a/a/a/a/g;->a:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lorg/apache/a/a/a/a/g;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

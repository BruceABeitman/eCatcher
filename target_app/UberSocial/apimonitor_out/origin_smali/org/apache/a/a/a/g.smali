.class public Lorg/apache/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lorg/apache/a/a/a/c;

.field private final c:Lorg/apache/http/Header;

.field private d:J

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/a/a/a/g;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/a/a/a/d;->a:Lorg/apache/a/a/a/d;

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/a/a/a/g;-><init>(Lorg/apache/a/a/a/d;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/a/a/a/d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/a/a/a/g;-><init>(Lorg/apache/a/a/a/d;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/a/a/a/d;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lorg/apache/a/a/a/g;->a()Ljava/lang/String;

    move-result-object p2

    :cond_9
    if-nez p1, :cond_d

    sget-object p1, Lorg/apache/a/a/a/d;->a:Lorg/apache/a/a/a/d;

    :cond_d
    new-instance v0, Lorg/apache/a/a/a/c;

    const-string v1, "form-data"

    invoke-direct {v0, v1, p3, p2, p1}, Lorg/apache/a/a/a/c;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/a/a/a/d;)V

    iput-object v0, p0, Lorg/apache/a/a/a/g;->b:Lorg/apache/a/a/a/c;

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-virtual {p0, p2, p3}, Lorg/apache/a/a/a/g;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/a/a/a/g;->c:Lorg/apache/http/Header;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/a/a/a/g;->e:Z

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1e

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_26

    sget-object v4, Lorg/apache/a/a/a/g;->a:[C

    sget-object v5, Lorg/apache/a/a/a/g;->a:[C

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
    .registers 4

    new-instance v0, Lorg/apache/a/a/a/a;

    invoke-direct {v0, p1, p2}, Lorg/apache/a/a/a/a;-><init>(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V

    invoke-virtual {p0, v0}, Lorg/apache/a/a/a/g;->a(Lorg/apache/a/a/a/a;)V

    return-void
.end method

.method public a(Lorg/apache/a/a/a/a;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/a/a/a/g;->b:Lorg/apache/a/a/a/c;

    invoke-virtual {v0, p1}, Lorg/apache/a/a/a/c;->a(Lorg/apache/a/a/a/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/a/a/a/g;->e:Z

    return-void
.end method

.method public consumeContent()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/a/a/a/g;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-boolean v0, p0, Lorg/apache/a/a/a/g;->e:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/apache/a/a/a/g;->b:Lorg/apache/a/a/a/c;

    invoke-virtual {v0}, Lorg/apache/a/a/a/c;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/a/a/a/g;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/a/a/a/g;->e:Z

    :cond_f
    iget-wide v0, p0, Lorg/apache/a/a/a/g;->d:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/g;->c:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/a/a/a/g;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isRepeatable()Z
    .registers 7

    iget-object v0, p0, Lorg/apache/a/a/a/g;->b:Lorg/apache/a/a/a/c;

    invoke-virtual {v0}, Lorg/apache/a/a/a/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/a/a/a/a;

    invoke-virtual {v0}, Lorg/apache/a/a/a/a;->b()Lorg/apache/a/a/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/a/a/a/a/c;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_a

    const/4 v0, 0x0

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method public isStreaming()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/a/a/a/g;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/a/a/a/g;->b:Lorg/apache/a/a/a/c;

    invoke-virtual {v0, p1}, Lorg/apache/a/a/a/c;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.class public Lorg/apache/a/a/a/a/e;
.super Lorg/apache/a/a/a/a/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0}, Lorg/apache/a/a/a/a/e;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/a/a/a/a/e;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/a/a/a/a/e;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p3}, Lorg/apache/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lorg/apache/a/a/a/a/e;->a:Ljava/io/File;

    if-eqz p2, :cond_16

    iput-object p2, p0, Lorg/apache/a/a/a/a/e;->b:Ljava/lang/String;

    :goto_13
    iput-object p4, p0, Lorg/apache/a/a/a/a/e;->c:Ljava/lang/String;

    return-void

    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/a/a/a/a/e;->b:Ljava/lang/String;

    goto :goto_13
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/a/e;->b:Ljava/lang/String;

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
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lorg/apache/a/a/a/a/e;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x1000

    :try_start_13
    new-array v0, v0, [B

    :goto_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_21

    goto :goto_15

    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_21

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lorg/apache/a/a/a/a/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "binary"

    return-object v0
.end method

.method public h()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/a/a/a/a/e;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public i()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/a/e;->a:Ljava/io/File;

    return-object v0
.end method

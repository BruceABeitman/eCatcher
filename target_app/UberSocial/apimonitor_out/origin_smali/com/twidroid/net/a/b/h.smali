.class Lcom/twidroid/net/a/b/h;
.super Lorg/apache/a/a/a/a/a;
.source "SourceFile"


# instance fields
.field a:Ljava/io/InputStream;

.field b:[B

.field final synthetic c:Lcom/twidroid/net/a/b/g;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/net/a/b/g;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/twidroid/net/a/b/h;->c:Lcom/twidroid/net/a/b/g;

    invoke-direct {p0, p3}, Lorg/apache/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twidroid/net/a/b/h;->b:[B

    iput-object p2, p0, Lcom/twidroid/net/a/b/h;->a:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/twidroid/net/a/b/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/a/b/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/a/b/h;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twidroid/net/a/b/h;->c()J

    move-result-wide v2

    move v0, v1

    :goto_6
    iget-object v4, p0, Lcom/twidroid/net/a/b/h;->a:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/twidroid/net/a/b/h;->b:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_4b

    iget-object v5, p0, Lcom/twidroid/net/a/b/h;->b:[B

    invoke-virtual {p1, v5, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/twidroid/net/a/b/h;->c:Lcom/twidroid/net/a/b/g;

    iget-object v4, v4, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;

    iget-object v4, v4, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/twidroid/net/a/b/h;->c:Lcom/twidroid/net/a/b/g;

    iget-object v4, v4, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;

    iget-object v4, v4, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;

    iget-boolean v4, v4, Lcom/twidroid/net/a/b/c;->c:Z

    if-eqz v4, :cond_37

    const-string v0, "PhotoProvider"

    const-string v1, "Exception stop upload"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/b/a/a;

    const-string v1, "Cancelled"

    invoke-direct {v0, v1}, Lorg/apache/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v4, p0, Lcom/twidroid/net/a/b/h;->c:Lcom/twidroid/net/a/b/g;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    mul-int/lit8 v6, v0, 0x64

    int-to-long v6, v6

    div-long/2addr v6, v2

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/twidroid/net/a/b/g;->a(Lcom/twidroid/net/a/b/g;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_4b
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/net/a/b/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_8

    move-result v0

    int-to-long v0, v0

    :goto_7
    return-wide v0

    :catch_8
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "binary"

    return-object v0
.end method

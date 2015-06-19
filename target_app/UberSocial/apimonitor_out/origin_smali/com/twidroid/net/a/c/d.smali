.class Lcom/twidroid/net/a/c/d;
.super Lorg/apache/a/a/a/a/a;
.source "SourceFile"


# instance fields
.field a:Ljava/io/InputStream;

.field b:[B

.field final synthetic c:Lcom/twidroid/net/a/c/c;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/net/a/c/c;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/twidroid/net/a/c/d;->c:Lcom/twidroid/net/a/c/c;

    invoke-direct {p0, p3}, Lorg/apache/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twidroid/net/a/c/d;->b:[B

    iput-object p2, p0, Lcom/twidroid/net/a/c/d;->a:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/twidroid/net/a/c/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/a/c/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/a/c/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/net/a/c/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    move v0, v1

    :goto_8
    iget-object v3, p0, Lcom/twidroid/net/a/c/d;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/twidroid/net/a/c/d;->b:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3b

    iget-object v4, p0, Lcom/twidroid/net/a/c/d;->b:[B

    invoke-virtual {p1, v4, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v3

    const-string v3, "Twitter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes written"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_3b
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
    iget-object v0, p0, Lcom/twidroid/net/a/c/d;->a:Ljava/io/InputStream;

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

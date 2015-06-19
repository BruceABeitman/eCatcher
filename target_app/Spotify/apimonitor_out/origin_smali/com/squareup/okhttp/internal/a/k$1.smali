.class final Lcom/squareup/okhttp/internal/a/k$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/a/k;->e()Ljava/io/OutputStream;
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/a/k;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a/k;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/k;->a(Lcom/squareup/okhttp/internal/a/k;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/k;->close()V

    return-void
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/k;->a(Lcom/squareup/okhttp/internal/a/k;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/k;->a()V

    :cond_d
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .registers 4

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k$1;->a()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/a/i;->b(I)Lcom/squareup/okhttp/internal/a/i;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    return-void
.end method

.method public final write([BII)V
    .registers 5

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/k$1;->a()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k$1;->a:Lcom/squareup/okhttp/internal/a/k;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/k;->d()Lcom/squareup/okhttp/internal/a/b;

    return-void
.end method

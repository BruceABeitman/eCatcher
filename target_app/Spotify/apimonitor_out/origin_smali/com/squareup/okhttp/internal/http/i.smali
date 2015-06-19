.class Lcom/squareup/okhttp/internal/http/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/io/OutputStream;

.field protected b:Z

.field final synthetic c:Lcom/squareup/okhttp/internal/http/h;

.field private final d:Ljava/net/CacheRequest;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;)V
    .registers 5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    :goto_c
    if-nez v1, :cond_f

    move-object p2, v0

    :cond_f
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/i;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/i;->d:Ljava/net/CacheRequest;

    return-void

    :cond_14
    move-object v1, v0

    goto :goto_c
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->d:Ljava/net/CacheRequest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->d:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    :cond_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->e(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/g;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;I)I

    return-void
.end method

.method protected final a(Lcom/squareup/okhttp/internal/a/i;J)V
    .registers 10

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    sub-long v1, v0, p2

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/i;->a:Ljava/io/OutputStream;

    move-object v0, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/i;JJLjava/io/OutputStream;)V

    :cond_11
    return-void
.end method

.method protected final a(Z)V
    .registers 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->b(Lcom/squareup/okhttp/internal/http/h;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/h;->b(Lcom/squareup/okhttp/internal/http/h;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->d:Ljava/net/CacheRequest;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;I)I

    if-eqz p1, :cond_53

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->c(Lcom/squareup/okhttp/internal/http/h;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->d(Lcom/squareup/okhttp/internal/http/h;)I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->f(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/h;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/h;->e(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/h;->a(Lcom/squareup/okhttp/g;)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->c(Lcom/squareup/okhttp/internal/http/h;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;I)I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/i;->c:Lcom/squareup/okhttp/internal/http/h;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->e(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/g;->close()V

    goto :goto_52
.end method

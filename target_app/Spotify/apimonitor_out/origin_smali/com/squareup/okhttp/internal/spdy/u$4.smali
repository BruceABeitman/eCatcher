.class final Lcom/squareup/okhttp/internal/spdy/u$4;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/u;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/squareup/okhttp/internal/spdy/u;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->c:Lcom/squareup/okhttp/internal/spdy/u;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->b:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->c:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->j(Lcom/squareup/okhttp/internal/spdy/u;)Lcom/squareup/okhttp/internal/spdy/p;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->a:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->b:Ljava/util/List;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/p;->a()Z

    :try_start_d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->c:Lcom/squareup/okhttp/internal/spdy/u;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->a:I

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/c;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->c:Lcom/squareup/okhttp/internal/spdy/u;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_2f

    :try_start_1b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->c:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->k(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/u$4;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_2c

    :goto_2b
    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1

    throw v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v0

    goto :goto_2b
.end method

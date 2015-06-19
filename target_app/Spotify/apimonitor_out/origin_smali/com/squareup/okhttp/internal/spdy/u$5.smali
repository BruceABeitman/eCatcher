.class final Lcom/squareup/okhttp/internal/spdy/u$5;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/u;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lcom/squareup/okhttp/internal/spdy/u;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->d:Lcom/squareup/okhttp/internal/spdy/u;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->b:Ljava/util/List;

    iput-boolean p6, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->c:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->d:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->j(Lcom/squareup/okhttp/internal/spdy/u;)Lcom/squareup/okhttp/internal/spdy/p;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->a:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->b:Ljava/util/List;

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->c:Z

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/p;->b()Z

    :try_start_f
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->d:Lcom/squareup/okhttp/internal/spdy/u;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->a:I

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/c;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->d:Lcom/squareup/okhttp/internal/spdy/u;

    monitor-enter v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_31

    :try_start_1d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->d:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->k(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/u$5;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    :goto_2d
    return-void

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1

    throw v0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    goto :goto_2d
.end method

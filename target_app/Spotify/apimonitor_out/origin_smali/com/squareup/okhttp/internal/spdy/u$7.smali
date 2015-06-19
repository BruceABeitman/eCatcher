.class final Lcom/squareup/okhttp/internal/spdy/u$7;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/u;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

.field final synthetic c:Lcom/squareup/okhttp/internal/spdy/u;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 6

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->c:Lcom/squareup/okhttp/internal/spdy/u;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->c:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->j(Lcom/squareup/okhttp/internal/spdy/u;)Lcom/squareup/okhttp/internal/spdy/p;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->a:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/p;->c()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->c:Lcom/squareup/okhttp/internal/spdy/u;

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->c:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->k(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/u$7;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

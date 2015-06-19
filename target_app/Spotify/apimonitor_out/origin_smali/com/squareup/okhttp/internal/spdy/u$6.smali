.class final Lcom/squareup/okhttp/internal/spdy/u$6;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/u;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/squareup/okhttp/internal/a/i;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/squareup/okhttp/internal/spdy/u;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/a/i;IZ)V
    .registers 8

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->e:Lcom/squareup/okhttp/internal/spdy/u;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->b:Lcom/squareup/okhttp/internal/a/i;

    iput p6, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->c:I

    iput-boolean p7, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->d:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->e:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->j(Lcom/squareup/okhttp/internal/spdy/u;)Lcom/squareup/okhttp/internal/spdy/p;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->a:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->b:Lcom/squareup/okhttp/internal/a/i;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->c:I

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/p;->a(Lcom/squareup/okhttp/internal/a/c;I)Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->e:Lcom/squareup/okhttp/internal/spdy/u;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->a:I

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/c;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->e:Lcom/squareup/okhttp/internal/spdy/u;

    monitor-enter v1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_33

    :try_start_1f
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->e:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->k(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/u$6;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_30

    :goto_2f
    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1

    throw v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_33} :catch_33

    :catch_33
    move-exception v0

    goto :goto_2f
.end method

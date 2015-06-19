.class final Lcom/squareup/okhttp/internal/spdy/w$1;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/w;->a(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/spdy/x;

.field final synthetic b:Lcom/squareup/okhttp/internal/spdy/w;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/w;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/x;)V
    .registers 5

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/w$1;->b:Lcom/squareup/okhttp/internal/spdy/w;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/w$1;->a:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w$1;->b:Lcom/squareup/okhttp/internal/spdy/w;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->f(Lcom/squareup/okhttp/internal/spdy/u;)Lcom/squareup/okhttp/internal/spdy/m;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w$1;->a:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/x;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

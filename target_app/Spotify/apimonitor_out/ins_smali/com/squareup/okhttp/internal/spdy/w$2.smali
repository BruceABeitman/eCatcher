.class final Lcom/squareup/okhttp/internal/spdy/w$2;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"
.field final synthetic a:Lcom/squareup/okhttp/internal/spdy/w;
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/w;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/w$2;->a:Lcom/squareup/okhttp/internal/spdy/w;
invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public final a()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w$2;->a:Lcom/squareup/okhttp/internal/spdy/w;
iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/c;->b()V
:try_end_9
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
goto :goto_9
.end method
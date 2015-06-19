.class final Lcom/squareup/okhttp/internal/spdy/u$1;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"
.field final synthetic a:I
.field final synthetic b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field final synthetic c:Lcom/squareup/okhttp/internal/spdy/u;
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.registers 6
iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/u$1;->c:Lcom/squareup/okhttp/internal/spdy/u;
iput p4, p0, Lcom/squareup/okhttp/internal/spdy/u$1;->a:I
iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/u$1;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public final a()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$1;->c:Lcom/squareup/okhttp/internal/spdy/u;
iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$1;->a:I
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/u$1;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/u;->b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
:try_end_9
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
goto :goto_9
.end method
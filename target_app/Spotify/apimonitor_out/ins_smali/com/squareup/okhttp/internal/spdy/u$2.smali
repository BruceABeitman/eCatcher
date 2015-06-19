.class final Lcom/squareup/okhttp/internal/spdy/u$2;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"
.field final synthetic a:I
.field final synthetic b:J
.field final synthetic c:Lcom/squareup/okhttp/internal/spdy/u;
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;IJ)V
.registers 7
iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/u$2;->c:Lcom/squareup/okhttp/internal/spdy/u;
iput p4, p0, Lcom/squareup/okhttp/internal/spdy/u$2;->a:I
iput-wide p5, p0, Lcom/squareup/okhttp/internal/spdy/u$2;->b:J
invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public final a()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$2;->c:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;
iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u$2;->a:I
iget-wide v2, p0, Lcom/squareup/okhttp/internal/spdy/u$2;->b:J
invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/c;->a(IJ)V
:goto_b
:try_end_b
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
goto :goto_b
.end method
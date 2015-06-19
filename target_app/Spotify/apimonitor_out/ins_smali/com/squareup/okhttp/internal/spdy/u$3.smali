.class final Lcom/squareup/okhttp/internal/spdy/u$3;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"
.field final synthetic a:Z
.field final synthetic b:I
.field final synthetic c:I
.field final synthetic d:Lcom/squareup/okhttp/internal/spdy/o;
.field final synthetic e:Lcom/squareup/okhttp/internal/spdy/u;
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;II)V
.registers 7
iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->e:Lcom/squareup/okhttp/internal/spdy/u;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->a:Z
iput p4, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->b:I
iput p5, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->c:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->d:Lcom/squareup/okhttp/internal/spdy/o;
invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public final a()V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->e:Lcom/squareup/okhttp/internal/spdy/u;
iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->a:Z
iget v2, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->b:I
iget v3, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->c:I
iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u$3;->d:Lcom/squareup/okhttp/internal/spdy/o;
invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;ZIILcom/squareup/okhttp/internal/spdy/o;)V
:try_end_d
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
return-void
:catch_e
move-exception v0
goto :goto_d
.end method
.class final Lcom/squareup/okhttp/internal/spdy/n$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a/p;
.field final synthetic a:Lcom/squareup/okhttp/internal/a/c;
.field final synthetic b:Lcom/squareup/okhttp/internal/spdy/n;
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/n;Lcom/squareup/okhttp/internal/a/c;)V
.registers 3
iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/n$1;->b:Lcom/squareup/okhttp/internal/spdy/n;
iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/n$1;->a:Lcom/squareup/okhttp/internal/a/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
.registers 9
const-wide/16 v0, -0x1
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n$1;->b:Lcom/squareup/okhttp/internal/spdy/n;
invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/n;->a(Lcom/squareup/okhttp/internal/spdy/n;)I
move-result v2
if-nez v2, :cond_b
:cond_a
:goto_a
return-wide v0
:cond_b
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n$1;->a:Lcom/squareup/okhttp/internal/a/c;
iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/n$1;->b:Lcom/squareup/okhttp/internal/spdy/n;
invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/n;->a(Lcom/squareup/okhttp/internal/spdy/n;)I
move-result v3
int-to-long v3, v3
invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J
move-result-wide v3
invoke-interface {v2, p1, v3, v4}, Lcom/squareup/okhttp/internal/a/c;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v2
cmp-long v4, v2, v0
if-eqz v4, :cond_a
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n$1;->b:Lcom/squareup/okhttp/internal/spdy/n;
invoke-static {v0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/n;->a(Lcom/squareup/okhttp/internal/spdy/n;J)I
move-wide v0, v2
goto :goto_a
.end method
.method public final close()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n$1;->a:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->close()V
return-void
.end method
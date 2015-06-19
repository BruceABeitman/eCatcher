.class final Lcom/squareup/okhttp/internal/http/n;
.super Lcom/squareup/okhttp/internal/http/i;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a/p;
.field final synthetic d:Lcom/squareup/okhttp/internal/http/h;
.field private e:Z
.method constructor <init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;)V
.registers 3
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lcom/squareup/okhttp/internal/http/h;
invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;)V
return-void
.end method
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
.registers 9
const-wide/16 v0, -0x1
const-wide/16 v2, 0x0
cmp-long v2, p2, v2
if-gez v2, :cond_1d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "byteCount < 0: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/n;->b:Z
if-eqz v2, :cond_29
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z
if-eqz v2, :cond_2e
:goto_2d
return-wide v0
:cond_2e
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lcom/squareup/okhttp/internal/http/h;
invoke-static {v2}, Lcom/squareup/okhttp/internal/http/h;->g(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/c;
move-result-object v2
invoke-interface {v2, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/c;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v2
cmp-long v4, v2, v0
if-nez v4, :cond_44
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z
const/4 v2, 0x0
invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/n;->a(Z)V
goto :goto_2d
:cond_44
invoke-virtual {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/http/n;->a(Lcom/squareup/okhttp/internal/a/i;J)V
move-wide v0, v2
goto :goto_2d
.end method
.method public final close()V
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z
if-nez v0, :cond_c
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/n;->a()V
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Z
goto :goto_4
.end method
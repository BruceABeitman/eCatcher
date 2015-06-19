.class final Lcom/squareup/okhttp/internal/http/aj;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a/p;
.field private final a:Lcom/squareup/okhttp/internal/spdy/x;
.field private final b:Lcom/squareup/okhttp/internal/a/p;
.field private final c:Ljava/net/CacheRequest;
.field private final d:Ljava/io/OutputStream;
.field private e:Z
.field private f:Z
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/x;Ljava/net/CacheRequest;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/aj;->a:Lcom/squareup/okhttp/internal/spdy/x;
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/x;->e()Lcom/squareup/okhttp/internal/a/p;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/internal/http/aj;->b:Lcom/squareup/okhttp/internal/a/p;
if-eqz p2, :cond_1a
invoke-virtual {p2}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;
move-result-object v1
:goto_12
if-nez v1, :cond_15
move-object p2, v0
:cond_15
iput-object v1, p0, Lcom/squareup/okhttp/internal/http/aj;->d:Ljava/io/OutputStream;
iput-object p2, p0, Lcom/squareup/okhttp/internal/http/aj;->c:Ljava/net/CacheRequest;
return-void
:cond_1a
move-object v1, v0
goto :goto_12
.end method
.method private a()Z
.registers 6
:try_start_0
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/aj;->a:Lcom/squareup/okhttp/internal/spdy/x;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/x;->d()J
move-result-wide v0
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/aj;->a:Lcom/squareup/okhttp/internal/spdy/x;
invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/x;->a(J)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/aj;->a:Lcom/squareup/okhttp/internal/spdy/x;
const-wide/16 v3, 0x64
invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/x;->a(J)V
:try_start_12
:try_end_12
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_23
invoke-static {p0}, Lcom/squareup/okhttp/internal/o;->a(Lcom/squareup/okhttp/internal/a/p;)Z
:try_start_15
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_1c
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/aj;->a:Lcom/squareup/okhttp/internal/spdy/x;
invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/x;->a(J)V
const/4 v0, 0x1
:goto_1b
return v0
:catchall_1c
move-exception v2
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/aj;->a:Lcom/squareup/okhttp/internal/spdy/x;
invoke-virtual {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/x;->a(J)V
throw v2
:catch_23
:try_end_23
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_23
move-exception v0
const/4 v0, 0x0
goto :goto_1b
.end method
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
.registers 10
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
iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/aj;->f:Z
if-eqz v2, :cond_29
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/aj;->e:Z
if-eqz v2, :cond_2f
move-wide v3, v0
:goto_2e
:cond_2e
return-wide v3
:cond_2f
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/aj;->b:Lcom/squareup/okhttp/internal/a/p;
invoke-interface {v2, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v3
cmp-long v2, v3, v0
if-nez v2, :cond_47
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/squareup/okhttp/internal/http/aj;->e:Z
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/aj;->c:Ljava/net/CacheRequest;
if-eqz v2, :cond_45
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/aj;->d:Ljava/io/OutputStream;
invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
:cond_45
move-wide v3, v0
goto :goto_2e
:cond_47
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/aj;->d:Ljava/io/OutputStream;
if-eqz v0, :cond_2e
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a/i;->o()J
move-result-wide v0
sub-long v1, v0, v3
iget-object v5, p0, Lcom/squareup/okhttp/internal/http/aj;->d:Ljava/io/OutputStream;
move-object v0, p1
invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/i;JJLjava/io/OutputStream;)V
goto :goto_2e
.end method
.method public final close()V
.registers 3
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/aj;->f:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/aj;->e:Z
if-nez v0, :cond_10
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/aj;->d:Ljava/io/OutputStream;
if-eqz v0, :cond_10
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/aj;->a()Z
:cond_10
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/aj;->f:Z
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/aj;->e:Z
if-nez v0, :cond_4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/aj;->a:Lcom/squareup/okhttp/internal/spdy/x;
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/x;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/aj;->c:Ljava/net/CacheRequest;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/aj;->c:Ljava/net/CacheRequest;
invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V
goto :goto_4
.end method
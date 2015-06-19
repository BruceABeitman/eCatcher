.class final Lcom/squareup/okhttp/c;
.super Ljava/net/CacheRequest;
.source "SourceFile"
.field final synthetic a:Lcom/squareup/okhttp/b;
.field private final b:Lcom/squareup/okhttp/internal/e;
.field private c:Ljava/io/OutputStream;
.field private d:Z
.field private e:Ljava/io/OutputStream;
.method public constructor <init>(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/internal/e;)V
.registers 5
iput-object p1, p0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/b;
invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V
iput-object p2, p0, Lcom/squareup/okhttp/c;->b:Lcom/squareup/okhttp/internal/e;
const/4 v0, 0x1
invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/e;->a(I)Ljava/io/OutputStream;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/c;->c:Ljava/io/OutputStream;
new-instance v0, Lcom/squareup/okhttp/c$1;
iget-object v1, p0, Lcom/squareup/okhttp/c;->c:Ljava/io/OutputStream;
invoke-direct {v0, p0, v1, p1, p2}, Lcom/squareup/okhttp/c$1;-><init>(Lcom/squareup/okhttp/c;Ljava/io/OutputStream;Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/internal/e;)V
iput-object v0, p0, Lcom/squareup/okhttp/c;->e:Ljava/io/OutputStream;
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/c;)Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/c;->d:Z
return v0
.end method
.method static synthetic b(Lcom/squareup/okhttp/c;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/c;->d:Z
return v0
.end method
.method public final abort()V
.registers 3
iget-object v1, p0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/b;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/squareup/okhttp/c;->d:Z
if-eqz v0, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/c;->d:Z
iget-object v0, p0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/b;
invoke-static {v0}, Lcom/squareup/okhttp/b;->b(Lcom/squareup/okhttp/b;)I
monitor-exit v1
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_1f
iget-object v0, p0, Lcom/squareup/okhttp/c;->c:Ljava/io/OutputStream;
invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
:try_start_17
iget-object v0, p0, Lcom/squareup/okhttp/c;->b:Lcom/squareup/okhttp/internal/e;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/e;->b()V
:try_end_1c
.catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1d
goto :goto_8
:catch_1d
move-exception v0
goto :goto_8
:catchall_1f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final getBody()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/c;->e:Ljava/io/OutputStream;
return-object v0
.end method
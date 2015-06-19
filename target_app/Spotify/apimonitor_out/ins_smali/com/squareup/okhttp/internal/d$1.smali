.class final Lcom/squareup/okhttp/internal/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/squareup/okhttp/internal/d;
.method constructor <init>(Lcom/squareup/okhttp/internal/d;)V
.registers 2
iput-object p1, p0, Lcom/squareup/okhttp/internal/d$1;->a:Lcom/squareup/okhttp/internal/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v1, p0, Lcom/squareup/okhttp/internal/d$1;->a:Lcom/squareup/okhttp/internal/d;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/squareup/okhttp/internal/d$1;->a:Lcom/squareup/okhttp/internal/d;
invoke-static {v0}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/internal/d;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
if-nez v0, :cond_d
monitor-exit v1
:goto_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_26
return-void
:cond_d
:try_start_d
iget-object v0, p0, Lcom/squareup/okhttp/internal/d$1;->a:Lcom/squareup/okhttp/internal/d;
invoke-static {v0}, Lcom/squareup/okhttp/internal/d;->b(Lcom/squareup/okhttp/internal/d;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/d$1;->a:Lcom/squareup/okhttp/internal/d;
invoke-static {v0}, Lcom/squareup/okhttp/internal/d;->c(Lcom/squareup/okhttp/internal/d;)Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/squareup/okhttp/internal/d$1;->a:Lcom/squareup/okhttp/internal/d;
invoke-static {v0}, Lcom/squareup/okhttp/internal/d;->d(Lcom/squareup/okhttp/internal/d;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/d$1;->a:Lcom/squareup/okhttp/internal/d;
invoke-static {v0}, Lcom/squareup/okhttp/internal/d;->e(Lcom/squareup/okhttp/internal/d;)I
:cond_24
:try_end_24
.catchall {:try_start_d .. :try_end_24} :catchall_26
.catch Ljava/io/IOException; {:try_start_d .. :try_end_24} :catch_29
:try_start_24
monitor-exit v1
:try_end_25
.catchall {:try_start_24 .. :try_end_25} :catchall_26
goto :goto_c
:catchall_26
move-exception v0
monitor-exit v1
throw v0
:catch_29
move-exception v0
:try_start_2a
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
:try_end_30
.catchall {:try_start_2a .. :try_end_30} :catchall_26
.end method
.class  Lcom/lenovo/httpserver/HttpServer$1;
.super Ljava/lang/Object;
.source "HttpServer.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/lenovo/httpserver/HttpServer;
.method constructor <init>(Lcom/lenovo/httpserver/HttpServer;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/httpserver/HttpServer$1;->a:Lcom/lenovo/httpserver/HttpServer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
const-string/jumbo v0, "HttpServer"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "http server started: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/lenovo/httpserver/HttpServer$1;->a:Lcom/lenovo/httpserver/HttpServer;
invoke-static {v2}, Lcom/lenovo/httpserver/HttpServer;->a(Lcom/lenovo/httpserver/HttpServer;)I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer$1;->a:Lcom/lenovo/httpserver/HttpServer;
invoke-virtual {v0}, Lcom/lenovo/httpserver/HttpServer;->b()V
:try_end_25
.catchall {:try_start_0 .. :try_end_25} :catchall_34
iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer$1;->a:Lcom/lenovo/httpserver/HttpServer;
invoke-virtual {v0}, Lcom/lenovo/httpserver/HttpServer;->a()V
const-string/jumbo v0, "HttpServer"
const-string/jumbo v1, "http server stopped"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V
return-void
:catchall_34
move-exception v0
iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer$1;->a:Lcom/lenovo/httpserver/HttpServer;
invoke-virtual {v1}, Lcom/lenovo/httpserver/HttpServer;->a()V
const-string/jumbo v1, "HttpServer"
const-string/jumbo v2, "http server stopped"
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V
throw v0
.end method
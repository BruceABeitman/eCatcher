.class public final Lcom/google/android/gms/internal/dw;
.super Lcom/google/android/gms/internal/dq;
.field private final a:Ljava/lang/String;
.field private final b:Landroid/content/Context;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/google/android/gms/internal/dq;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/dw;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/dw;->c:Ljava/lang/String;
return-void
.end method
.method public a()V
.registers 5
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Pinging URL: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/dw;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V
new-instance v0, Ljava/net/URL;
iget-object v1, p0, Lcom/google/android/gms/internal/dw;->c:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
:try_end_25
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_64
:try_start_25
iget-object v1, p0, Lcom/google/android/gms/internal/dw;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/internal/dw;->a:Ljava/lang/String;
const/4 v3, 0x1
invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ds;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v1
const/16 v2, 0xc8
if-lt v1, v2, :cond_39
const/16 v2, 0x12c
if-lt v1, v2, :cond_5b
:cond_39
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Received non-success response code "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from pinging URL: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/dw;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
:try_end_5b
.catchall {:try_start_25 .. :try_end_5b} :catchall_5f
:cond_5b
:try_start_5b
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:goto_5e
return-void
:catchall_5f
move-exception v1
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v1
:try_end_64
.catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_64
:catch_64
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Error while pinging URL: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/dw;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ". "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
goto :goto_5e
.end method
.method public b()V
.registers 1
return-void
.end method
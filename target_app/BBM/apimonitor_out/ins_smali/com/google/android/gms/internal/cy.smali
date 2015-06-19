.class public final Lcom/google/android/gms/internal/cy;
.super Lcom/google/android/gms/internal/ct;
.field private final mContext:Landroid/content/Context;
.field private final pR:Ljava/lang/String;
.field private final pS:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/google/android/gms/internal/ct;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/cy;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/cy;->pR:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/cy;->pS:Ljava/lang/String;
return-void
.end method
.method public final aB()V
.registers 5
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Pinging URL: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/cy;->pS:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->v(Ljava/lang/String;)V
new-instance v0, Ljava/net/URL;
iget-object v1, p0, Lcom/google/android/gms/internal/cy;->pS:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
:try_start_21
:try_end_21
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_5c
iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mContext:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/internal/cy;->pR:Ljava/lang/String;
const/4 v3, 0x1
invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v1
const/16 v2, 0xc8
if-lt v1, v2, :cond_35
const/16 v2, 0x12c
if-lt v1, v2, :cond_53
:cond_35
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Received non-success response code "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from pinging URL: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cy;->pS:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
:try_start_53
:try_end_53
.catchall {:try_start_21 .. :try_end_53} :catchall_57
:cond_53
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:goto_56
return-void
:catchall_57
move-exception v1
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v1
:try_end_5c
.catch Ljava/io/IOException; {:try_start_53 .. :try_end_5c} :catch_5c
:catch_5c
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error while pinging URL: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/cy;->pS:Ljava/lang/String;
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
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto :goto_56
.end method
.method public final onStop()V
.registers 3
const-string v1, " + Lcom/google/android/gms/internal/cy; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/internal/cy; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class  Lcom/google/android/gms/wearable/internal/au$11;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/Callable;
.field final synthetic ame:Lcom/google/android/gms/wearable/internal/au;
.field final synthetic amg:Landroid/os/ParcelFileDescriptor;
.field final synthetic yI:[B
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Landroid/os/ParcelFileDescriptor;[B)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$11;->ame:Lcom/google/android/gms/wearable/internal/au;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$11;->amg:Landroid/os/ParcelFileDescriptor;
iput-object p3, p0, Lcom/google/android/gms/wearable/internal/au$11;->yI:[B
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public synthetic call()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au$11;->no()Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method public no()Ljava/lang/Boolean;
.registers 6
const/4 v1, 0x3
const-string v0, "WearableClient"
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_23
const-string v0, "WearableClient"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "processAssets: writing data to FD : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au$11;->amg:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_23
new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$11;->amg:Landroid/os/ParcelFileDescriptor;
invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
:try_start_2a
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$11;->yI:[B
invoke-virtual {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V
invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V
const-string v0, "WearableClient"
const/4 v2, 0x3
invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_55
const-string v0, "WearableClient"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "processAssets: wrote data: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/wearable/internal/au$11;->amg:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_55
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_59
.catchall {:try_start_2a .. :try_end_59} :catchall_c8
.catch Ljava/io/IOException; {:try_start_2a .. :try_end_59} :catch_81
move-result-object v0
:try_start_5a
const-string v2, "WearableClient"
const/4 v3, 0x3
invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v2
if-eqz v2, :cond_7d
const-string v2, "WearableClient"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "processAssets: closing: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/wearable/internal/au$11;->amg:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_7d
invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
:try_end_80
.catch Ljava/io/IOException; {:try_start_5a .. :try_end_80} :catch_f4
:goto_80
return-object v0
:catch_81
move-exception v0
:try_start_82
const-string v0, "WearableClient"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "processAssets: writing data failed: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/wearable/internal/au$11;->amg:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_9c
.catchall {:try_start_82 .. :try_end_9c} :catchall_c8
:try_start_9c
const-string v0, "WearableClient"
const/4 v2, 0x3
invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_bf
const-string v0, "WearableClient"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "processAssets: closing: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/wearable/internal/au$11;->amg:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_bf
invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
:try_end_c2
.catch Ljava/io/IOException; {:try_start_9c .. :try_end_c2} :catch_f2
:goto_c2
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_80
:catchall_c8
move-exception v0
:try_start_c9
const-string v2, "WearableClient"
const/4 v3, 0x3
invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v2
if-eqz v2, :cond_ec
const-string v2, "WearableClient"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "processAssets: closing: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/wearable/internal/au$11;->amg:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_ec
invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
:try_end_ef
.catch Ljava/io/IOException; {:try_start_c9 .. :try_end_ef} :catch_f0
:goto_ef
throw v0
:catch_f0
move-exception v1
goto :goto_ef
:catch_f2
move-exception v0
goto :goto_c2
:catch_f4
move-exception v1
goto :goto_80
.end method
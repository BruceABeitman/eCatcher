.class public Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.super Ljava/lang/Object;
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"
.field private HV:Ljava/lang/String;
.field private HW:[Ljava/lang/String;
.field private HX:Lcom/google/android/gms/drive/DriveId;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
.registers 7
invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
move-result v0
const-string v1, "Client must be connected"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HW:[Ljava/lang/String;
if-nez v0, :cond_12
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HW:[Ljava/lang/String;
:cond_12
sget-object v0, Lcom/google/android/gms/drive/Drive;->yE:Lcom/google/android/gms/common/api/Api$c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/r;
invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;
move-result-object v0
:try_start_1e
new-instance v1, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HV:Ljava/lang/String;
iget-object v3, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HW:[Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HX:Lcom/google/android/gms/drive/DriveId;
invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;
:try_end_2c
.catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2c} :catch_2e
move-result-object v0
return-object v0
:catch_2e
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Unable to connect Drive Play Service"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HX:Lcom/google/android/gms/drive/DriveId;
return-object p0
.end method
.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HV:Ljava/lang/String;
return-object p0
.end method
.method public setMimeType([Ljava/lang/String;)Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.registers 4
if-eqz p1, :cond_b
const/4 v0, 0x1
:goto_3
const-string v1, "mimeTypes may not be null"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V
iput-object p1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->HW:[Ljava/lang/String;
return-object p0
:cond_b
const/4 v0, 0x0
goto :goto_3
.end method
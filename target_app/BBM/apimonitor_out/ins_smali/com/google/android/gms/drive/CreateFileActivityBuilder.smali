.class public Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.super Ljava/lang/Object;
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"
.field private CV:Lcom/google/android/gms/drive/MetadataChangeSet;
.field private CW:Lcom/google/android/gms/drive/Contents;
.field private CX:Ljava/lang/String;
.field private CY:Lcom/google/android/gms/drive/DriveId;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
.registers 8
iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CW:Lcom/google/android/gms/drive/Contents;
const-string v1, "Must provide initial contents to CreateFileActivityBuilder."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CW:Lcom/google/android/gms/drive/Contents;
invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
move-result-object v0
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
:goto_10
:try_end_10
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_4d
iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CW:Lcom/google/android/gms/drive/Contents;
invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V
invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
move-result v0
const-string v1, "Client must be connected"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
sget-object v0, Lcom/google/android/gms/drive/Drive;->va:Lcom/google/android/gms/common/api/Api$b;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/n;
invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/n;->eT()Lcom/google/android/gms/drive/internal/u;
move-result-object v0
:try_start_2a
new-instance v1, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CV:Lcom/google/android/gms/drive/MetadataChangeSet;
invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->eS()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CW:Lcom/google/android/gms/drive/Contents;
invoke-virtual {v3}, Lcom/google/android/gms/drive/Contents;->eP()I
move-result v3
iget-object v4, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CX:Ljava/lang/String;
iget-object v5, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CY:Lcom/google/android/gms/drive/DriveId;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;)Landroid/content/IntentSender;
:try_end_42
.catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_42} :catch_44
move-result-object v0
return-object v0
:catch_44
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Unable to connect Drive Play Service"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_4d
move-exception v0
goto :goto_10
.end method
.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CY:Lcom/google/android/gms/drive/DriveId;
return-object p0
.end method
.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CX:Ljava/lang/String;
return-object p0
.end method
.method public setInitialContents(Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/Contents;
iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CW:Lcom/google/android/gms/drive/Contents;
return-object p0
.end method
.method public setInitialMetadata(Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/MetadataChangeSet;
iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->CV:Lcom/google/android/gms/drive/MetadataChangeSet;
return-object p0
.end method
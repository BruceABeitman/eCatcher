.class public Lcom/google/android/gms/drive/internal/h;
.super Ljava/lang/Object;
.field private HV:Ljava/lang/String;
.field private HX:Lcom/google/android/gms/drive/DriveId;
.field protected Ix:Lcom/google/android/gms/drive/MetadataChangeSet;
.field private Iy:Ljava/lang/Integer;
.field private final Iz:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/h;->Iz:I
return-void
.end method
.method public a(Lcom/google/android/gms/drive/DriveId;)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->HX:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public a(Lcom/google/android/gms/drive/MetadataChangeSet;)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/MetadataChangeSet;
iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->Ix:Lcom/google/android/gms/drive/MetadataChangeSet;
return-void
.end method
.method public aM(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->HV:Ljava/lang/String;
return-void
.end method
.method public aS(I)V
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->Iy:Ljava/lang/Integer;
return-void
.end method
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
.registers 9
iget-object v0, p0, Lcom/google/android/gms/drive/internal/h;->Ix:Lcom/google/android/gms/drive/MetadataChangeSet;
const-string v1, "Must provide initial metadata to CreateFileActivityBuilder."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
move-result v0
const-string v1, "Client must be connected"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
sget-object v0, Lcom/google/android/gms/drive/Drive;->yE:Lcom/google/android/gms/common/api/Api$c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/r;
invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;
move-result-object v6
iget-object v0, p0, Lcom/google/android/gms/drive/internal/h;->Iy:Ljava/lang/Integer;
if-nez v0, :cond_37
const/4 v2, -0x1
:goto_21
:try_start_21
new-instance v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
iget-object v1, p0, Lcom/google/android/gms/drive/internal/h;->Ix:Lcom/google/android/gms/drive/MetadataChangeSet;
invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->gh()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v1
iget-object v3, p0, Lcom/google/android/gms/drive/internal/h;->HV:Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/gms/drive/internal/h;->HX:Lcom/google/android/gms/drive/DriveId;
iget v5, p0, Lcom/google/android/gms/drive/internal/h;->Iz:I
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;I)V
invoke-interface {v6, v0}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;)Landroid/content/IntentSender;
:try_end_35
.catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_35} :catch_3e
move-result-object v0
return-object v0
:cond_37
iget-object v0, p0, Lcom/google/android/gms/drive/internal/h;->Iy:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v2
goto :goto_21
:catch_3e
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Unable to connect Drive Play Service"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
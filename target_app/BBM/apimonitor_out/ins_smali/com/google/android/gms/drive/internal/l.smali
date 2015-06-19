.class public Lcom/google/android/gms/drive/internal/l;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/DriveApi;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public discardContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/l$3;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/l$3;-><init>(Lcom/google/android/gms/drive/internal/l;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/l$4;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/l$4;-><init>(Lcom/google/android/gms/drive/internal/l;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public getAppFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
.registers 4
invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Client must be connected"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
sget-object v0, Lcom/google/android/gms/drive/Drive;->va:Lcom/google/android/gms/common/api/Api$b;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/n;
invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/n;->eV()Lcom/google/android/gms/drive/DriveId;
move-result-object v1
if-eqz v1, :cond_22
new-instance v0, Lcom/google/android/gms/drive/internal/q;
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/q;-><init>(Lcom/google/android/gms/drive/DriveId;)V
:goto_21
return-object v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Id must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
move-result v0
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Client must be connected"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
new-instance v0, Lcom/google/android/gms/drive/internal/o;
invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/o;-><init>(Lcom/google/android/gms/drive/DriveId;)V
return-object v0
.end method
.method public getFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFolder;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Id must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
move-result v0
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Client must be connected"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
new-instance v0, Lcom/google/android/gms/drive/internal/q;
invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/q;-><init>(Lcom/google/android/gms/drive/DriveId;)V
return-object v0
.end method
.method public getRootFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
.registers 4
invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Client must be connected"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
sget-object v0, Lcom/google/android/gms/drive/Drive;->va:Lcom/google/android/gms/common/api/Api$b;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/n;
new-instance v1, Lcom/google/android/gms/drive/internal/q;
invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/n;->eU()Lcom/google/android/gms/drive/DriveId;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/drive/internal/q;-><init>(Lcom/google/android/gms/drive/DriveId;)V
return-object v1
.end method
.method public newContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/drive/internal/l$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/l$2;-><init>(Lcom/google/android/gms/drive/internal/l;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public newCreateFileActivityBuilder()Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.registers 2
new-instance v0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;
invoke-direct {v0}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;-><init>()V
return-object v0
.end method
.method public newOpenFileActivityBuilder()Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.registers 2
new-instance v0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;
invoke-direct {v0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;-><init>()V
return-object v0
.end method
.method public query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Query must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
new-instance v0, Lcom/google/android/gms/drive/internal/l$1;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/l$1;-><init>(Lcom/google/android/gms/drive/internal/l;Lcom/google/android/gms/drive/query/Query;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public requestSync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/drive/internal/l$5;
invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/l$5;-><init>(Lcom/google/android/gms/drive/internal/l;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
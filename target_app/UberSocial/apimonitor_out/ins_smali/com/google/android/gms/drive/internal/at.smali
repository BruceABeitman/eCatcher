.class public Lcom/google/android/gms/drive/internal/at;
.super Lcom/google/android/gms/drive/internal/az;
.implements Lcom/google/android/gms/drive/k;
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/az;-><init>(Lcom/google/android/gms/drive/DriveId;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/at;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/j;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/j;
.registers 6
new-instance v0, Lcom/google/android/gms/drive/query/c;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/c;-><init>()V
sget-object v1, Lcom/google/android/gms/drive/query/d;->d:Lcom/google/android/gms/drive/metadata/a;
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/at;->a()Lcom/google/android/gms/drive/DriveId;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/android/gms/drive/query/b;->a(Lcom/google/android/gms/drive/metadata/a;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/c;->a(Lcom/google/android/gms/drive/query/a;)Lcom/google/android/gms/drive/query/c;
move-result-object v0
if-eqz p2, :cond_29
invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->a()Lcom/google/android/gms/drive/query/a;
move-result-object v1
if-eqz v1, :cond_22
invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->a()Lcom/google/android/gms/drive/query/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/c;->a(Lcom/google/android/gms/drive/query/a;)Lcom/google/android/gms/drive/query/c;
:cond_22
invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/c;->a(Ljava/lang/String;)Lcom/google/android/gms/drive/query/c;
:cond_29
new-instance v1, Lcom/google/android/gms/drive/internal/y;
invoke-direct {v1}, Lcom/google/android/gms/drive/internal/y;-><init>()V
invoke-virtual {v0}, Lcom/google/android/gms/drive/query/c;->a()Lcom/google/android/gms/drive/query/Query;
move-result-object v0
invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/drive/internal/y;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/j;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/t;)Lcom/google/android/gms/common/api/j;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "MetatadataChangeSet must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p2}, Lcom/google/android/gms/drive/t;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_24
invoke-virtual {p2}, Lcom/google/android/gms/drive/t;->b()Ljava/lang/String;
move-result-object v0
const-string v1, "application/vnd.google-apps.folder"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The mimetype must be of type application/vnd.google-apps.folder"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
new-instance v0, Lcom/google/android/gms/drive/internal/at$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/at$2;-><init>(Lcom/google/android/gms/drive/internal/at;Lcom/google/android/gms/drive/t;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/drive/t;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/j;
.registers 6
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "MetatadataChangeSet must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p3, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Contents must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
const-string v0, "application/vnd.google-apps.folder"
invoke-virtual {p2}, Lcom/google/android/gms/drive/t;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "May not create folders (mimetype: application/vnd.google-apps.folder) using this method. Use DriveFolder.createFolder() instead."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
new-instance v0, Lcom/google/android/gms/drive/internal/at$1;
invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/drive/internal/at$1;-><init>(Lcom/google/android/gms/drive/internal/at;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/t;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
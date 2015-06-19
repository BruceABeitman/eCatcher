.class public Lcom/google/android/gms/drive/internal/q;
.super Lcom/google/android/gms/drive/internal/r;
.implements Lcom/google/android/gms/drive/DriveFolder;
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/r;-><init>(Lcom/google/android/gms/drive/DriveId;)V
return-void
.end method
.method public createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
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
invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "May not create folders (mimetype: application/vnd.google-apps.folder) using this method. Use DriveFolder.createFolder() instead."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
new-instance v0, Lcom/google/android/gms/drive/internal/q$1;
invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/drive/internal/q$1;-><init>(Lcom/google/android/gms/drive/internal/q;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public createFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "MetatadataChangeSet must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_24
invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;
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
new-instance v0, Lcom/google/android/gms/drive/internal/q$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/q$2;-><init>(Lcom/google/android/gms/drive/internal/q;Lcom/google/android/gms/drive/MetadataChangeSet;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public listChildren(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/q;->queryChildren(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public queryChildren(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
new-instance v0, Lcom/google/android/gms/drive/query/Query$Builder;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/Query$Builder;-><init>()V
sget-object v1, Lcom/google/android/gms/drive/query/SearchableField;->PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/q;->getDriveId()Lcom/google/android/gms/drive/DriveId;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/android/gms/drive/query/Filters;->in(Lcom/google/android/gms/drive/metadata/CollectionMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;
move-result-object v0
if-eqz p2, :cond_29
invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->getFilter()Lcom/google/android/gms/drive/query/Filter;
move-result-object v1
if-eqz v1, :cond_22
invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->getFilter()Lcom/google/android/gms/drive/query/Filter;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;
:cond_22
invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->getPageToken()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/Query$Builder;->setPageToken(Ljava/lang/String;)Lcom/google/android/gms/drive/query/Query$Builder;
:cond_29
new-instance v1, Lcom/google/android/gms/drive/internal/l;
invoke-direct {v1}, Lcom/google/android/gms/drive/internal/l;-><init>()V
invoke-virtual {v0}, Lcom/google/android/gms/drive/query/Query$Builder;->build()Lcom/google/android/gms/drive/query/Query;
move-result-object v0
invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/drive/internal/l;->query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
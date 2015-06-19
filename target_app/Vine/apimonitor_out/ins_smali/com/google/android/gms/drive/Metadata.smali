.class public abstract Lcom/google/android/gms/drive/Metadata;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/data/Freezable;
.field public static final CONTENT_AVAILABLE_LOCALLY:I = 0x1
.field public static final CONTENT_NOT_AVAILABLE_LOCALLY:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected abstract a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
.end method
.method public getAlternateLink()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->JR:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getContentAvailability()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/iv;->Kz:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_b
.end method
.method public getCreatedDate()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/it;->Kt:Lcom/google/android/gms/internal/it$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->JT:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->JQ:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method
.method public getEmbedLink()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->JU:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getFileExtension()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->JV:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getFileSize()J
.registers 3
sget-object v0, Lcom/google/android/gms/internal/ir;->JW:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public getLastViewedByMeDate()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/it;->Ku:Lcom/google/android/gms/internal/it$b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public getMimeType()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Kh:Lcom/google/android/gms/internal/ir$c;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getModifiedByMeDate()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/it;->Kw:Lcom/google/android/gms/internal/it$c;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public getModifiedDate()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/it;->Kv:Lcom/google/android/gms/internal/it$d;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public getOriginalFilename()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Ki:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getQuotaBytesUsed()J
.registers 3
sget-object v0, Lcom/google/android/gms/internal/ir;->Kl:Lcom/google/android/gms/internal/ir$e;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public getSharedWithMeDate()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/it;->Kx:Lcom/google/android/gms/internal/it$e;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Ko:Lcom/google/android/gms/internal/ir$g;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getWebContentLink()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Kq:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getWebViewLink()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Kr:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public isEditable()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Kb:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public isFolder()Z
.registers 3
const-string v0, "application/vnd.google-apps.folder"
invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isInAppFolder()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->JZ:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public isPinnable()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/iv;->KA:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public isPinned()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Kc:Lcom/google/android/gms/internal/ir$b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public isRestricted()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Kd:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public isShared()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Ke:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public isStarred()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Km:Lcom/google/android/gms/internal/ir$f;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public isTrashed()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Kp:Lcom/google/android/gms/internal/ir$h;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public isViewed()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir;->Kg:Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
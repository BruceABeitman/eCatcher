.class public final Lcom/google/android/gms/drive/internal/j;
.super Lcom/google/android/gms/drive/Metadata;
.field private final CZ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/Metadata;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/j;->CZ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
return-void
.end method
.method protected final a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/internal/j;->CZ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final eQ()Lcom/google/android/gms/drive/Metadata;
.registers 3
new-instance v0, Lcom/google/android/gms/drive/internal/j;
iget-object v1, p0, Lcom/google/android/gms/drive/internal/j;->CZ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
invoke-static {v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/j;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
return-object v0
.end method
.method public final synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/j;->eQ()Lcom/google/android/gms/drive/Metadata;
move-result-object v0
return-object v0
.end method
.method public final isDataValid()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/j;->CZ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Metadata [mImpl="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/drive/internal/j;->CZ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
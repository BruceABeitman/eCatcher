.class public Lcom/google/android/gms/drive/metadata/internal/b;
.super Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/OrderedMetadataField;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/Date;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/b;->a(Landroid/os/Bundle;Ljava/util/Date;)V
return-void
.end method
.method protected a(Landroid/os/Bundle;Ljava/util/Date;)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Ljava/util/Date;->getTime()J
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/b;->e(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method protected synthetic e(Landroid/os/Bundle;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/b;->g(Landroid/os/Bundle;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method protected e(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Date;
.registers 7
new-instance v0, Ljava/util/Date;
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
return-object v0
.end method
.method protected g(Landroid/os/Bundle;)Ljava/util/Date;
.registers 5
new-instance v0, Ljava/util/Date;
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
return-object v0
.end method
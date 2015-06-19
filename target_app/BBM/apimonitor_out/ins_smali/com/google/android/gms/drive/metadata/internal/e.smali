.class public Lcom/google/android/gms/drive/metadata/internal/e;
.super Lcom/google/android/gms/drive/metadata/MetadataField;
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/MetadataField;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method protected a(Landroid/os/Bundle;Ljava/lang/Long;)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/e;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/Long;->longValue()J
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Long;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/e;->a(Landroid/os/Bundle;Ljava/lang/Long;)V
return-void
.end method
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/e;->g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method protected synthetic e(Landroid/os/Bundle;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/e;->i(Landroid/os/Bundle;)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method protected g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Long;
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/e;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method protected i(Landroid/os/Bundle;)Ljava/lang/Long;
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/e;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
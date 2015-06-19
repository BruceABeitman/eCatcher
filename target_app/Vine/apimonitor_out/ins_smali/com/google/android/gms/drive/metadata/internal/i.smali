.class public Lcom/google/android/gms/drive/metadata/internal/i;
.super Lcom/google/android/gms/drive/metadata/b;
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/b;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/Collection;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/i;->a(Landroid/os/Bundle;Ljava/util/Collection;)V
return-void
.end method
.method protected a(Landroid/os/Bundle;Ljava/util/Collection;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/i;->getName()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
return-void
.end method
.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/i;->k(Landroid/os/Bundle;)Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method protected k(Landroid/os/Bundle;)Ljava/util/Collection;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/i;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
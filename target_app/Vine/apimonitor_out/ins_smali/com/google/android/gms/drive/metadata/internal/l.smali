.class public Lcom/google/android/gms/drive/metadata/internal/l;
.super Lcom/google/android/gms/drive/metadata/a;
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/a;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/String;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/l;->a(Landroid/os/Bundle;Ljava/lang/String;)V
return-void
.end method
.method protected a(Landroid/os/Bundle;Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/l;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/l;->h(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/l;->m(Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected h(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/l;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected m(Landroid/os/Bundle;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/l;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.class public Lcom/google/android/gms/drive/metadata/internal/b;
.super Lcom/google/android/gms/drive/metadata/a;
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/a;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method protected a(Landroid/os/Bundle;Ljava/lang/Boolean;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/b;->a(Landroid/os/Bundle;Ljava/lang/Boolean;)V
return-void
.end method
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/b;->d(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected d(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/b;->g(Landroid/os/Bundle;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected g(Landroid/os/Bundle;)Ljava/lang/Boolean;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
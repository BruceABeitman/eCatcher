.class public Lcom/google/android/gms/drive/metadata/internal/f;
.super Lcom/google/android/gms/drive/metadata/a;
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/a;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method protected a(Landroid/os/Bundle;Ljava/lang/Integer;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/f;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Integer;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/f;->a(Landroid/os/Bundle;Ljava/lang/Integer;)V
return-void
.end method
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/f;->f(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method protected f(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Integer;
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/f;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/f;->i(Landroid/os/Bundle;)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method protected i(Landroid/os/Bundle;)Ljava/lang/Integer;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/f;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
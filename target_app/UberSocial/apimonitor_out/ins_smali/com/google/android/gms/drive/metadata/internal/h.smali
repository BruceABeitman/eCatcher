.class public abstract Lcom/google/android/gms/drive/metadata/internal/h;
.super Lcom/google/android/gms/drive/metadata/b;
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/b;-><init>(Ljava/lang/String;Ljava/util/Collection;I)V
return-void
.end method
.method protected a(Landroid/os/Bundle;Landroid/os/Parcelable;)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/h;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-void
.end method
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/os/Parcelable;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/h;->a(Landroid/os/Bundle;Landroid/os/Parcelable;)V
return-void
.end method
.method protected synthetic b(Landroid/os/Bundle;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/h;->c(Landroid/os/Bundle;)Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method
.method protected c(Landroid/os/Bundle;)Landroid/os/Parcelable;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/h;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method
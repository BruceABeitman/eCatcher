.class final Lcom/google/android/gms/internal/di$1;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/di$1;->i(Landroid/os/Parcel;)Lcom/google/android/gms/internal/di;
move-result-object v0
return-object v0
.end method
.method public final i(Landroid/os/Parcel;)Lcom/google/android/gms/internal/di;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/di;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/di;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/di$1;->u(I)[Lcom/google/android/gms/internal/di;
move-result-object v0
return-object v0
.end method
.method public final u(I)[Lcom/google/android/gms/internal/di;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/di;
return-object v0
.end method
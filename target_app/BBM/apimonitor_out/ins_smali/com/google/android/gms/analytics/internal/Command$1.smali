.class final Lcom/google/android/gms/analytics/internal/Command$1;
.super Ljava/lang/Object;
.source "Command.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/analytics/internal/Command;
.registers 3
new-instance v0, Lcom/google/android/gms/analytics/internal/Command;
invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/Command$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/analytics/internal/Command;
move-result-object v0
return-object v0
.end method
.method public final newArray(I)[Lcom/google/android/gms/analytics/internal/Command;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/analytics/internal/Command;
return-object v0
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/Command$1;->newArray(I)[Lcom/google/android/gms/analytics/internal/Command;
move-result-object v0
return-object v0
.end method
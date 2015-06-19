.class public abstract Lcom/google/android/gms/internal/jz$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/jz;
.method public static au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.location.places.internal.IPlacesCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/jz;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/jz;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/jz$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jz$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 8
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_54
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.location.places.internal.IPlacesCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_11
const-string v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_22
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_22
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz$a;->V(Lcom/google/android/gms/common/data/DataHolder;)V
move v0, v1
goto :goto_9
:sswitch_27
const-string v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_38
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_38
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz$a;->W(Lcom/google/android/gms/common/data/DataHolder;)V
move v0, v1
goto :goto_9
:sswitch_3d
const-string v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_4e
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_4e
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz$a;->X(Lcom/google/android/gms/common/data/DataHolder;)V
move v0, v1
goto :goto_9
nop
:sswitch_data_54
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_27
0x3 -> :sswitch_3d
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method
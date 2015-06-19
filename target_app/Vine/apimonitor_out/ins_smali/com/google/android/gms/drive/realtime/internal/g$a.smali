.class public abstract Lcom/google/android/gms/drive/realtime/internal/g$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/drive/realtime/internal/g;
.method public static W(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/g;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/g;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/drive/realtime/internal/g;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/g$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/g$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v2, 0x0
const/4 v3, 0x1
sparse-switch p1, :sswitch_data_56
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v3
goto :goto_9
:sswitch_11
const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_39
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
move-object v1, v0
:goto_23
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3b
sget-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;
:goto_31
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/realtime/internal/g$a;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto :goto_9
:cond_39
move-object v1, v2
goto :goto_23
:cond_3b
move-object v0, v2
goto :goto_31
:sswitch_3d
const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4e
sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;
move-result-object v2
:cond_4e
invoke-virtual {p0, v2}, Lcom/google/android/gms/drive/realtime/internal/g$a;->o(Lcom/google/android/gms/common/api/Status;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto :goto_9
:sswitch_data_56
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_3d
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method
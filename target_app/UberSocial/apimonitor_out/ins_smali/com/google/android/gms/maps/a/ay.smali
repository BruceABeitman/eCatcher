.class public abstract Lcom/google/android/gms/maps/a/ay;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/a/ax;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.maps.internal.IOnMarkerClickListener"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/a/ay;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/ax;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.internal.IOnMarkerClickListener"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/a/ax;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/a/ax;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/a/az;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/a/az;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 7
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_2c
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_8
return v1
:sswitch_9
const-string v0, "com.google.android.gms.maps.internal.IOnMarkerClickListener"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_f
const-string v0, "com.google.android.gms.maps.internal.IOnMarkerClickListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/model/a/n;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/m;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/ay;->a(Lcom/google/android/gms/maps/model/a/m;)Z
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_2a
move v0, v1
:goto_26
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_8
:cond_2a
const/4 v0, 0x0
goto :goto_26
:sswitch_data_2c
.sparse-switch
0x1 -> :sswitch_f
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
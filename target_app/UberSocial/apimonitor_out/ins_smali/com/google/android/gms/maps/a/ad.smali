.class public abstract Lcom/google/android/gms/maps/a/ad;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/a/ac;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/a/ad;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/ac;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/a/ac;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/a/ac;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/a/ae;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/a/ae;-><init>(Landroid/os/IBinder;)V
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
sparse-switch p1, :sswitch_data_50
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_11
const-string v2, "com.google.android.gms.maps.internal.IInfoWindowAdapter"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/maps/model/a/n;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/m;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/a/ad;->a(Lcom/google/android/gms/maps/model/a/m;)Lcom/google/android/gms/c/d;
move-result-object v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_2b
invoke-interface {v2}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_2b
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v1
goto :goto_9
:sswitch_30
const-string v2, "com.google.android.gms.maps.internal.IInfoWindowAdapter"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/maps/model/a/n;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/m;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/a/ad;->b(Lcom/google/android/gms/maps/model/a/m;)Lcom/google/android/gms/c/d;
move-result-object v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_4a
invoke-interface {v2}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_4a
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v1
goto :goto_9
nop
:sswitch_data_50
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_30
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method
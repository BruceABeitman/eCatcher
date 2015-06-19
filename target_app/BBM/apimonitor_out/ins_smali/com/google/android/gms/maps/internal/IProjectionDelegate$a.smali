.class public abstract Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.method public static ak(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v1, 0x0
const/4 v3, 0x0
const/4 v2, 0x1
sparse-switch p1, :sswitch_data_74
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_a
return v0
:sswitch_b
const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v2
goto :goto_a
:sswitch_12
const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;->fromScreenLocation(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_30
invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2e
move v0, v2
goto :goto_a
:cond_30
invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_2e
:sswitch_34
const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_57
sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v0
:goto_45
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/b;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_52
invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v1
:cond_52
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto :goto_a
:cond_57
move-object v0, v1
goto :goto_45
:sswitch_59
const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_6f
invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/maps/model/VisibleRegion;->writeToParcel(Landroid/os/Parcel;I)V
:goto_6d
move v0, v2
goto :goto_a
:cond_6f
invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_6d
nop
:sswitch_data_74
.sparse-switch
0x1 -> :sswitch_12
0x2 -> :sswitch_34
0x3 -> :sswitch_59
0x5f4e5446 -> :sswitch_b
.end sparse-switch
.end method
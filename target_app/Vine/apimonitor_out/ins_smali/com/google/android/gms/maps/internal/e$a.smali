.class public abstract Lcom/google/android/gms/maps/internal/e$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/internal/e;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.maps.internal.IOnCameraChangeListener"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/internal/e$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static aD(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/e;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.internal.IOnCameraChangeListener"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/internal/e;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/internal/e;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/internal/e$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/e$a$a;-><init>(Landroid/os/IBinder;)V
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
move-result v0
:goto_8
return v0
:sswitch_9
const-string v0, "com.google.android.gms.maps.internal.IOnCameraChangeListener"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_8
:sswitch_10
const-string v0, "com.google.android.gms.maps.internal.IOnCameraChangeListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_29
sget-object v0, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/CameraPositionCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/CameraPositionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;
move-result-object v0
:goto_21
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/e$a;->onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_8
:cond_29
const/4 v0, 0x0
goto :goto_21
nop
:sswitch_data_2c
.sparse-switch
0x1 -> :sswitch_10
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
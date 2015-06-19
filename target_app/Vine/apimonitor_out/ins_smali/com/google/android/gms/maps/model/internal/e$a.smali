.class public abstract Lcom/google/android/gms/maps/model/internal/e$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/model/internal/e;
.method public static bb(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/e;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/e;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/model/internal/e;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/model/internal/e$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/e$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 7
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_68
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_8
return v1
:sswitch_9
const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_f
const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/e$a;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_1f
const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/e$a;->getShortName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_2f
const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/e$a;->activate()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_3b
const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/e$a;->bb(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/e;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/e$a;->a(Lcom/google/android/gms/maps/model/internal/e;)Z
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_56
move v0, v1
:goto_52
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_8
:cond_56
const/4 v0, 0x0
goto :goto_52
:sswitch_58
const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/e$a;->hashCodeRemote()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_8
:sswitch_data_68
.sparse-switch
0x1 -> :sswitch_f
0x2 -> :sswitch_1f
0x3 -> :sswitch_2f
0x4 -> :sswitch_3b
0x5 -> :sswitch_58
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
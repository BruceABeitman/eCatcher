.class public abstract Lcom/google/android/gms/internal/hk$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/hk;
.method public static M(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hk;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/hk;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/hk;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/hk$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hk$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_3a
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_8
return v0
:sswitch_9
const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_8
:sswitch_10
const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/hk$a;->a(Lcom/google/android/gms/dynamic/d;II)Lcom/google/android/gms/dynamic/d;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_37
invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_32
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v1
goto :goto_8
:cond_37
const/4 v0, 0x0
goto :goto_32
nop
:sswitch_data_3a
.sparse-switch
0x1 -> :sswitch_10
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
.class public abstract Lcom/google/android/gms/internal/bx$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/bx;
.method public static n(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bx;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/bx;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/bx;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/bx$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bx$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 7
const/4 v0, 0x1
sparse-switch p1, :sswitch_data_28
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_8
return v0
:sswitch_9
const-string v1, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_f
const-string v1, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bx$a;->a(Lcom/google/android/gms/dynamic/b;)Landroid/os/IBinder;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
goto :goto_8
nop
:sswitch_data_28
.sparse-switch
0x1 -> :sswitch_f
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
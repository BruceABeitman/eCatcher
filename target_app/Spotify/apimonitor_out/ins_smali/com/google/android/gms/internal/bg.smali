.class public abstract Lcom/google/android/gms/internal/bg;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/bf;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/bg;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 7
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_2e
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_8
return v0
:sswitch_9
const-string v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_8
:sswitch_10
const-string v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/bi;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_2b
invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_26
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v1
goto :goto_8
:cond_2b
const/4 v0, 0x0
goto :goto_26
nop
:sswitch_data_2e
.sparse-switch
0x1 -> :sswitch_10
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
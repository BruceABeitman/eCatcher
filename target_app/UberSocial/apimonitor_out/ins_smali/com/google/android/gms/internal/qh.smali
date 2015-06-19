.class public abstract Lcom/google/android/gms/internal/qh;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/qg;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/qh;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qg;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/qg;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/qg;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/qi;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/qi;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 11
const/4 v2, 0x0
const/4 v3, 0x1
sparse-switch p1, :sswitch_data_48
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v3
goto :goto_9
:sswitch_11
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_43
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
move-object v1, v0
:goto_29
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v5
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_45
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:goto_3b
invoke-virtual {p0, v4, v1, v5, v0}, Lcom/google/android/gms/internal/qh;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto :goto_9
:cond_43
move-object v1, v2
goto :goto_29
:cond_45
move-object v0, v2
goto :goto_3b
nop
:sswitch_data_48
.sparse-switch
0x1 -> :sswitch_11
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method
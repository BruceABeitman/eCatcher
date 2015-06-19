.class public abstract Lcom/google/android/gms/internal/ig$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/ig;
.method public static aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ig;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/ig;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/ig;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/ig$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ig$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 10
const/4 v2, 0x0
const/4 v3, 0x1
sparse-switch p1, :sswitch_data_4c
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v3
:goto_9
return v3
:sswitch_a
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/if$a;->av(Landroid/os/IBinder;)Lcom/google/android/gms/internal/if;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_45
sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
move-object v1, v0
:goto_2c
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_47
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_3a
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_49
move v2, v3
:goto_41
invoke-virtual {p0, v4, v1, v0, v2}, Lcom/google/android/gms/internal/ig$a;->a(Lcom/google/android/gms/internal/if;Landroid/net/Uri;Landroid/os/Bundle;Z)V
goto :goto_9
:cond_45
move-object v1, v2
goto :goto_2c
:cond_47
move-object v0, v2
goto :goto_3a
:cond_49
const/4 v2, 0x0
goto :goto_41
nop
:sswitch_data_4c
.sparse-switch
0x1 -> :sswitch_10
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method
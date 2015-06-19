.class public abstract Lcom/google/android/gms/internal/fv$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/fv;
.method public static A(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/fv;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/fv;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/fv$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fv$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_74
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_8
return v1
:sswitch_9
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_f
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/fw$a;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fw;
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
sget-object v0, Lcom/google/android/gms/internal/fs;->CREATOR:Lcom/google/android/gms/internal/ft;
invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/internal/fs;
invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/gms/internal/fv$a;->a(Lcom/google/android/gms/internal/fw;Ljava/lang/String;[Lcom/google/android/gms/internal/fs;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_2f
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/fw$a;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fv$a;->a(Lcom/google/android/gms/internal/fw;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_43
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/fw$a;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fv$a;->b(Lcom/google/android/gms/internal/fw;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_57
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/fw$a;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fw;
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_72
move v0, v1
:goto_6b
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/fv$a;->a(Lcom/google/android/gms/internal/fw;Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:cond_72
const/4 v0, 0x0
goto :goto_6b
:sswitch_data_74
.sparse-switch
0x1 -> :sswitch_f
0x2 -> :sswitch_2f
0x3 -> :sswitch_43
0x4 -> :sswitch_57
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
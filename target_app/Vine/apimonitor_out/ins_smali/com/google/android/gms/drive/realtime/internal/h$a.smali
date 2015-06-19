.class public abstract Lcom/google/android/gms/drive/realtime/internal/h$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/drive/realtime/internal/h;
.method public static X(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/h;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/h;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/drive/realtime/internal/h;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/h$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/h$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v2, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_2c
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_9
return v1
:sswitch_a
const-string v0, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2a
move v0, v1
:goto_1c
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_23
move v2, v1
:cond_23
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/drive/realtime/internal/h$a;->c(ZZ)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_2a
move v0, v2
goto :goto_1c
:sswitch_data_2c
.sparse-switch
0x1 -> :sswitch_10
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method
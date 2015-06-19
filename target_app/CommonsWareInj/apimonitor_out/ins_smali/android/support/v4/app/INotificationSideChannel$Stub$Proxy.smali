.class  Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
.super Ljava/lang/Object;
.source "INotificationSideChannel.java"
.implements Landroid/support/v4/app/INotificationSideChannel;
.field private mRemote:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-object v0
.end method
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.app.INotificationSideChannel"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x2
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1a
.catchall {:try_start_4 .. :try_end_1a} :catchall_1e
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public cancelAll(Ljava/lang/String;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.app.INotificationSideChannel"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x3
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_14
.catchall {:try_start_4 .. :try_end_14} :catchall_18
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_18
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public getInterfaceDescriptor()Ljava/lang/String;
.registers 2
const-string v0, "android.support.v4.app.INotificationSideChannel"
return-object v0
.end method
.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.app.INotificationSideChannel"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_28
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p4, v0, v1}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1c
iget-object v1, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_24
.catchall {:try_start_4 .. :try_end_24} :catchall_2d
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v1, 0x0
:try_start_29
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_2c
.catchall {:try_start_29 .. :try_end_2c} :catchall_2d
goto :goto_1c
:catchall_2d
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
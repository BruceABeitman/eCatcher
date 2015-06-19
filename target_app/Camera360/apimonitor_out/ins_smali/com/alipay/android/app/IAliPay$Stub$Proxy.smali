.class  Lcom/alipay/android/app/IAliPay$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAliPay.java"
.implements Lcom/alipay/android/app/IAliPay;
.field private mRemote:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/alipay/android/app/IAliPay$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-void
.end method
.method public Pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 10
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v3, "com.alipay.android.app.IAliPay"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v3, p0, Lcom/alipay/android/app/IAliPay$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v4, 0x1
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_2c
move-result-object v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:catchall_2c
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/IAliPay$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-object v0
.end method
.method public getInterfaceDescriptor()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "com.alipay.android.app.IAliPay"
return-object v0
.end method
.method public registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.alipay.android.app.IAliPay"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/alipay/android/app/IRemoteServiceCallback;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_14
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v2, p0, Lcom/alipay/android/app/IAliPay$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v3, 0x3
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v2, 0x0
goto :goto_14
:catchall_2a
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public test()Ljava/lang/String;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v3, "com.alipay.android.app.IAliPay"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/alipay/android/app/IAliPay$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v4, 0x2
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result-object v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:catchall_23
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.alipay.android.app.IAliPay"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_28
invoke-interface {p1}, Lcom/alipay/android/app/IRemoteServiceCallback;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_14
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v2, p0, Lcom/alipay/android/app/IAliPay$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v3, 0x4
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_2a
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_28
const/4 v2, 0x0
goto :goto_14
:catchall_2a
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
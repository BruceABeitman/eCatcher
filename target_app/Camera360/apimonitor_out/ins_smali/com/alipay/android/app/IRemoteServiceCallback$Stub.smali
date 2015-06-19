.class public abstract Lcom/alipay/android/app/IRemoteServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteServiceCallback.java"
.implements Lcom/alipay/android/app/IRemoteServiceCallback;
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alipay.android.app.IRemoteServiceCallback"
.field static final TRANSACTION_isHideLoadingScreen:I = 0x3
.field static final TRANSACTION_payEnd:I = 0x2
.field static final TRANSACTION_startActivity:I = 0x1
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string/jumbo v0, "com.alipay.android.app.IRemoteServiceCallback"
invoke-virtual {p0, p0, v0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string/jumbo v1, "com.alipay.android.app.IRemoteServiceCallback"
invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_14
instance-of v1, v0, Lcom/alipay/android/app/IRemoteServiceCallback;
if-eqz v1, :cond_14
check-cast v0, Lcom/alipay/android/app/IRemoteServiceCallback;
goto :goto_3
:cond_14
new-instance v0, Lcom/alipay/android/app/IRemoteServiceCallback$Stub$Proxy;
invoke-direct {v0, p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 12
const/4 v0, 0x0
const/4 v5, 0x1
sparse-switch p1, :sswitch_data_66
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v5
:goto_9
return v5
:sswitch_a
const-string/jumbo v6, "com.alipay.android.app.IRemoteServiceCallback"
invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_11
const-string/jumbo v6, "com.alipay.android.app.IRemoteServiceCallback"
invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v6
if-eqz v6, :cond_38
sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/os/Bundle;
:goto_31
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_38
const/4 v3, 0x0
goto :goto_31
:sswitch_3a
const-string/jumbo v6, "com.alipay.android.app.IRemoteServiceCallback"
invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v6
if-eqz v6, :cond_47
move v0, v5
:cond_47
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->payEnd(ZLjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_52
const-string/jumbo v6, "com.alipay.android.app.IRemoteServiceCallback"
invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->isHideLoadingScreen()Z
move-result v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_62
move v0, v5
:cond_62
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_9
:sswitch_data_66
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_3a
0x3 -> :sswitch_52
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method
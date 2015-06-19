.class public abstract Lcom/sina/sso/RemoteSSO$Stub;
.super Landroid/os/Binder;
.source "RemoteSSO.java"
.implements Lcom/sina/sso/RemoteSSO;
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sina.sso.RemoteSSO"
.field static final TRANSACTION_getActivityName:I = 0x2
.field static final TRANSACTION_getLoginUserName:I = 0x3
.field static final TRANSACTION_getPackageName:I = 0x1
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string/jumbo v0, "com.sina.sso.RemoteSSO"
invoke-virtual {p0, p0, v0}, Lcom/sina/sso/RemoteSSO$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static asInterface(Landroid/os/IBinder;)Lcom/sina/sso/RemoteSSO;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string/jumbo v1, "com.sina.sso.RemoteSSO"
invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_14
instance-of v1, v0, Lcom/sina/sso/RemoteSSO;
if-eqz v1, :cond_14
check-cast v0, Lcom/sina/sso/RemoteSSO;
goto :goto_3
:cond_14
new-instance v0, Lcom/sina/sso/RemoteSSO$Stub$Proxy;
invoke-direct {v0, p0}, Lcom/sina/sso/RemoteSSO$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 8
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_44
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_8
return v1
:sswitch_9
const-string/jumbo v2, "com.sina.sso.RemoteSSO"
invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_10
const-string/jumbo v2, "com.sina.sso.RemoteSSO"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/sina/sso/RemoteSSO$Stub;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_21
const-string/jumbo v2, "com.sina.sso.RemoteSSO"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/sina/sso/RemoteSSO$Stub;->getActivityName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_32
const-string/jumbo v2, "com.sina.sso.RemoteSSO"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/sina/sso/RemoteSSO$Stub;->getLoginUserName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
nop
:sswitch_data_44
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_21
0x3 -> :sswitch_32
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
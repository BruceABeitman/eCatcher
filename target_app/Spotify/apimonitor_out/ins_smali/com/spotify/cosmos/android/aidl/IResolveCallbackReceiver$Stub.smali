.class public abstract Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub;
.super Landroid/os/Binder;
.source "SourceFile"
.implements Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
.field static final TRANSACTION_onError:I = 0x2
.field static final TRANSACTION_onResolved:I = 0x1
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
invoke-virtual {p0, p0, v0}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static asInterface(Landroid/os/IBinder;)Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
if-eqz v1, :cond_13
check-cast v0, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
goto :goto_3
:cond_13
new-instance v0, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub$Proxy;
invoke-direct {v0, p0}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 10
const/4 v0, 0x1
sparse-switch p1, :sswitch_data_3e
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_8
return v0
:sswitch_9
const-string v1, "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_f
const-string v1, "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v3
invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
move-result-object v3
invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B
move-result-object v4
invoke-virtual {p0, v1, v2, v3, v4}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub;->onResolved(ILjava/lang/String;Ljava/util/Map;[B)V
goto :goto_8
:sswitch_30
const-string v1, "com.spotify.cosmos.android.aidl.IResolveCallbackReceiver"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub;->onError(Ljava/lang/String;)V
goto :goto_8
nop
:sswitch_data_3e
.sparse-switch
0x1 -> :sswitch_f
0x2 -> :sswitch_30
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method
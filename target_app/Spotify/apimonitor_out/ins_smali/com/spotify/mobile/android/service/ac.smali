.class final Lcom/spotify/mobile/android/service/ac;
.super Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;
.field private b:Lcom/spotify/cosmos/android/RemoteNativeRouter;
.method constructor <init>(Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/ac;->a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;
invoke-direct {p0}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/ac;)Lcom/spotify/cosmos/android/RemoteNativeRouter;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac;->b:Lcom/spotify/cosmos/android/RemoteNativeRouter;
return-object v0
.end method
.method private a(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac;->a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;
invoke-static {v0}, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a(Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private static a()Z
.registers 2
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final a(Lcom/spotify/cosmos/android/RemoteNativeRouter;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/ac;->b:Lcom/spotify/cosmos/android/RemoteNativeRouter;
return-void
.end method
.method public final registerDestroyCallback(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
.registers 3
new-instance v0, Lcom/spotify/mobile/android/service/ac$4;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/ac$4;-><init>(Lcom/spotify/mobile/android/service/ac;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/ac;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
.registers 13
invoke-static {}, Lcom/spotify/mobile/android/service/ac;->a()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac;->a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac;->b:Lcom/spotify/cosmos/android/RemoteNativeRouter;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
move-result v0
:goto_16
return v0
:cond_17
new-instance v0, Lcom/spotify/mobile/android/service/ac$1;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/service/ac$1;-><init>(Lcom/spotify/mobile/android/service/ac;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/ac;->a(Ljava/lang/Runnable;)V
if-eqz p5, :cond_2c
invoke-virtual {p5}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->getId()I
move-result v0
goto :goto_16
:cond_2c
const/4 v0, -0x1
goto :goto_16
.end method
.method public final subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
.registers 13
invoke-static {p5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/spotify/mobile/android/service/ac;->a()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac;->a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac;->b:Lcom/spotify/cosmos/android/RemoteNativeRouter;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
move-result v0
:goto_19
return v0
:cond_1a
new-instance v0, Lcom/spotify/mobile/android/service/ac$2;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/service/ac$2;-><init>(Lcom/spotify/mobile/android/service/ac;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/ac;->a(Ljava/lang/Runnable;)V
invoke-virtual {p5}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->getId()I
move-result v0
goto :goto_19
.end method
.method public final unsubscribe(I)V
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/service/ac;->a()Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac;->a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac;->b:Lcom/spotify/cosmos/android/RemoteNativeRouter;
invoke-virtual {v0, p1}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->unsubscribe(I)V
:goto_10
return-void
:cond_11
new-instance v0, Lcom/spotify/mobile/android/service/ac$3;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/ac$3;-><init>(Lcom/spotify/mobile/android/service/ac;I)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/ac;->a(Ljava/lang/Runnable;)V
goto :goto_10
.end method
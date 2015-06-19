.class final Lcom/spotify/mobile/android/service/ac$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
.field final synthetic b:Lcom/spotify/mobile/android/service/ac;
.method constructor <init>(Lcom/spotify/mobile/android/service/ac;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/ac$4;->b:Lcom/spotify/mobile/android/service/ac;
iput-object p2, p0, Lcom/spotify/mobile/android/service/ac$4;->a:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac$4;->b:Lcom/spotify/mobile/android/service/ac;
iget-object v0, v0, Lcom/spotify/mobile/android/service/ac;->a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ac$4;->b:Lcom/spotify/mobile/android/service/ac;
invoke-static {v0}, Lcom/spotify/mobile/android/service/ac;->a(Lcom/spotify/mobile/android/service/ac;)Lcom/spotify/cosmos/android/RemoteNativeRouter;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/ac$4;->a:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->registerDestroyCallback(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v1, "Could not register destroy callback"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_12
.end method
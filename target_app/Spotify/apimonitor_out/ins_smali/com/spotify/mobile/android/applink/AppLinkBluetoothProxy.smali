.class public Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field private a:Lcom/google/common/base/Optional;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;->a:Lcom/google/common/base/Optional;
return-void
.end method
.method public static a()Landroid/bluetooth/BluetoothAdapter;
.registers 1
invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/applink/p;)V
.registers 3
invoke-static {p1}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;->a:Lcom/google/common/base/Optional;
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
const-string v2, "onReceive %s"
new-array v3, v0, [Ljava/lang/Object;
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v1
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;->a:Lcom/google/common/base/Optional;
invoke-virtual {v2}, Lcom/google/common/base/Optional;->a()Z
move-result v2
if-nez v2, :cond_18
:cond_17
:goto_17
return-void
:cond_18
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_30
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;->a:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/p;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/p;->a()V
goto :goto_17
:cond_30
const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_44
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;->a:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/p;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/p;->b()V
goto :goto_17
:cond_44
const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_17
const-string v2, "android.bluetooth.adapter.extra.STATE"
const/4 v3, -0x1
invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
const/16 v3, 0xd
if-ne v2, v3, :cond_65
:goto_57
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;->a:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/p;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/p;->b()V
goto :goto_17
:cond_65
move v0, v1
goto :goto_57
.end method
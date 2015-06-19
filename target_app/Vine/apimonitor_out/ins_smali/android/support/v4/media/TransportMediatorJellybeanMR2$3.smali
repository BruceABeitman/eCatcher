.class  Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;
.super Landroid/content/BroadcastReceiver;
.source "TransportMediatorJellybeanMR2.java"
.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.method constructor <init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
:try_start_0
const-string v2, "android.intent.extra.KEY_EVENT"
invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/view/KeyEvent;
iget-object v2, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;
invoke-interface {v2, v1}, Landroid/support/v4/media/TransportMediatorCallback;->handleKey(Landroid/view/KeyEvent;)V
:goto_f
:try_end_f
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v2, "TransportController"
invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_f
.end method
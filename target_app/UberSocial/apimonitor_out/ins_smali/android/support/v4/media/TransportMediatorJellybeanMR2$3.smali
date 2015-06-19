.class  Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.method constructor <init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
:try_start_0
const-string v0, "android.intent.extra.KEY_EVENT"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/view/KeyEvent;
iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;
invoke-interface {v1, v0}, Landroid/support/v4/media/TransportMediatorCallback;->handleKey(Landroid/view/KeyEvent;)V
:goto_f
:try_end_f
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "TransportController"
invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_f
.end method
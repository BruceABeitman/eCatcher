.class final Lcom/spotify/mobile/android/e/h$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/e/h;
.method constructor <init>(Lcom/spotify/mobile/android/e/h;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/h$1;->a:Lcom/spotify/mobile/android/e/h;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
const-string v0, "state"
const/4 v1, -0x1
invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
packed-switch v0, :pswitch_data_24
const-string v0, "Unknown or no state received in %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "android.intent.action.HEADSET_PLUG"
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_17
return-void
:pswitch_18
iget-object v0, p0, Lcom/spotify/mobile/android/e/h$1;->a:Lcom/spotify/mobile/android/e/h;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/h;->c()V
goto :goto_17
:pswitch_1e
iget-object v0, p0, Lcom/spotify/mobile/android/e/h$1;->a:Lcom/spotify/mobile/android/e/h;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/h;->b()V
goto :goto_17
:pswitch_data_24
.packed-switch 0x0
:pswitch_18
:pswitch_1e
.end packed-switch
.end method
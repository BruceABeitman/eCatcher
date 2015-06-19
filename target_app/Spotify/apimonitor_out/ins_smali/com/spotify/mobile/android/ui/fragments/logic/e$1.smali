.class final Lcom/spotify/mobile/android/ui/fragments/logic/e$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/e;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/e;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/e;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const/4 v2, 0x0
const-string v0, "feature"
invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
packed-switch v0, :pswitch_data_38
const v0, 0x7f0f03b8
new-array v1, v2, [Ljava/lang/Object;
invoke-static {p1, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V
:goto_12
return-void
:pswitch_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/e;
const/4 v1, 0x3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Lcom/spotify/mobile/android/ui/fragments/logic/e;I)V
goto :goto_12
:pswitch_1a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/e;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Lcom/spotify/mobile/android/ui/fragments/logic/e;I)V
goto :goto_12
:pswitch_20
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/e;
const/16 v1, 0x8
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Lcom/spotify/mobile/android/ui/fragments/logic/e;I)V
goto :goto_12
:pswitch_28
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/e;
const/16 v1, 0x9
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Lcom/spotify/mobile/android/ui/fragments/logic/e;I)V
goto :goto_12
:pswitch_30
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/e;
const/16 v1, 0xb
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Lcom/spotify/mobile/android/ui/fragments/logic/e;I)V
goto :goto_12
:pswitch_data_38
.packed-switch 0x1
:pswitch_13
:pswitch_1a
:pswitch_20
:pswitch_28
:pswitch_30
.end packed-switch
.end method
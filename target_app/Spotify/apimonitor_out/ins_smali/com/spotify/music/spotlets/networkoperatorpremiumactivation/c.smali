.class final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;
.method constructor <init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$2;->a:[I
iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;
invoke-static {v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->b(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;)Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1e
:goto_11
:pswitch_11
return-void
:pswitch_12
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;
invoke-static {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;)V
goto :goto_11
:pswitch_18
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;
invoke-static {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;)V
goto :goto_11
:pswitch_data_1e
.packed-switch 0x1
:pswitch_11
:pswitch_12
:pswitch_18
.end packed-switch
.end method
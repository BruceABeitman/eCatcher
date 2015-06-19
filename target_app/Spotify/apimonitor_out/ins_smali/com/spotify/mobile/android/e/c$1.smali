.class final Lcom/spotify/mobile/android/e/c$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/e/c;
.method constructor <init>(Lcom/spotify/mobile/android/e/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/c$1;->a:Lcom/spotify/mobile/android/e/c;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "status"
const/4 v1, -0x1
invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const/4 v1, 0x2
if-eq v0, v1, :cond_d
const/4 v1, 0x5
if-ne v0, v1, :cond_16
:cond_d
const/4 v0, 0x1
:goto_e
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/e/c$1;->a:Lcom/spotify/mobile/android/e/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/c;->b()V
:goto_15
return-void
:cond_16
const/4 v0, 0x0
goto :goto_e
:cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/e/c$1;->a:Lcom/spotify/mobile/android/e/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/c;->c()V
goto :goto_15
.end method
.class final Lcom/spotify/music/spotlets/radio/service/c$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/music/spotlets/radio/service/c;
.method constructor <init>(Lcom/spotify/music/spotlets/radio/service/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/c$2;->a:Lcom/spotify/music/spotlets/radio/service/c;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c$2;->a:Lcom/spotify/music/spotlets/radio/service/c;
invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/c;->a(Lcom/spotify/music/spotlets/radio/service/c;)Lcom/spotify/music/spotlets/radio/service/d;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/service/d;->b()V
return-void
.end method
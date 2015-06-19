.class final Lcom/spotify/mobile/android/spotlets/socialchart/c$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/socialchart/c$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->d(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/cosmos/player/v1/Player;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->c(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Ljava/lang/Boolean;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;->b()V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/socialchart/c$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
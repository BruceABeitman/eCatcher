.class final Lcom/spotify/mobile/android/spotlets/video/c$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/c$3;->a:Lcom/spotify/mobile/android/spotlets/video/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/video/c$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c$3;->a:Lcom/spotify/mobile/android/spotlets/video/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->b(Lcom/spotify/mobile/android/spotlets/video/c;)Lcom/spotify/mobile/android/spotlets/video/d;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c$3;->a:Lcom/spotify/mobile/android/spotlets/video/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->b(Lcom/spotify/mobile/android/spotlets/video/c;)Lcom/spotify/mobile/android/spotlets/video/d;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/video/d;->i()V
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c$3;->a:Lcom/spotify/mobile/android/spotlets/video/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/c$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class final Lcom/spotify/mobile/android/spotlets/b/a$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/b/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a$6;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/b/a$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$6;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->c(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/service/player/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/f;->c(Z)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/b/a$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
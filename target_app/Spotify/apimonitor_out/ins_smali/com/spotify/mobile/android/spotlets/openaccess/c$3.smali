.class final Lcom/spotify/mobile/android/spotlets/openaccess/c$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/util/SpotifyLink;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/c;Lcom/spotify/mobile/android/util/SpotifyLink;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->a:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/openaccess/c$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->c(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->a:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a()Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->e(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/e;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/openaccess/util/f;Lcom/spotify/mobile/android/spotlets/openaccess/util/e;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/openaccess/c$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class final Lcom/spotify/mobile/android/spotlets/browse/view/e$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
.field final synthetic b:Lcom/spotify/mobile/android/a/a;
.field final synthetic c:Lcom/spotify/mobile/android/spotlets/browse/view/e;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/view/e;Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;Lcom/spotify/mobile/android/a/a;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->c:Lcom/spotify/mobile/android/spotlets/browse/view/e;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->b:Lcom/spotify/mobile/android/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/view/e$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->e()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->b:Lcom/spotify/mobile/android/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/a/a;->b()V
:goto_d
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/view/e$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->b:Lcom/spotify/mobile/android/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/a/a;->a()V
goto :goto_d
.end method
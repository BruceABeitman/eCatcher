.class final Lcom/spotify/mobile/android/spotlets/browse/b$2$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/browse/b$2;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/b$2;Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$1;->b:Lcom/spotify/mobile/android/spotlets/browse/b$2;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/b$2$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$1;->b:Lcom/spotify/mobile/android/spotlets/browse/b$2;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->h(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/spotlets/browse/b/e;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$1;->b:Lcom/spotify/mobile/android/spotlets/browse/b$2;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, -0x1
const-string v3, "overview"
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$1;->b:Lcom/spotify/mobile/android/spotlets/browse/b$2;
iget-object v4, v4, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/browse/b;->g(Lcom/spotify/mobile/android/spotlets/browse/b;)Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d()Ljava/lang/String;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/b$2$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
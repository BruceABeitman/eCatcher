.class final Lcom/spotify/mobile/android/spotlets/browse/a$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$3;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/a$3; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$3;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->d(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
move-result v0
if-nez v0, :cond_29
check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->a()Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d()Ljava/lang/String;
move-result-object v5
const-string v3, "featured"
:goto_18
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$3;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->f(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/b/e;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$3;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
move v2, p3
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/a$3; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$3;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->e(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/f;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/spotlets/browse/a/f;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;
iget-object v4, v0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;->name:Ljava/lang/String;
iget-object v5, v0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;->uri:Ljava/lang/String;
const-string v3, "recommended"
goto :goto_18
.end method
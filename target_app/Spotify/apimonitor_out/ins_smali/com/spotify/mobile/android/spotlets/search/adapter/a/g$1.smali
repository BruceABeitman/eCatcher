.class final Lcom/spotify/mobile/android/spotlets/search/adapter/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 7
const/4 v3, 0x0
check-cast p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->uri:Ljava/lang/String;
iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->name:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
return-void
.end method
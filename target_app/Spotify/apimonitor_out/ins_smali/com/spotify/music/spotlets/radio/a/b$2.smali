.class final Lcom/spotify/music/spotlets/radio/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/music/spotlets/radio/a/b;
.method constructor <init>(Lcom/spotify/music/spotlets/radio/a/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/a/b$2;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 8
const/4 v4, 0x0
check-cast p2, Lcom/spotify/music/spotlets/radio/model/a;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b$2;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-virtual {v1}, Lcom/spotify/music/spotlets/radio/a/b;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/a/b$2;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-static {v2}, Lcom/spotify/music/spotlets/radio/a/b;->b(Lcom/spotify/music/spotlets/radio/a/b;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/a/b$2;->a:Lcom/spotify/music/spotlets/radio/a/b;
invoke-static {v3}, Lcom/spotify/music/spotlets/radio/a/b;->c(Lcom/spotify/music/spotlets/radio/a/b;)Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v3
invoke-direct {v0, v1, v2, v3, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;
move-result-object v2
aget-object v2, v2, v4
aput-object v2, v1, v4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a([Ljava/lang/String;)V
invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/model/a;->getStationId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->f(Ljava/lang/String;)V
invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/model/a;->getCoverImageUri()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->j()Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
move-result-object v0
invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/model/a;->getTitle()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a(Ljava/lang/String;)V
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->j()Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
move-result-object v0
invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/model/a;->getSubtitle()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b(Ljava/lang/String;)V
return-void
.end method
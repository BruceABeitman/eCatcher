.class final Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 7
const/4 v3, 0x0
check-cast p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->name:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
return-void
.end method
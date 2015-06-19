.class final Lcom/spotify/mobile/android/spotlets/artist/adapters/i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/adapters/i;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
check-cast p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->b(Lcom/spotify/mobile/android/spotlets/artist/adapters/i;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->uri:Ljava/lang/String;
iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->name:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/i;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
return-void
.end method
.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 7
const/4 v3, 0x1
check-cast p2, Lcom/spotify/mobile/android/model/f;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/spotlets/collection/b/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v0
if-eqz v0, :cond_3d
sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->b:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/p;->a(Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;)Landroid/net/Uri;
move-result-object v0
:goto_15
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Lcom/spotify/mobile/android/model/j;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Landroid/net/Uri;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
return-void
:cond_3d
sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->a:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/p;->a(Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;)Landroid/net/Uri;
move-result-object v0
goto :goto_15
.end method
.class final Lcom/spotify/mobile/android/spotlets/socialchart/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
check-cast p2, Lcom/spotify/mobile/android/spotlets/socialchart/b;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Lcom/spotify/mobile/android/model/n;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v0, v1, v2, v3, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->F:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;
invoke-direct {v1, p0, p2}, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/c$1;Lcom/spotify/mobile/android/spotlets/socialchart/b;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
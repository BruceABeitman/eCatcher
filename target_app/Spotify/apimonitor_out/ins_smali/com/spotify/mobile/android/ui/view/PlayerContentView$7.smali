.class final Lcom/spotify/mobile/android/ui/view/PlayerContentView$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$7;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 5
check-cast p2, Lcom/spotify/mobile/android/model/n;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$7;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Lcom/spotify/mobile/android/model/n;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$7;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->n(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$7;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->m(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
return-void
.end method
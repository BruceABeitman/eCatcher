.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
.registers 6
const/4 v2, 0x1
check-cast p2, Lcom/spotify/mobile/android/model/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Lcom/spotify/mobile/android/model/a;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
return-void
.end method
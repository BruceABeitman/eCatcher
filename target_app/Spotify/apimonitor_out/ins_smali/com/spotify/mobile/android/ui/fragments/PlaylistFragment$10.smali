.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ds;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/4 v1, -0x1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
return-void
.end method
.method public final a(I)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_48
if-lez p1, :cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->i:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->I(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
move-result v1
invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
:cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "autoplay"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
:cond_48
return-void
.end method
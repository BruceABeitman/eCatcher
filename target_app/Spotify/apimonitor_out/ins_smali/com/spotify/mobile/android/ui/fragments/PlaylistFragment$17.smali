.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/j;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->f:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cw;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->n(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->isShown()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->l(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->f:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->h:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-virtual {v0, v1, v3}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V
:goto_3e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->n(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
return-void
:cond_44
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->f:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-virtual {v0, v1, v3}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V
goto :goto_3e
.end method
.method public final a(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->g:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V
return-void
.end method
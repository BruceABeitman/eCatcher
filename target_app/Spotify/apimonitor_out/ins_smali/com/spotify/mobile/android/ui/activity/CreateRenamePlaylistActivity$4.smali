.class final Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/activity/f;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->e()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0173
invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V
return-void
.end method
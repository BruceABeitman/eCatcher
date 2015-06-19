.class final Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "icon_uri"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ab;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;->b:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 6
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
const/4 v1, 0x0
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Ljava/lang/String;Ljava/lang/String;)V
:cond_17
return-void
.end method
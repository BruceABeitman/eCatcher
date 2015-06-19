.class final Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "unseen_count"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$6;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
sget-object v2, Lcom/spotify/mobile/android/provider/j;->a:Landroid/net/Uri;
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$6;->b:[Ljava/lang/String;
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
.registers 5
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
const/4 v1, 0x0
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;I)V
:cond_12
return-void
.end method
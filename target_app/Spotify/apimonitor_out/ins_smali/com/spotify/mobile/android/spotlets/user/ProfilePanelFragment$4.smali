.class final Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$4;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "current_user"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "connected"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$4;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$4;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$4;->b:[Ljava/lang/String;
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
.registers 7
const/4 v1, 0x0
const/4 v0, 0x1
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_19
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v3
if-ne v3, v0, :cond_1a
:goto_14
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$4;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Ljava/lang/String;Z)V
:cond_19
return-void
:cond_1a
move v0, v1
goto :goto_14
.end method
.class final Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "current_user"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;->b:[Ljava/lang/String;
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
const/4 v0, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_26
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->d(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1a
const/4 v0, 0x1
:cond_1a
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
invoke-static {v2, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;Ljava/lang/String;)Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->E()V
:cond_26
return-void
.end method
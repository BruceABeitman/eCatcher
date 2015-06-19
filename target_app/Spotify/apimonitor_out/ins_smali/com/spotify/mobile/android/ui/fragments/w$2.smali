.class final Lcom/spotify/mobile/android/ui/fragments/w$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/w;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/w;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/w$2;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/w$2;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/w;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/w;->G()[Ljava/lang/String;
move-result-object v3
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
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$2;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
move-result-object v0
const-string v1, "private_session_timeout"
invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b(I)V
const-string v0, "logged_in"
invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$2;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
move-result-object v0
const-string v1, "current_user_name"
invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$2;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
move-result-object v0
const-string v1, "current_user"
invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Ljava/lang/String;)V
:cond_4d
const-string v0, "product_type"
invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/w$2;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
move-result-object v1
const-string v2, "premium"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$2;->a:Lcom/spotify/mobile/android/ui/fragments/w;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/spotify/mobile/android/ui/fragments/w;->Y:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$2;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->F()V
:cond_70
return-void
.end method
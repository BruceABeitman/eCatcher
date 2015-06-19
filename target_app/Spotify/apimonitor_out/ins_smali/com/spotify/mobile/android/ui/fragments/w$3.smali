.class final Lcom/spotify/mobile/android/ui/fragments/w$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/w;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/w;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/w$3;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/w$3;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/w;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/w;->i:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$3;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/database/Cursor;)V
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 5
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$3;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$3;->a:Lcom/spotify/mobile/android/ui/fragments/w;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/spotify/mobile/android/ui/fragments/w;->Z:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w$3;->a:Lcom/spotify/mobile/android/ui/fragments/w;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/w;->F()V
:cond_1b
return-void
.end method
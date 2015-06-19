.class final Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "send_email"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->b:[Ljava/lang/String;
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
.registers 9
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-string v0, "send_email"
invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v3
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;
const-string v1, "send_email"
const v4, 0x7f0f028d
invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v4, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->b:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
const/4 v5, 0x0
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;B)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->c(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Ljava/util/LinkedHashMap;
move-result-object v1
iget-object v2, v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Lcom/spotify/mobile/android/ui/fragments/h;
move-result-object v0
if-eqz v0, :cond_4f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Lcom/spotify/mobile/android/ui/fragments/h;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->c(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Ljava/util/LinkedHashMap;
move-result-object v1
invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/h;->a(Ljava/util/Collection;)V
:cond_4f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->e(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)V
:cond_59
return-void
.end method
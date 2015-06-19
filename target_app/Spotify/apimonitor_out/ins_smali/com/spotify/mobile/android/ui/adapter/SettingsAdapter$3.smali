.class final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/content/Intent;
.field final synthetic b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;Landroid/content/Intent;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;->a:Landroid/content/Intent;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;->a:Landroid/content/Intent;
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
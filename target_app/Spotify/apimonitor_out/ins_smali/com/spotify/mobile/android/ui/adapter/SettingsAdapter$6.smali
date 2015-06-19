.class final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/login/g;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/g;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6$1;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/g;->b(Landroid/content/Context;Lcom/spotify/mobile/android/service/flow/login/j;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
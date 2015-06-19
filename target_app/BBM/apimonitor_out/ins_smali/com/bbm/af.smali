.class public final Lcom/bbm/af;
.super Ljava/lang/Object;
.source "Settings.java"
.field public static final a:Ljava/lang/String;
.field protected final b:Landroid/content/SharedPreferences;
.field protected final c:Ljava/util/HashMap;
.field private final d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "file://"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "bbm_tone.wav"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/bbm/af;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/ag;
invoke-direct {v0, p0}, Lcom/bbm/ag;-><init>(Lcom/bbm/af;)V
iput-object v0, p0, Lcom/bbm/af;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
iput-object p1, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/af;->c:Ljava/util/HashMap;
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
iget-object v1, p0, Lcom/bbm/af;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
const-string v1, "show_action_bar_with_keyboard_v2.0"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4d
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I
const-string v1, "show_action_bar_with_keyboard_v2.0"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v1, "show_channels_intro_screen"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v1, "show_channels_geolocation"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v1, "allow_geolocation_collect"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_4d
return-void
.end method
.method final a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
.registers 5
iget-object v0, p0, Lcom/bbm/af;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/aj;
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
new-instance v0, Lcom/bbm/ah;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, p0, v1, p1, p2}, Lcom/bbm/ah;-><init>(Lcom/bbm/af;Ljava/lang/Boolean;Ljava/lang/String;Z)V
iget-object v1, p0, Lcom/bbm/af;->c:Ljava/util/HashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1e
return-object v0
.end method
.method public final a()Z
.registers 3
const-string v0, "ShowAvatatars"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final b()Z
.registers 3
const-string v0, "notifications_enabled"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final c()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
const-string v1, "notification_sound_uri"
sget-object v2, Lcom/bbm/af;->a:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final d()Z
.registers 4
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
const-string v1, "show_action_bar_with_keyboard_v2.0"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final e()Z
.registers 3
const-string v0, "notification_vibrate_enabled"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final f()I
.registers 4
const-string v1, "whats_new_version"
iget-object v0, p0, Lcom/bbm/af;->c:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/aj;
if-nez v0, :cond_21
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v2
new-instance v0, Lcom/bbm/ai;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-direct {v0, p0, v2, v1}, Lcom/bbm/ai;-><init>(Lcom/bbm/af;Ljava/lang/Integer;Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/af;->c:Ljava/util/HashMap;
invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method public final g()Z
.registers 3
const-string v0, "new_install"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final h()Z
.registers 3
const-string v0, "has_shown_pyk_add"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final i()Z
.registers 3
const-string v0, "has_shown_pyk_invite"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final j()Z
.registers 3
const-string v0, "has_shown_contact_upload"
invoke-virtual {p0}, Lcom/bbm/af;->p()Z
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final k()Z
.registers 3
const-string v0, "notification_ping_vibrate_enabled"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final l()I
.registers 4
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
const-string v1, "notification_led_colour"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public final m()Z
.registers 3
const-string v0, "show_ongoing_notification_explanation"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final n()Z
.registers 3
const-string v0, "show_channels_geolocation"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final o()Z
.registers 3
const-string v0, "allow_geolocation_collect"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final p()Z
.registers 3
const-string v0, "icerberg_upload_allowed"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final q()J
.registers 5
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
const-string v1, "channel_sixty_days_time_stamp"
const-wide/16 v2, 0x0
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public final r()J
.registers 5
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
const-string v1, "channel_three_days_time_stamp"
const-wide/16 v2, 0x0
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public final s()Z
.registers 3
const-string v0, "channel_show_promotion"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final t()Z
.registers 3
const-string v0, "keyboard_always_show_on_enter_conversation"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final u()Z
.registers 3
const-string v0, "allow_timed_message"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final v()Z
.registers 3
const-string v0, "has_suggested_first_time_set_avatar"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final w()V
.registers 4
iget-object v0, p0, Lcom/bbm/af;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "has_suggested_first_time_set_avatar"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
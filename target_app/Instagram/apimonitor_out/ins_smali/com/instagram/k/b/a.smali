.class public final Lcom/instagram/k/b/a;
.super Ljava/lang/Object;
.source "UserPreferences.java"
.field private static b:Lcom/instagram/k/b/a;
.field  a:Landroid/content/SharedPreferences;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "USER_PREFERENCES"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
return-void
.end method
.method private K()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "feed_auto_play_video"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static a()Lcom/instagram/k/b/a;
.registers 1
sget-object v0, Lcom/instagram/k/b/a;->b:Lcom/instagram/k/b/a;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/k/b/a;
invoke-direct {v0}, Lcom/instagram/k/b/a;-><init>()V
sput-object v0, Lcom/instagram/k/b/a;->b:Lcom/instagram/k/b/a;
:cond_b
sget-object v0, Lcom/instagram/k/b/a;->b:Lcom/instagram/k/b/a;
return-object v0
.end method
.method public static b()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/instagram/k/b/a;->b:Lcom/instagram/k/b/a;
return-void
.end method
.method public final A()I
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "inbox_new_share_count"
const/4 v2, -0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public final B()J
.registers 5
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "inbox_new_share_timestamp"
const-wide/16 v2, -0x1
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public final C()V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "inbox_opened"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final D()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "current_ad_id"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final E()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "has_seen_current_ad"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final F()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "has_seen_filter_strength_nux"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final G()V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "has_seen_filter_strength_nux"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final H()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "allow_contacts_sync"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final I()I
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "contacts_count"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public final J()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "ssl_everywhere"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "contacts_count"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(IJ)V
.registers 6
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "inbox_new_share_count"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "inbox_new_share_timestamp"
invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "recent_user_searches"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(Ljava/lang/String;Z)V
.registers 6
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "sticky_share_setting_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(Z)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "gridlines_enabled"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(J)Z
.registers 5
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "device_info_last_reported_time"
invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "recent_hashtag_searches"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final b(Ljava/lang/String;Z)V
.registers 5
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "current_ad_id"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "has_seen_current_ad"
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final b(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "geotag_enabled"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final c()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "gridlines_enabled"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final c(Ljava/lang/String;)Z
.registers 5
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "sticky_share_setting_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final c(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "feed_video_play_sound"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "recent_user_searches"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final d(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "feed_video_preload_always"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final e()V
.registers 3
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "recent_user_searches"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final e(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "feed_video_preload_always"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final f()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "recent_hashtag_searches"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final f(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "save_captured_videos"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final g()V
.registers 3
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "recent_hashtag_searches"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final g(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "save_original_photos"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final h()V
.registers 3
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "recent_user_searches"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "recent_hashtag_searches"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v0, "BROADCAST_UPDATED_SEARCHES"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
return-void
.end method
.method public final h(Z)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "test_group_sticky_share"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final i(Z)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "allow_contacts_sync"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final i()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "geotag_enabled"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final j(Z)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ssl_everywhere"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final j()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "seen_ignore_all_button_blocking_education"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final k()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "seen_ignore_all_button_blocking_education"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final l()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "seen_ignore_permalink_button_blocking_education"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final m()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "seen_ignore_permalink_button_blocking_education"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final n()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "needs_photo_map_education"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final o()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "needs_photo_map_education"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final p()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "import_scroll_education"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final q()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "import_scroll_education"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final r()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "imported_video_trimmed_education"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final s()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "imported_video_trimmed_education"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final t()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "show_tap_to_record_nux"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final u()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "show_tap_to_record_nux"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final v()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "feed_video_play_sound"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_11
invoke-direct {p0}, Lcom/instagram/k/b/a;->K()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/k/b/a;->c(Z)Z
:cond_11
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "feed_video_play_sound"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final w()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "save_captured_videos"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final x()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "save_original_photos"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final y()J
.registers 5
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "device_info_last_reported_time"
const-wide/16 v2, 0x0
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public final z()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/b/a;->a:Landroid/content/SharedPreferences;
const-string v1, "test_group_sticky_share"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.class public Lco/vine/android/util/ClientFlagsHelper;
.super Ljava/lang/Object;
.source "ClientFlagsHelper.java"
.field public static final CLIENTFLAGS_THROTTLE:J = 0x493e0L
.field public static final PREF_API_HOST:Ljava/lang/String; = "client_flags_api_host"
.field public static final PREF_CLIENT_FLAGS_LAST_CHANGED:Ljava/lang/String; = "client_flags_last_changed_millis"
.field public static final PREF_CLIENT_FLAGS_LAST_CHECKED:Ljava/lang/String; = "client_flags_last_checked_millis"
.field public static final PREF_CLIENT_FLAGS_TTL:Ljava/lang/String; = "client_flags_ttl"
.field public static final PREF_EXPLORE_HOST:Ljava/lang/String; = "client_flags_explore_host"
.field public static final PREF_MEDIA_HOST:Ljava/lang/String; = "client_flags_media_host"
.field public static final PREF_MESSAGE_TEXT:Ljava/lang/String; = "client_flags_message_text"
.field public static final PREF_MESSAGE_TITLE:Ljava/lang/String; = "client_flags_message_title"
.field public static final PREF_RTC_HOST:Ljava/lang/String; = "client_flags_rtc_host"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getLastCheckMillis(Landroid/content/Context;)J
.registers 5
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "client_flags_last_checked_millis"
const-wide/16 v2, 0x0
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public static hostsDidChange(Landroid/content/Context;Lco/vine/android/api/VineClientFlags;)Z
.registers 10
.parameter
.end parameter
.parameter
.end parameter
const/4 v7, 0x0
const/4 v5, 0x1
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
const-string v6, "client_flags_api_host"
invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v6, "client_flags_rtc_host"
invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v6, "client_flags_media_host"
invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v6, "client_flags_explore_host"
invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_29
iget-object v6, p1, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_2d
:cond_28
:goto_28
return v5
:cond_29
iget-object v6, p1, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
if-nez v6, :cond_28
:cond_2d
if-eqz v4, :cond_4d
iget-object v6, p1, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_28
:cond_37
if-eqz v2, :cond_52
iget-object v6, p1, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_28
:cond_41
if-eqz v1, :cond_57
iget-object v6, p1, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_28
:cond_4b
const/4 v5, 0x0
goto :goto_28
:cond_4d
iget-object v6, p1, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
if-eqz v6, :cond_37
goto :goto_28
:cond_52
iget-object v6, p1, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
if-eqz v6, :cond_41
goto :goto_28
:cond_57
iget-object v6, p1, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
if-eqz v6, :cond_4b
goto :goto_28
.end method
.method public static isClientFlagsTtlInRange(Landroid/content/Context;)Z
.registers 9
const-wide/16 v6, 0x0
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
const-string v5, "client_flags_last_changed_millis"
invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
const-string v5, "client_flags_ttl"
invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long/2addr v5, v0
cmp-long v5, v5, v3
if-gez v5, :cond_1d
const/4 v5, 0x1
:goto_1c
return v5
:cond_1d
const/4 v5, 0x0
goto :goto_1c
.end method
.method public static setLastCheckMillis(Landroid/content/Context;)V
.registers 5
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "client_flags_last_checked_millis"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
.end method
.method public static shouldShowClientFlagsBanner(Landroid/content/Context;)Z
.registers 6
const/4 v4, 0x0
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
const-string v3, "client_flags_message_title"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v3, "client_flags_message_text"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_1d
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_1f
:cond_1d
const/4 v3, 0x1
:goto_1e
return v3
:cond_1f
const/4 v3, 0x0
goto :goto_1e
.end method
.method public static updateClientFlags(Landroid/content/Context;Lco/vine/android/api/VineClientFlags;)V
.registers 9
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-wide v3, p1, Lco/vine/android/api/VineClientFlags;->ttlSeconds:J
const-wide/16 v5, 0x3e8
mul-long v1, v3, v5
const-string v3, "client_flags_ttl"
invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v3, "client_flags_last_changed_millis"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v3, "client_flags_message_title"
iget-object v4, p1, Lco/vine/android/api/VineClientFlags;->messageTitle:Ljava/lang/String;
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v3, "client_flags_message_text"
iget-object v4, p1, Lco/vine/android/api/VineClientFlags;->messageText:Ljava/lang/String;
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v3, "client_flags_api_host"
iget-object v4, p1, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v3, "client_flags_rtc_host"
iget-object v4, p1, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v3, "client_flags_media_host"
iget-object v4, p1, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v3, "client_flags_explore_host"
iget-object v4, p1, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
.end method
.method public static zeroRatingIsEnabled(Landroid/content/Context;)Z
.registers 5
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "client_flags_api_host"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_13
const/4 v2, 0x1
:goto_12
return v2
:cond_13
const/4 v2, 0x0
goto :goto_12
.end method
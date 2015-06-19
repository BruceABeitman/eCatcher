.class public Lco/vine/android/util/MuteUtil;
.super Ljava/lang/Object;
.source "MuteUtil.java"
.field public static final ACTION_CHANGED_TO_MUTE:Ljava/lang/String; = null
.field public static final ACTION_CHANGED_TO_UNMUTE:Ljava/lang/String; = null
.field public static final BROADCAST_PERMISSION:Ljava/lang/String; = "co.vine.android.BROADCAST"
.field public static final MUTE_INTENT_FILTER:Landroid/content/IntentFilter; = null
.field private static final PREF_MUTE:Ljava/lang/String; = "mute"
.field private static sp:Landroid/content/SharedPreferences;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/edisonwang/android/slog/SLog;->getAuthority()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".muted"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_MUTE:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/edisonwang/android/slog/SLog;->getAuthority()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".un_muted"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_UNMUTE:Ljava/lang/String;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
sput-object v0, Lco/vine/android/util/MuteUtil;->MUTE_INTENT_FILTER:Landroid/content/IntentFilter;
sget-object v0, Lco/vine/android/util/MuteUtil;->MUTE_INTENT_FILTER:Landroid/content/IntentFilter;
sget-object v1, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_MUTE:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lco/vine/android/util/MuteUtil;->MUTE_INTENT_FILTER:Landroid/content/IntentFilter;
sget-object v1, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_UNMUTE:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized isMuted(Landroid/content/Context;)Z
.registers 5
const-class v1, Lco/vine/android/util/MuteUtil;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/util/MuteUtil;->sp:Landroid/content/SharedPreferences;
if-nez v0, :cond_10
const-string v0, "mute"
const/4 v2, 0x0
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
sput-object v0, Lco/vine/android/util/MuteUtil;->sp:Landroid/content/SharedPreferences;
:cond_10
sget-object v0, Lco/vine/android/util/MuteUtil;->sp:Landroid/content/SharedPreferences;
const-string v2, "mute"
const/4 v3, 0x0
invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_1b
move-result v0
monitor-exit v1
return v0
:catchall_1b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized setMuted(Landroid/content/Context;Z)V
.registers 5
const-class v1, Lco/vine/android/util/MuteUtil;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/util/MuteUtil;->sp:Landroid/content/SharedPreferences;
if-nez v0, :cond_10
const-string v0, "mute"
const/4 v2, 0x0
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
sput-object v0, Lco/vine/android/util/MuteUtil;->sp:Landroid/content/SharedPreferences;
:cond_10
sget-object v0, Lco/vine/android/util/MuteUtil;->sp:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v2, "mute"
invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v0, "Mute state change send."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
new-instance v2, Landroid/content/Intent;
if-eqz p1, :cond_34
sget-object v0, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_MUTE:Ljava/lang/String;
:goto_2a
invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v0, "co.vine.android.BROADCAST"
invoke-virtual {p0, v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
:try_end_32
.catchall {:try_start_3 .. :try_end_32} :catchall_37
monitor-exit v1
return-void
:cond_34
:try_start_34
sget-object v0, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_UNMUTE:Ljava/lang/String;
:try_end_36
.catchall {:try_start_34 .. :try_end_36} :catchall_37
goto :goto_2a
:catchall_37
move-exception v0
monitor-exit v1
throw v0
.end method
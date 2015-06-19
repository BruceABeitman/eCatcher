.class public final Lcom/google/android/gms/cast/CastMediaControlIntent;
.super Ljava/lang/Object;
.field public static final ACTION_SYNC_STATUS:Ljava/lang/String; = "com.google.android.gms.cast.ACTION_SYNC_STATUS"
.field public static final CATEGORY_CAST:Ljava/lang/String; = "com.google.android.gms.cast.CATEGORY_CAST"
.field public static final DEFAULT_MEDIA_RECEIVER_APPLICATION_ID:Ljava/lang/String; = "CC1AD845"
.field public static final ERROR_CODE_REQUEST_FAILED:I = 0x1
.field public static final ERROR_CODE_SESSION_START_FAILED:I = 0x2
.field public static final ERROR_CODE_TEMPORARILY_DISCONNECTED:I = 0x3
.field public static final EXTRA_CAST_APPLICATION_ID:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_CAST_APPLICATION_ID"
.field public static final EXTRA_CAST_LANGUAGE_CODE:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_CAST_LANGUAGE_CODE"
.field public static final EXTRA_CAST_RELAUNCH_APPLICATION:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_CAST_RELAUNCH_APPLICATION"
.field public static final EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS"
.field public static final EXTRA_CUSTOM_DATA:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_CUSTOM_DATA"
.field public static final EXTRA_DEBUG_LOGGING_ENABLED:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_DEBUG_LOGGING_ENABLED"
.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_ERROR_CODE"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
if-eqz p1, :cond_39
const-string v0, "[A-F0-9]+"
invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_30
const-string v0, "00000000-0000-0000-0000-000000000000"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_30
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid application ID: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_30
const-string v0, "/"
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_39
if-eqz p2, :cond_89
invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z
move-result v0
if-eqz v0, :cond_49
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Must specify at least one namespace"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_49
invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_4d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_73
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_6b
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v3, ""
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4d
:cond_6b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Namespaces must not be null or empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_73
if-nez p1, :cond_7a
const-string v0, "/"
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_7a
const-string v0, "/"
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, ","
invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_89
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static categoryForCast(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "applicationId cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "com.google.android.gms.cast.CATEGORY_CAST"
const/4 v1, 0x0
invoke-static {v0, p0, v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static categoryForCast(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "applicationId cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "namespaces cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
const-string v0, "com.google.android.gms.cast.CATEGORY_CAST"
invoke-static {v0, p0, p1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static categoryForCast(Ljava/util/Collection;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "namespaces cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "com.google.android.gms.cast.CATEGORY_CAST"
const/4 v1, 0x0
invoke-static {v0, v1, p0}, Lcom/google/android/gms/cast/CastMediaControlIntent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static categoryForRemotePlayback()Ljava/lang/String;
.registers 2
const/4 v1, 0x0
const-string v0, "com.google.android.gms.cast.CATEGORY_CAST_REMOTE_PLAYBACK"
invoke-static {v0, v1, v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static categoryForRemotePlayback(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "applicationId cannot be null or empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const-string v0, "com.google.android.gms.cast.CATEGORY_CAST_REMOTE_PLAYBACK"
const/4 v1, 0x0
invoke-static {v0, p0, v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static languageTagForLocale(Ljava/util/Locale;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/internal/gj;->b(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
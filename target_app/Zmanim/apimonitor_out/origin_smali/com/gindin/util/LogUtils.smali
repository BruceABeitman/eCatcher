.class public Lcom/gindin/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v1, "com.gindin.zmanim.android.zmanList"

    const-string v2, "c.g.z.a.z"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.gindin.zmanim.android"

    const-string v2, "c.g.z.a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.gindin.zmanim.calendar"

    const-string v2, "c.g.z.c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.gindin.zmanim.times"

    const-string v2, "c.g.z.t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util"

    const-string v2, "j.u"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.NullPointerException"

    const-string v2, "NPE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endSession(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/gindin/util/LogUtils;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->getLastKnownLocation()Lcom/gindin/zmanim/android/location/ZmanimLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gindin/util/LogUtils;->cleanMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/gindin/util/LogUtils;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs logEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z

    move-result v7

    if-nez v7, :cond_2f

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2c

    const/4 v2, 0x0

    :goto_e
    array-length v7, p1

    if-ge v2, v7, :cond_2c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Msg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, p1, v2

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2c
    invoke-static {p0, v5}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2f
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_49

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_39
    if-ge v1, v3, :cond_49

    aget-object v6, v0, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_49
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setLocationHandler(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V
    .registers 1

    sput-object p0, Lcom/gindin/util/LogUtils;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;

    return-void
.end method

.method public static startSession(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "HDK5S96L5E7C638N91S1"

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    :goto_b
    new-instance v1, Lcom/gindin/util/LogUtils$1;

    invoke-direct {v1}, Lcom/gindin/util/LogUtils$1;-><init>()V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void

    :cond_14
    const-string v1, "No flurry...this is dev..."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b
.end method

.class public Lcom/spotify/mobile/android/util/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# static fields
.field public static final CONTEXT:Ljava/lang/String; = "context"

.field public static final CORE_VERSION:Ljava/lang/String; = "core_version"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final CRASH_TIMESTAMP:Ljava/lang/String; = "crash_timestamp"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final HARDWARE_MODEL:Ljava/lang/String; = "hardware_model"

.field public static final HARDWARE_VENDOR:Ljava/lang/String; = "hardware_vendor"

.field public static final OS:Ljava/lang/String; = "os"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final PRODUCT:Ljava/lang/String; = "product"

.field public static final REVISION:Ljava/lang/String; = "revision"

.field public static final RUNTIME:Ljava/lang/String; = "runtime"

.field public static final UPTIME:Ljava/lang/String; = "uptime"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final UUID:Ljava/lang/String; = "uuid"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCountry()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUptime(Lcom/spotify/mobile/android/util/cx;)J
    .registers 10

    const-wide/16 v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v4, Lcom/spotify/mobile/android/util/aj;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {p1, v4, v2, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_26

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v6

    sget-object v7, Lcom/spotify/mobile/android/util/aj;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v6, v7, v2, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;J)Lcom/spotify/mobile/android/util/cy;

    invoke-virtual {v6}, Lcom/spotify/mobile/android/util/cy;->a()V

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_24

    :goto_23
    return-wide v0

    :cond_24
    move-wide v0, v2

    goto :goto_23

    :cond_26
    move-wide v0, v2

    goto :goto_23
.end method

.method private getUserID(Lcom/spotify/mobile/android/util/cx;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/util/aj;->b:Lcom/spotify/mobile/android/util/cz;

    const-string v1, "no_user_info"

    invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInfoMap(Lcom/spotify/mobile/android/util/cx;Ljava/lang/Throwable;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/util/cx;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "product"

    const-string v2, "spotify-android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platform"

    const-string v2, "android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "runtime"

    const-string v2, "java"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "core_version"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v2, "1.7.0.830"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "revision"

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uptime"

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/ai;->getUptime(Lcom/spotify/mobile/android/util/cx;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "country"

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/ai;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_id"

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/ai;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hardware_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hardware_vendor"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user_id"

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/ai;->getUserID(Lcom/spotify/mobile/android/util/cx;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crash_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

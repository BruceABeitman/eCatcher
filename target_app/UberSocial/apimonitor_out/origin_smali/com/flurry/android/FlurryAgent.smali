.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originName not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originVersion not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :try_start_2e
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_d

    :catch_36
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static clearLocation()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->e()V

    goto :goto_d
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    :try_start_18
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cu;->b(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_d

    :catch_20
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static endTimedEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    if-nez p1, :cond_22

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cu;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_d

    :catch_2a
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static getAgentVersion()I
    .registers 1

    invoke-static {}, Lcom/flurry/sdk/dk;->a()Lcom/flurry/sdk/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dk;->b()I

    move-result v0

    return v0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/flurry/sdk/dk;->a()Lcom/flurry/sdk/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dk;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseHttps()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "UseHttps"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_e
.end method

.method public static logEvent(Ljava/lang/String;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    :try_start_18
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_d

    :catch_20
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    if-nez p1, :cond_22

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String parameters passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_d

    :catch_2a
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    if-nez p1, :cond_22

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String parameters passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_d

    :catch_2a
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    :try_start_18
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;Z)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_d

    :catch_20
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :try_start_18
    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/di;->a(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_d

    :catch_20
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    if-nez p1, :cond_22

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_22
    if-nez p2, :cond_2c

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorClass passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_d

    :catch_34
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    if-nez p1, :cond_22

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_22
    if-nez p2, :cond_2c

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Throwable passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_d

    :catch_34
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    :try_start_18
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cu;->c(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_d

    :catch_20
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    if-nez p1, :cond_22

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Parameters Map passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cu;->c(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_d

    :catch_2a
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onPageView()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->c()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_d

    :catch_16
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/di;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_d

    :catch_30
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static setAge(I)V
    .registers 8

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    if-lez p0, :cond_e

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v2

    const-string v3, "Age"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setContinueSessionMillis(J)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_2d

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time set for session resumption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_2d
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setGender(B)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    packed-switch p0, :pswitch_data_2e

    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "Gender"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :pswitch_20
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "Gender"

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static setLocation(FF)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/dw;->a(FF)V

    goto :goto_d
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "LocationCriteria"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setLogEnabled(Z)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-eqz p0, :cond_14

    invoke-static {}, Lcom/flurry/sdk/el;->b()V

    goto :goto_d

    :cond_14
    invoke-static {}, Lcom/flurry/sdk/el;->a()V

    goto :goto_d
.end method

.method public static setLogEvents(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setLogLevel(I)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {p0}, Lcom/flurry/sdk/el;->a(I)V

    goto :goto_d
.end method

.method public static setReportLocation(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "ReportLocation"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "ReportUrl"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setUseHttps(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "UseHttps"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String userId passed to setUserId was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "UserId"

    invoke-static {p0}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p0, :cond_18

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String versionName passed to setVersionName was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "VersionName"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

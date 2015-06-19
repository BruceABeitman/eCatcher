.class Lcom/facebook/AppEventsLogger$AppEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isImplicit:Z

.field private jsonObject:Lorg/json/JSONObject;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/AppEventsLogger$AppEvent;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    :try_start_13
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "_eventName"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "_implicitlyLogged"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_35
    invoke-static {}, Lcom/facebook/ah;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "_appVersion"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_42
    if-eqz p2, :cond_98

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger$AppEvent;->a(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_8e

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_8e

    new-instance v1, Lcom/facebook/FacebookException;

    const-string v3, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception v0

    sget-object v1, Lcom/facebook/LoggingBehavior;->e:Lcom/facebook/LoggingBehavior;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {}, Lcom/facebook/internal/v;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    :cond_8d
    :goto_8d
    return-void

    :cond_8e
    :try_start_8e
    iget-object v3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4c

    :cond_98
    iget-boolean v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    if-nez v0, :cond_8d

    sget-object v0, Lcom/facebook/LoggingBehavior;->e:Lcom/facebook/LoggingBehavior;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/facebook/internal/v;->b()V
    :try_end_ad
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_ad} :catch_7c

    goto :goto_8d
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    iput-boolean p2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 7

    const/16 v5, 0x28

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2d

    :cond_12
    if-nez p0, :cond_16

    const-string p0, "<None Provided>"

    :cond_16
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Identifier \'%s\' must be less than %d characters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    sget-object v1, Lcom/facebook/AppEventsLogger$AppEvent;->a:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_30
    sget-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_4b

    if-nez v0, :cond_4a

    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v1, Lcom/facebook/AppEventsLogger$AppEvent;->a:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_44
    sget-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4e

    :cond_4a
    return-void

    :catchall_4b
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_51
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;-><init>(Ljava/lang/String;ZB)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    return v0
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "\"%s\", implicit: %b, json: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "_eventName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/mixpanel/android/mpmetrics/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/o;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/l;


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/l;)V
    .registers 2

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/mpmetrics/l;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/p;-><init>(Lcom/mixpanel/android/mpmetrics/l;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "$token"

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/l;->c(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "$time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v1, :cond_2b

    const-string v1, "$distinct_id"

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2b
    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->e()V

    const-string v0, "$android_devices"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_10
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_18} :catch_2e

    move-result-object v0

    :try_start_19
    const-string v1, "$set"

    invoke-direct {p0, v1, v0}, Lcom/mixpanel/android/mpmetrics/p;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;Lorg/json/JSONObject;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    :try_start_26
    const-string v1, "MixpanelAPI"

    const-string v2, "Exception setting people properties"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_24

    :catch_2e
    move-exception v0

    const-string v1, "MixpanelAPI"

    const-string v2, "set"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public final a(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V
    .registers 9

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->e(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/l;->f(Lcom/mixpanel/android/mpmetrics/l;)I

    move-result v2

    if-ne v0, v2, :cond_32

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->g(Lcom/mixpanel/android/mpmetrics/l;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->h(Lcom/mixpanel/android/mpmetrics/l;)I

    move-result v5

    :cond_32
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;I)I

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/l;->b(Lcom/mixpanel/android/mpmetrics/l;I)I

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_57

    if-eqz v4, :cond_5a

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/p;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->c(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_7

    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5a
    new-instance v0, Lcom/mixpanel/android/mpmetrics/p$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/p$3;-><init>(Lcom/mixpanel/android/mpmetrics/p;Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V

    invoke-static {p2, v0}, Lcom/mixpanel/android/mpmetrics/f;->a(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/h;)V

    goto :goto_7
.end method

.method public final a(Lcom/mixpanel/android/mpmetrics/x;Landroid/app/Activity;)V
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->e(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;I)I

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/l;->b(Lcom/mixpanel/android/mpmetrics/l;I)I

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_45

    new-instance v0, Lcom/mixpanel/android/mpmetrics/p$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/mixpanel/android/mpmetrics/p$2;-><init>(Lcom/mixpanel/android/mpmetrics/p;Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/x;)V

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/l;->b(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/m;->a()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/l;->c(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/p;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mixpanel/android/mpmetrics/p$1;

    invoke-direct {v3, p0, v0}, Lcom/mixpanel/android/mpmetrics/p$1;-><init>(Lcom/mixpanel/android/mpmetrics/p;Lcom/mixpanel/android/mpmetrics/x;)V

    if-nez v2, :cond_48

    const-string v0, "MixpanelAPI"

    const-string v1, "Skipping survey check, because user has not yet been identified."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void

    :catchall_45
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_48
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_59

    const-string v1, "MixpanelAPI"

    const-string v2, "Surveys not supported on OS older than API 10, reporting null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v6}, Lcom/mixpanel/android/mpmetrics/x;->a(Lcom/mixpanel/android/mpmetrics/Survey;)V

    goto :goto_44

    :cond_59
    new-instance v0, Lcom/mixpanel/android/mpmetrics/c;

    invoke-direct {v0, v3, v2, v1}, Lcom/mixpanel/android/mpmetrics/c;-><init>(Lcom/mixpanel/android/mpmetrics/x;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/l;->d(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/c;)V

    goto :goto_44
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/p;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/r;->b(Ljava/lang/String;)V

    :try_start_10
    const-string v0, "$android_devices"

    new-instance v1, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_2c} :catch_49

    :try_start_2c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "$union"

    invoke-direct {p0, v0, v2}, Lcom/mixpanel/android/mpmetrics/p;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;Lorg/json/JSONObject;)V
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_3f} :catch_40

    goto :goto_6

    :catch_40
    move-exception v0

    :try_start_41
    const-string v0, "MixpanelAPI"

    const-string v1, "Exception unioning a property"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_6

    :catch_49
    move-exception v0

    const-string v1, "MixpanelAPI"

    const-string v2, "set push registration id error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$append"

    invoke-direct {p0, v1, v0}, Lcom/mixpanel/android/mpmetrics/p;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;Lorg/json/JSONObject;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "MixpanelAPI"

    const-string v2, "Exception appending a property"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public final b(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/o;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/mixpanel/android/mpmetrics/p$4;

    invoke-direct {v0, p0, p1}, Lcom/mixpanel/android/mpmetrics/p$4;-><init>(Lcom/mixpanel/android/mpmetrics/p;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

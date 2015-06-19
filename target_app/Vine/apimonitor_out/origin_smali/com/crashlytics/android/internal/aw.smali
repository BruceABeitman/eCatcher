.class public Lcom/crashlytics/android/internal/aW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/crashlytics/android/internal/aZ;

.field private final b:Lcom/crashlytics/android/internal/aY;

.field private final c:Lcom/crashlytics/android/internal/ah;

.field private final d:Lcom/crashlytics/android/internal/aN;

.field private final e:Lcom/crashlytics/android/internal/ba;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/aZ;Lcom/crashlytics/android/internal/ah;Lcom/crashlytics/android/internal/aY;Lcom/crashlytics/android/internal/aN;Lcom/crashlytics/android/internal/ba;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/internal/aW;->a:Lcom/crashlytics/android/internal/aZ;

    iput-object p2, p0, Lcom/crashlytics/android/internal/aW;->c:Lcom/crashlytics/android/internal/ah;

    iput-object p3, p0, Lcom/crashlytics/android/internal/aW;->b:Lcom/crashlytics/android/internal/aY;

    iput-object p4, p0, Lcom/crashlytics/android/internal/aW;->d:Lcom/crashlytics/android/internal/aN;

    iput-object p5, p0, Lcom/crashlytics/android/internal/aW;->e:Lcom/crashlytics/android/internal/ba;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/crashlytics/android/internal/aW;->b:Lcom/crashlytics/android/internal/aY;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/aY;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_14
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/aX;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/crashlytics/android/internal/aV;->b:Lcom/crashlytics/android/internal/aV;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/aV;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/crashlytics/android/internal/aW;->d:Lcom/crashlytics/android/internal/aN;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aN;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6c

    iget-object v0, p0, Lcom/crashlytics/android/internal/aW;->b:Lcom/crashlytics/android/internal/aY;

    iget-object v3, p0, Lcom/crashlytics/android/internal/aW;->c:Lcom/crashlytics/android/internal/ah;

    invoke-virtual {v0, v3, v2}, Lcom/crashlytics/android/internal/aY;->a(Lcom/crashlytics/android/internal/ah;Lorg/json/JSONObject;)Lcom/crashlytics/android/internal/aX;

    move-result-object v0

    if-eqz v0, :cond_5a

    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, Lcom/crashlytics/android/internal/aW;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crashlytics/android/internal/aW;->c:Lcom/crashlytics/android/internal/ah;

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/ah;->a()J

    move-result-wide v2

    sget-object v4, Lcom/crashlytics/android/internal/aV;->c:Lcom/crashlytics/android/internal/aV;

    invoke-virtual {v4, p1}, Lcom/crashlytics/android/internal/aV;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-wide v4, v0, Lcom/crashlytics/android/internal/aX;->f:J
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_7c

    cmp-long v2, v4, v2

    if-gez v2, :cond_47

    const/4 v2, 0x1

    :goto_35
    if-nez v2, :cond_49

    :cond_37
    :try_start_37
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Returning cached settings."

    invoke-interface {v1, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_46} :catch_90

    :goto_46
    return-object v0

    :cond_47
    const/4 v2, 0x0

    goto :goto_35

    :cond_49
    :try_start_49
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "Cached settings have expired."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    move-object v0, v1

    goto :goto_46

    :cond_5a
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "Failed to transform cached settings data."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_46

    :cond_6c
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "No cached settings data found."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7b} :catch_7c

    goto :goto_58

    :catch_7c
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_80
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Failed to get cached settings"

    invoke-interface {v2, v3, v4, v1}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    :catch_90
    move-exception v1

    goto :goto_80
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/internal/aX;
    .registers 2

    sget-object v0, Lcom/crashlytics/android/internal/aV;->a:Lcom/crashlytics/android/internal/aV;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/internal/aW;->a(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/aX;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/aX;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->f()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/crashlytics/android/internal/aW;->b(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/aX;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_39

    move-result-object v1

    :cond_f
    if-nez v1, :cond_2f

    :try_start_11
    iget-object v0, p0, Lcom/crashlytics/android/internal/aW;->e:Lcom/crashlytics/android/internal/ba;

    iget-object v2, p0, Lcom/crashlytics/android/internal/aW;->a:Lcom/crashlytics/android/internal/aZ;

    invoke-interface {v0, v2}, Lcom/crashlytics/android/internal/ba;->a(Lcom/crashlytics/android/internal/aZ;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/crashlytics/android/internal/aW;->b:Lcom/crashlytics/android/internal/aY;

    iget-object v3, p0, Lcom/crashlytics/android/internal/aW;->c:Lcom/crashlytics/android/internal/ah;

    invoke-virtual {v2, v3, v0}, Lcom/crashlytics/android/internal/aY;->a(Lcom/crashlytics/android/internal/ah;Lorg/json/JSONObject;)Lcom/crashlytics/android/internal/aX;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/internal/aW;->d:Lcom/crashlytics/android/internal/aN;

    iget-wide v3, v1, Lcom/crashlytics/android/internal/aX;->f:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/aN;->a(JLorg/json/JSONObject;)V

    const-string v2, "Loaded settings: "

    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/internal/aW;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_4d

    :cond_2f
    move-object v0, v1

    if-nez v0, :cond_38

    :try_start_32
    sget-object v1, Lcom/crashlytics/android/internal/aV;->c:Lcom/crashlytics/android/internal/aV;

    invoke-direct {p0, v1}, Lcom/crashlytics/android/internal/aW;->b(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/aX;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_52

    move-result-object v0

    :cond_38
    :goto_38
    return-object v0

    :catch_39
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3d
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    :catch_4d
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3d

    :catch_52
    move-exception v1

    goto :goto_3d
.end method

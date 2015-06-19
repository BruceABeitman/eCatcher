.class public Lcom/a/a/a/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/a/a/a/ba;

.field private final b:Lcom/a/a/a/az;

.field private final c:Lcom/a/a/a/bi;

.field private final d:Lcom/a/a/a/ao;

.field private final e:Lcom/a/a/a/cc;


# direct methods
.method public constructor <init>(Lcom/a/a/a/ba;Lcom/a/a/a/bi;Lcom/a/a/a/az;Lcom/a/a/a/ao;Lcom/a/a/a/cc;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/ax;->a:Lcom/a/a/a/ba;

    iput-object p2, p0, Lcom/a/a/a/ax;->c:Lcom/a/a/a/bi;

    iput-object p3, p0, Lcom/a/a/a/ax;->b:Lcom/a/a/a/az;

    iput-object p4, p0, Lcom/a/a/a/ax;->d:Lcom/a/a/a/ao;

    iput-object p5, p0, Lcom/a/a/a/ax;->e:Lcom/a/a/a/cc;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/bc;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/a/a/a/ax;->b:Lcom/a/a/a/az;

    invoke-virtual {v0, p1}, Lcom/a/a/a/az;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_14
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

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

    invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/a/a/a/aw;)Lcom/a/a/a/ay;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/a/a/a/aw;->b:Lcom/a/a/a/aw;

    invoke-virtual {v0, p1}, Lcom/a/a/a/aw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/a/a/a/ax;->d:Lcom/a/a/a/ao;

    invoke-virtual {v0}, Lcom/a/a/a/ao;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6c

    iget-object v0, p0, Lcom/a/a/a/ax;->b:Lcom/a/a/a/az;

    iget-object v3, p0, Lcom/a/a/a/ax;->c:Lcom/a/a/a/bi;

    invoke-virtual {v0, v3, v2}, Lcom/a/a/a/az;->a(Lcom/a/a/a/bi;Lorg/json/JSONObject;)Lcom/a/a/a/ay;

    move-result-object v0

    if-eqz v0, :cond_5a

    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, Lcom/a/a/a/ax;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/a/ax;->c:Lcom/a/a/a/bi;

    invoke-virtual {v2}, Lcom/a/a/a/bi;->a()J

    move-result-wide v2

    sget-object v4, Lcom/a/a/a/aw;->c:Lcom/a/a/a/aw;

    invoke-virtual {v4, p1}, Lcom/a/a/a/aw;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-wide v4, v0, Lcom/a/a/a/ay;->f:J
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_7c

    cmp-long v2, v4, v2

    if-gez v2, :cond_47

    const/4 v2, 0x1

    :goto_35
    if-nez v2, :cond_49

    :cond_37
    :try_start_37
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Returning cached settings."

    invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_46} :catch_90

    :goto_46
    return-object v0

    :cond_47
    const/4 v2, 0x0

    goto :goto_35

    :cond_49
    :try_start_49
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "Cached settings have expired."

    invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    move-object v0, v1

    goto :goto_46

    :cond_5a
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "Failed to transform cached settings data."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_46

    :cond_6c
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "No cached settings data found."

    invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7b} :catch_7c

    goto :goto_58

    :catch_7c
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_80
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Failed to get cached settings"

    invoke-interface {v2, v3, v4, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    :catch_90
    move-exception v1

    goto :goto_80
.end method


# virtual methods
.method public a()Lcom/a/a/a/ay;
    .registers 2

    sget-object v0, Lcom/a/a/a/aw;->a:Lcom/a/a/a/aw;

    invoke-virtual {p0, v0}, Lcom/a/a/a/ax;->a(Lcom/a/a/a/aw;)Lcom/a/a/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/a/a/aw;)Lcom/a/a/a/ay;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->e()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/a/a/a/ax;->b(Lcom/a/a/a/aw;)Lcom/a/a/a/ay;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_39

    move-result-object v1

    :cond_f
    if-nez v1, :cond_2f

    :try_start_11
    iget-object v0, p0, Lcom/a/a/a/ax;->e:Lcom/a/a/a/cc;

    iget-object v2, p0, Lcom/a/a/a/ax;->a:Lcom/a/a/a/ba;

    invoke-interface {v0, v2}, Lcom/a/a/a/cc;->a(Lcom/a/a/a/ba;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/a/a/a/ax;->b:Lcom/a/a/a/az;

    iget-object v3, p0, Lcom/a/a/a/ax;->c:Lcom/a/a/a/bi;

    invoke-virtual {v2, v3, v0}, Lcom/a/a/a/az;->a(Lcom/a/a/a/bi;Lorg/json/JSONObject;)Lcom/a/a/a/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/ax;->d:Lcom/a/a/a/ao;

    iget-wide v3, v1, Lcom/a/a/a/ay;->f:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/a/a/a/ao;->a(JLorg/json/JSONObject;)V

    const-string v2, "Loaded settings: "

    invoke-direct {p0, v0, v2}, Lcom/a/a/a/ax;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_4d

    :cond_2f
    move-object v0, v1

    if-nez v0, :cond_38

    :try_start_32
    sget-object v1, Lcom/a/a/a/aw;->c:Lcom/a/a/a/aw;

    invoke-direct {p0, v1}, Lcom/a/a/a/ax;->b(Lcom/a/a/a/aw;)Lcom/a/a/a/ay;
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
    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

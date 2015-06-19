.class public final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;

.field final c:Lcom/loopj/android/http/l;

.field private final d:Lcom/loopj/android/http/b;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/spotify/mobile/android/util/cl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "network_operator_premium_activation_next_earliest_retry_time"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;

    new-instance v0, Lcom/loopj/android/http/b;

    invoke-direct {v0}, Lcom/loopj/android/http/b;-><init>()V

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->d:Lcom/loopj/android/http/b;

    const-class v0, Lcom/spotify/mobile/android/util/da;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/da;

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a:Lcom/spotify/mobile/android/util/cz;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/spotify/mobile/android/util/cm;

    const-string v3, "network-operator-eligibility-checker"

    new-instance v4, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$1;

    invoke-direct {v4, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$1;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)V

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/cm;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v3, Lcom/spotify/mobile/android/util/cq;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v0, v1, v4}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/util/cm;->a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/util/co;

    const-wide/16 v2, 0x190

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/co;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(I)Lcom/spotify/mobile/android/util/cm;

    move-result-object v6

    new-instance v0, Lcom/spotify/mobile/android/util/cr;

    const-wide/16 v1, 0x5

    const-wide/16 v3, 0x7

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/util/cm;->d(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cm;->a()Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->f:Lcom/spotify/mobile/android/util/cl;

    new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->c:Lcom/loopj/android/http/l;

    return-void
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->e:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_e} :catch_10

    move-result-object v0

    goto :goto_a

    :catch_10
    move-exception v0

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_a
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;Lorg/json/JSONObject;)V
    .registers 11

    const/16 v5, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v3

    const-string v0, "spotify_order_token"

    invoke-static {p1, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    move v0, v2

    :goto_1d
    if-eqz v0, :cond_46

    const-string v0, "success"

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v2

    :goto_38
    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;->a(Ljava/lang/String;)V

    :goto_43
    return-void

    :cond_44
    move v0, v1

    goto :goto_1d

    :cond_46
    move v0, v1

    goto :goto_38

    :cond_48
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "message"

    invoke-static {p1, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "customer not eligible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->b()V

    const-class v0, Lcom/spotify/mobile/android/util/da;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/da;

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v7

    sget-object v8, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x17

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v7, v8, v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;J)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    goto :goto_43

    :cond_ab
    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->f:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    goto :goto_43
.end method

.method static synthetic b(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Lcom/loopj/android/http/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->d:Lcom/loopj/android/http/b;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Lcom/spotify/mobile/android/util/cl;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->f:Lcom/spotify/mobile/android/util/cl;

    return-object v0
.end method


# virtual methods
.method final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->f:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->f:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V

    :cond_d
    return-void
.end method

.method final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->f:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->f:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V

    :cond_d
    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->d:Lcom/loopj/android/http/b;

    invoke-virtual {v0}, Lcom/loopj/android/http/b;->b()V

    return-void
.end method

.class final Lcom/bbm/z;
.super Lcom/bbm/j/k;
.source "LocationSynchronizer.java"


# instance fields
.field final synthetic a:Lcom/bbm/y;


# direct methods
.method constructor <init>(Lcom/bbm/y;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/z;->a:Lcom/bbm/y;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/bbm/z;->a:Lcom/bbm/y;

    iget-object v0, v0, Lcom/bbm/y;->e:Lcom/bbm/d/a;

    const-string v1, "locationReporting"

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_63

    iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/bbm/z;->a:Lcom/bbm/y;

    iget-object v2, v2, Lcom/bbm/y;->f:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "allow_geolocation_collect"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/bbm/z;->a:Lcom/bbm/y;

    const-string v2, "sampleInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bbm/y;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/z;->a:Lcom/bbm/y;

    invoke-virtual {v4}, Lcom/bbm/y;->a()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v4, Lcom/bbm/y;->c:Ljava/util/Timer;

    new-instance v1, Lcom/bbm/aa;

    invoke-direct {v1, v4}, Lcom/bbm/aa;-><init>(Lcom/bbm/y;)V

    iget-object v0, v4, Lcom/bbm/y;->c:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    iget-object v4, v4, Lcom/bbm/y;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_63
    :goto_63
    return-void

    :cond_64
    iget-object v0, p0, Lcom/bbm/z;->a:Lcom/bbm/y;

    invoke-virtual {v0}, Lcom/bbm/y;->a()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_63

    :catch_6a
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_63
.end method

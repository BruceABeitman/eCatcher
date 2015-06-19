.class public Lcom/tencent/map/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/b/b$a;,
        Lcom/tencent/map/b/b$b;
    }
.end annotation


# static fields
.field private static b:Lcom/tencent/map/b/b;


# instance fields
.field public a:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:Lcom/tencent/map/b/b$a;

.field private j:Lcom/tencent/map/b/b$b;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/tencent/map/b/b;->c:D

    iput-wide v0, p0, Lcom/tencent/map/b/b;->d:D

    iput-wide v0, p0, Lcom/tencent/map/b/b;->e:D

    iput-wide v0, p0, Lcom/tencent/map/b/b;->f:D

    iput-wide v0, p0, Lcom/tencent/map/b/b;->g:D

    iput-wide v0, p0, Lcom/tencent/map/b/b;->h:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/b/b;->j:Lcom/tencent/map/b/b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/map/b/b;->k:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/tencent/map/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/map/b/b;)Lcom/tencent/map/b/b$a;
    .registers 2

    iget-object v0, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    return-object v0
.end method

.method public static a()Lcom/tencent/map/b/b;
    .registers 1

    sget-object v0, Lcom/tencent/map/b/b;->b:Lcom/tencent/map/b/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/tencent/map/b/b;

    invoke-direct {v0}, Lcom/tencent/map/b/b;-><init>()V

    sput-object v0, Lcom/tencent/map/b/b;->b:Lcom/tencent/map/b/b;

    :cond_b
    sget-object v0, Lcom/tencent/map/b/b;->b:Lcom/tencent/map/b/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/map/b/u;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/map/b/k;,
            Lcom/tencent/map/b/h;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/map/b/t;->b()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_10

    :goto_8
    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/map/b/k;

    invoke-direct {v0}, Lcom/tencent/map/b/k;-><init>()V

    throw v0

    :cond_10
    move v0, v1

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    :try_start_19
    invoke-static/range {v0 .. v6}, Lcom/tencent/map/b/i;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)Lcom/tencent/map/b/u;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1e

    move-result-object v0

    return-object v0

    :catch_1e
    move-exception v0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/map/b/b;[BLjava/lang/String;)V
    .registers 12

    const-wide v7, 0x4076800000000000L

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_4e

    :cond_12
    :goto_12
    :try_start_12
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "location"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "latitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string/jumbo v3, "longitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/tencent/map/b/b;->e:D

    sub-double v5, v1, v5

    iput-wide v5, p0, Lcom/tencent/map/b/b;->g:D

    iget-wide v5, p0, Lcom/tencent/map/b/b;->f:D

    sub-double v5, v3, v5

    iput-wide v5, p0, Lcom/tencent/map/b/b;->h:D

    iget-wide v5, p0, Lcom/tencent/map/b/b;->e:D

    iput-wide v5, p0, Lcom/tencent/map/b/b;->c:D

    iget-wide v5, p0, Lcom/tencent/map/b/b;->f:D

    iput-wide v5, p0, Lcom/tencent/map/b/b;->d:D

    iget-object v0, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/map/b/b$a;->a(DD)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_4d} :catch_59

    :cond_4d
    :goto_4d
    return-void

    :catch_4e
    move-exception v1

    iget-object v1, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    invoke-interface {v1, v7, v8, v7, v8}, Lcom/tencent/map/b/b$a;->a(DD)V

    goto :goto_12

    :catch_59
    move-exception v0

    iget-object v0, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    invoke-interface {v0, v7, v8, v7, v8}, Lcom/tencent/map/b/b$a;->a(DD)V

    goto :goto_4d
.end method

.method static synthetic a(Lcom/tencent/map/b/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/map/b/b;->k:Z

    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public final a(DDLcom/tencent/map/b/b$a;)V
    .registers 15

    const-wide/16 v2, 0x0

    iput-object p5, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    iget-wide v0, p0, Lcom/tencent/map/b/b;->g:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_33

    iget-wide v0, p0, Lcom/tencent/map/b/b;->h:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_33

    const/16 v0, 0xa

    new-array v8, v0, [F

    iget-wide v4, p0, Lcom/tencent/map/b/b;->c:D

    iget-wide v6, p0, Lcom/tencent/map/b/b;->d:D

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const v1, 0x44bb8000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_33

    iget-object v0, p0, Lcom/tencent/map/b/b;->i:Lcom/tencent/map/b/b$a;

    iget-wide v1, p0, Lcom/tencent/map/b/b;->g:D

    add-double/2addr v1, p1

    iget-wide v3, p0, Lcom/tencent/map/b/b;->h:D

    add-double/2addr v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/map/b/b$a;->a(DD)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-boolean v0, p0, Lcom/tencent/map/b/b;->k:Z

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"source\":101,\"access_token\":\"160e7bd42dec9428721034e0146fc6dd\",\"location\":{\"latitude\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\"longitude\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\t}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/b/b;->a:Ljava/lang/String;

    iput-wide p1, p0, Lcom/tencent/map/b/b;->e:D

    iput-wide p3, p0, Lcom/tencent/map/b/b;->f:D

    new-instance v0, Lcom/tencent/map/b/b$b;

    invoke-direct {v0, p0}, Lcom/tencent/map/b/b$b;-><init>(Lcom/tencent/map/b/b;)V

    iput-object v0, p0, Lcom/tencent/map/b/b;->j:Lcom/tencent/map/b/b$b;

    iget-object v0, p0, Lcom/tencent/map/b/b;->j:Lcom/tencent/map/b/b$b;

    invoke-virtual {v0}, Lcom/tencent/map/b/b$b;->start()V

    goto :goto_32
.end method

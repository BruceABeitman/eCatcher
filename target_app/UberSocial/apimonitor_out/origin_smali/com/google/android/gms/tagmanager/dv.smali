.class Lcom/google/android/gms/tagmanager/dv;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:D

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>(D)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/dv;->a:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dv;->c:Z

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/dv;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dv;->c:Z

    return-void
.end method

.method public static a(J)Lcom/google/android/gms/tagmanager/dv;
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/dv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/dv;-><init>(J)V

    return-object v0
.end method

.method public static a(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/dv;
    .registers 4

    new-instance v0, Lcom/google/android/gms/tagmanager/dv;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/dv;-><init>(D)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/dv;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/tagmanager/dv;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/dv;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    :try_start_b
    new-instance v0, Lcom/google/android/gms/tagmanager/dv;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/dv;-><init>(D)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_9

    :catch_15
    move-exception v0

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid TypedNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/dv;)I
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/dv;->b:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/android/gms/tagmanager/dv;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/dv;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_1d
.end method

.method public a()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dv;->c:Z

    return v0
.end method

.method public byteValue()B
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public c()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dv;->b:J

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dv;->a:D

    double-to-long v0, v0

    goto :goto_8
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/tagmanager/dv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/dv;->a(Lcom/google/android/gms/tagmanager/dv;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dv;->b:J

    long-to-double v0, v0

    :goto_9
    return-wide v0

    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dv;->a:D

    goto :goto_9
.end method

.method public e()S
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/tagmanager/dv;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/android/gms/tagmanager/dv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/dv;->a(Lcom/google/android/gms/tagmanager/dv;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public floatValue()F
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->d()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->e()S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dv;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dv;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

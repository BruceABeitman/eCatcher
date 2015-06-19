.class Lcom/google/android/gms/tagmanager/dg;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/tagmanager/dg;",
        ">;"
    }
.end annotation


# instance fields
.field private aih:D

.field private aii:J

.field private aij:Z


# direct methods
.method private constructor <init>(D)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/dg;->aih:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aij:Z

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/dg;->aii:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aij:Z

    return-void
.end method

.method public static a(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/dg;
    .registers 4

    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/dg;-><init>(D)V

    return-object v0
.end method

.method public static co(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/dg;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/dg;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    :try_start_b
    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/dg;-><init>(D)V
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

.method public static z(J)Lcom/google/android/gms/tagmanager/dg;
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/dg;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/dg;)I
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mO()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/dg;->mO()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/dg;->aii:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/android/gms/tagmanager/dg;->aii:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_1d
.end method

.method public byteValue()B
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/tagmanager/dg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/dg;->a(Lcom/google/android/gms/tagmanager/dg;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mO()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aii:J

    long-to-double v0, v0

    :goto_9
    return-wide v0

    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aih:D

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/tagmanager/dg;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/android/gms/tagmanager/dg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/dg;->a(Lcom/google/android/gms/tagmanager/dg;)I

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

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mQ()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mP()J

    move-result-wide v0

    return-wide v0
.end method

.method public mN()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mO()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mO()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aij:Z

    return v0
.end method

.method public mP()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mO()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aii:J

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aih:D

    double-to-long v0, v0

    goto :goto_8
.end method

.method public mQ()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public mR()S
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public shortValue()S
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mR()S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->mO()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aii:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aih:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

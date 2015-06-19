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
.field private aaC:D

.field private aaD:J

.field private aaE:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaD:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaE:Z

    return-void
.end method

.method private a(Lcom/google/android/gms/tagmanager/dg;)I
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaE:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/google/android/gms/tagmanager/dg;->aaE:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/dg;->aaD:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/android/gms/tagmanager/dg;->aaD:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/dg;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_19
.end method

.method public static a()Lcom/google/android/gms/tagmanager/dg;
    .registers 1

    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/dg;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaE:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public byteValue()B
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaE:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/tagmanager/dg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/dg;->a(Lcom/google/android/gms/tagmanager/dg;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaE:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaD:J

    long-to-double v0, v0

    :goto_7
    return-wide v0

    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaC:D

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/tagmanager/dg;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/android/gms/tagmanager/dg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/dg;->a(Lcom/google/android/gms/tagmanager/dg;)I

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
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaE:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaD:J

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaC:D

    double-to-long v0, v0

    goto :goto_6
.end method

.method public shortValue()S
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/dg;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaE:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaD:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/dg;->aaC:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

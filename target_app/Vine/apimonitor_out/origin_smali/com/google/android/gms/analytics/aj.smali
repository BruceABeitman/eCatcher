.class Lcom/google/android/gms/analytics/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/j;


# instance fields
.field xA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field xu:Ljava/lang/String;

.field xv:D

.field xw:I

.field xx:I

.field xy:I

.field xz:I


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/android/gms/analytics/aj;->xv:D

    iput v2, p0, Lcom/google/android/gms/analytics/aj;->xw:I

    iput v2, p0, Lcom/google/android/gms/analytics/aj;->xx:I

    iput v2, p0, Lcom/google/android/gms/analytics/aj;->xy:I

    iput v2, p0, Lcom/google/android/gms/analytics/aj;->xz:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/aj;->xA:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/aj;->xA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    move-object v0, p1

    goto :goto_a
.end method

.method public dA()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/aj;->xu:Ljava/lang/String;

    return-object v0
.end method

.method public dB()Z
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/analytics/aj;->xv:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public dC()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/aj;->xv:D

    return-wide v0
.end method

.method public dD()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/aj;->xw:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public dE()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/aj;->xx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public dF()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/aj;->xx:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public dG()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/aj;->xy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public dH()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/aj;->xy:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public dI()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/aj;->xz:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public dz()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/aj;->xu:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getSessionTimeout()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/aj;->xw:I

    return v0
.end method

.method public j(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/aj;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

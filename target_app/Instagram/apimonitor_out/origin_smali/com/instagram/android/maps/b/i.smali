.class public final Lcom/instagram/android/maps/b/i;
.super Ljava/lang/Object;
.source "QuadtreeRegion.java"


# instance fields
.field private a:Lcom/instagram/android/maps/b/h;

.field private b:Lcom/instagram/android/maps/b/h;

.field private c:Lcom/instagram/android/maps/b/h;

.field private d:Lcom/instagram/android/maps/b/h;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p2}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    return-void
.end method

.method public static a(Lcom/google/android/maps/GeoPoint;II)Lcom/instagram/android/maps/b/i;
    .registers 13

    const-wide v8, 0x412e848000000000L

    const-wide/high16 v6, 0x4000

    invoke-static {p0}, Lcom/instagram/android/maps/b/h;->a(Lcom/google/android/maps/GeoPoint;)Lcom/instagram/android/maps/b/h;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/b/h;

    int-to-double v2, p1

    div-double/2addr v2, v8

    div-double/2addr v2, v6

    int-to-double v4, p2

    div-double/2addr v4, v8

    div-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    new-instance v2, Lcom/instagram/android/maps/b/i;

    invoke-direct {v2, v0, v1}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    return-object v2
.end method

.method public static c()Lcom/instagram/android/maps/b/i;
    .registers 6

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/instagram/android/maps/b/h;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    new-instance v1, Lcom/instagram/android/maps/b/h;

    const-wide v2, 0x4056800000000000L

    const-wide v4, 0x4066800000000000L

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    new-instance v2, Lcom/instagram/android/maps/b/i;

    invoke-direct {v2, v0, v1}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    return-object v2
.end method

.method private g()Lcom/instagram/android/maps/b/h;
    .registers 8

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->c:Lcom/instagram/android/maps/b/h;

    if-nez v0, :cond_25

    new-instance v0, Lcom/instagram/android/maps/b/h;

    iget-object v1, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    iput-object v0, p0, Lcom/instagram/android/maps/b/i;->c:Lcom/instagram/android/maps/b/h;

    :cond_25
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->c:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method private h()Lcom/instagram/android/maps/b/h;
    .registers 8

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->d:Lcom/instagram/android/maps/b/h;

    if-nez v0, :cond_25

    new-instance v0, Lcom/instagram/android/maps/b/h;

    iget-object v1, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    iput-object v0, p0, Lcom/instagram/android/maps/b/i;->d:Lcom/instagram/android/maps/b/h;

    :cond_25
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->d:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/instagram/android/maps/b/i;
    .registers 4

    new-instance v0, Lcom/instagram/android/maps/b/i;

    iget-object v1, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    iget-object v2, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    return-object v0
.end method

.method public final a(Lcom/instagram/android/maps/b/h;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v7

    sub-double/2addr v5, v7

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_5d

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_5d

    move v0, v1

    :goto_2d
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    iget-object v7, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v7

    sub-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_5f

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    iget-object v7, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_5f

    move v3, v1

    :goto_58
    if-eqz v0, :cond_61

    if-eqz v3, :cond_61

    :goto_5c
    return v1

    :cond_5d
    move v0, v2

    goto :goto_2d

    :cond_5f
    move v3, v2

    goto :goto_58

    :cond_61
    move v1, v2

    goto :goto_5c
.end method

.method public final a(Lcom/instagram/android/maps/b/i;)Z
    .registers 6

    invoke-direct {p0}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_52

    invoke-direct {p0}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_52

    invoke-direct {p0}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_52

    invoke-direct {p0}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_52

    const/4 v0, 0x1

    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method

.method public final b()Lcom/instagram/android/maps/b/i;
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    const-wide/high16 v1, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->a(D)Lcom/instagram/android/maps/b/h;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/b/i;

    iget-object v2, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-direct {v1, v2, v0}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    return-object v1
.end method

.method public final b(Lcom/instagram/android/maps/b/i;)Z
    .registers 3

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/b/i;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/b/i;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final d()Z
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_36

    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public final e()Lcom/instagram/android/maps/b/h;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method public final f()Lcom/instagram/android/maps/b/h;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

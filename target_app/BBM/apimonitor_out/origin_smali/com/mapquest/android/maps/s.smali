.class public final Lcom/mapquest/android/maps/s;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(DD)V
    .registers 10

    const-wide v3, 0x412e848000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Double;

    mul-double v1, p1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/s;->a:I

    new-instance v0, Ljava/lang/Double;

    mul-double v1, p3, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/s;->a(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    const/16 v1, 0x3e8

    const/16 v0, -0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v1, :cond_b

    if-gt p1, v0, :cond_f

    :cond_b
    if-ge p2, v1, :cond_39

    if-le p2, v0, :cond_39

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your latitudeE6/longitudeE6 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") are supposed to be in microdegrees but don\'t appear to be. Perhaps you meant to send them as doubles?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iput p1, p0, Lcom/mapquest/android/maps/s;->a:I

    invoke-direct {p0, p2}, Lcom/mapquest/android/maps/s;->a(I)V

    return-void
.end method

.method private a(I)V
    .registers 9

    const-wide v5, 0x41b5752a00000000L

    move v0, p1

    :goto_6
    int-to-double v1, v0

    const-wide v3, 0x41a5752a00000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_14

    int-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-int v0, v0

    goto :goto_6

    :cond_14
    :goto_14
    int-to-double v1, v0

    const-wide v3, -0x3e5a8ad600000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_22

    int-to-double v0, v0

    add-double/2addr v0, v5

    double-to-int v0, v0

    goto :goto_14

    :cond_22
    iput v0, p0, Lcom/mapquest/android/maps/s;->b:I

    return-void
.end method


# virtual methods
.method public final a()D
    .registers 5

    iget v0, p0, Lcom/mapquest/android/maps/s;->a:I

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final b()D
    .registers 5

    iget v0, p0, Lcom/mapquest/android/maps/s;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/mapquest/android/maps/s;

    iget v2, p0, Lcom/mapquest/android/maps/s;->a:I

    iget v3, p1, Lcom/mapquest/android/maps/s;->a:I

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget v2, p0, Lcom/mapquest/android/maps/s;->b:I

    iget v3, p1, Lcom/mapquest/android/maps/s;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/mapquest/android/maps/s;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mapquest/android/maps/s;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lat/Lng: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mapquest/android/maps/s;->a()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapquest/android/maps/s;->b()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

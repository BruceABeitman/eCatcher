.class public abstract Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
.super Ljava/lang/Object;
.source "AstronomicalCalculator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private refraction:D

.field private solarRadius:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fe2222222222222L

    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->refraction:D

    const-wide v0, 0x3fd1111111111111L

    iput-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->solarRadius:D

    return-void
.end method

.method public static getDefault()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
    .registers 1

    new-instance v0, Lnet/sourceforge/zmanim/util/SunTimesCalculator;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/util/SunTimesCalculator;-><init>()V

    return-object v0
.end method


# virtual methods
.method adjustZenith(DD)D
    .registers 9

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p1, v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getSolarRadius()D

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getRefraction()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p0, p3, p4}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getElevationAdjustment(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    add-double/2addr p1, v0

    :cond_18
    return-wide p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;

    move-object v1, v0
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_a

    :goto_9
    return-object v1

    :catch_a
    move-exception v3

    move-object v2, v3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Required by the compiler. Should never be reached since we implement clone()"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public abstract getCalculatorName()Ljava/lang/String;
.end method

.method getElevationAdjustment(D)D
    .registers 9

    const-wide v0, 0x40b8d4e666666666L

    const-wide v4, 0x408f400000000000L

    div-double v4, p1, v4

    add-double/2addr v4, v0

    div-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    return-wide v2
.end method

.method getRefraction()D
    .registers 3

    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->refraction:D

    return-wide v0
.end method

.method getSolarRadius()D
    .registers 3

    iget-wide v0, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->solarRadius:D

    return-wide v0
.end method

.method public abstract getUTCSunrise(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
.end method

.method public abstract getUTCSunset(Lnet/sourceforge/zmanim/AstronomicalCalendar;DZ)D
.end method

.method public setRefraction(D)V
    .registers 3

    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->refraction:D

    return-void
.end method

.method public setSolarRadius(D)V
    .registers 3

    iput-wide p1, p0, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->solarRadius:D

    return-void
.end method

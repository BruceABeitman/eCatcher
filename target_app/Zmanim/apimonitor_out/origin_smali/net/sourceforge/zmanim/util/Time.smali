.class public Lnet/sourceforge/zmanim/util/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field private static final HOUR_MILLIS:I = 0x36ee80

.field private static final MINUTE_MILLIS:I = 0xea60

.field private static final SECOND_MILLIS:I = 0x3e8


# instance fields
.field private hours:I

.field private isNegative:Z

.field private milliseconds:I

.field private minutes:I

.field private seconds:I


# direct methods
.method public constructor <init>(D)V
    .registers 4

    double-to-int v0, p1

    invoke-direct {p0, v0}, Lnet/sourceforge/zmanim/util/Time;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const v2, 0x36ee80

    const v1, 0xea60

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:I

    iput-boolean v0, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    if-gez p1, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    :cond_1d
    div-int v0, p1, v2

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    mul-int/2addr v0, v2

    sub-int/2addr p1, v0

    div-int v0, p1, v1

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    div-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr p1, v0

    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    iput v0, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:I

    iput-boolean v0, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    iput p2, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    iput p3, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    iput p4, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:I

    return-void
.end method


# virtual methods
.method public getHours()I
    .registers 2

    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    return v0
.end method

.method public getMilliseconds()I
    .registers 2

    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:I

    return v0
.end method

.method public getMinutes()I
    .registers 2

    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    return v0
.end method

.method public getSeconds()I
    .registers 2

    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    return v0
.end method

.method public getTime()D
    .registers 4

    iget v0, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    iget v1, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget v1, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method

.method public isNegative()Z
    .registers 2

    iget-boolean v0, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    return v0
.end method

.method public setHours(I)V
    .registers 2

    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->hours:I

    return-void
.end method

.method public setIsNegative(Z)V
    .registers 2

    iput-boolean p1, p0, Lnet/sourceforge/zmanim/util/Time;->isNegative:Z

    return-void
.end method

.method public setMilliseconds(I)V
    .registers 2

    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->milliseconds:I

    return-void
.end method

.method public setMinutes(I)V
    .registers 2

    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->minutes:I

    return-void
.end method

.method public setSeconds(I)V
    .registers 2

    iput p1, p0, Lnet/sourceforge/zmanim/util/Time;->seconds:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;

    invoke-direct {v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->format(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

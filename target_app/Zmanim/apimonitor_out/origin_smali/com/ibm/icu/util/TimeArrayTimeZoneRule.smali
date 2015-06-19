.class public Lcom/ibm/icu/util/TimeArrayTimeZoneRule;
.super Lcom/ibm/icu/util/TimeZoneRule;
.source "TimeArrayTimeZoneRule.java"


# static fields
.field private static final serialVersionUID:J = -0xf80c4d5c99c274dL


# instance fields
.field private final startTimes:[J

.field private final timeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[JI)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    if-eqz p4, :cond_8

    array-length v0, p4

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No start times are specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    iput-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    iget-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    iput p5, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    return-void
.end method

.method private getUTC(JII)J
    .registers 7

    iget v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    int-to-long v0, p3

    sub-long/2addr p1, v0

    :cond_7
    iget v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-nez v0, :cond_d

    int-to-long v0, p4

    sub-long/2addr p1, v0

    :cond_d
    return-wide p1
.end method


# virtual methods
.method public getFinalStart(II)Ljava/util/Date;
    .registers 7

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .registers 6

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .registers 12

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v3, v3

    sub-int v0, v3, v5

    :goto_6
    if-ltz v0, :cond_1a

    iget-object v3, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v3, v3, v0

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_1a

    if-nez p5, :cond_22

    cmp-long v3, v1, p1

    if-nez v3, :cond_22

    :cond_1a
    iget-object v3, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v3, v3

    sub-int/2addr v3, v5

    if-ne v0, v3, :cond_25

    const/4 v3, 0x0

    :goto_21
    return-object v3

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_25
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    invoke-direct {p0, v4, v5, p3, p4}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_21
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .registers 11

    iget-object v3, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    :goto_6
    if-ltz v0, :cond_23

    iget-object v3, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v3, v3, v0

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_1a

    if-eqz p5, :cond_20

    cmp-long v3, v1, p1

    if-nez v3, :cond_20

    :cond_1a
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_1f
    return-object v3

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_23
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getStartTimes()[J
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0
.end method

.method public getTimeType()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    return v0
.end method

.method public isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z
    .registers 6

    const/4 v3, 0x0

    instance-of v1, p1, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-nez v1, :cond_7

    move v1, v3

    :goto_6
    return v1

    :cond_7
    iget v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object v1, v0

    iget v1, v1, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-ne v2, v1, :cond_24

    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object v1, v0

    iget-object v1, v1, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-super {p0, p1}, Lcom/ibm/icu/util/TimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z

    move-result v1

    goto :goto_6

    :cond_24
    move v1, v3

    goto :goto_6
.end method

.method public isTransitionRule()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lcom/ibm/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", timeType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", startTimes=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_1c
    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_36

    if-eqz v1, :cond_28

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_36
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

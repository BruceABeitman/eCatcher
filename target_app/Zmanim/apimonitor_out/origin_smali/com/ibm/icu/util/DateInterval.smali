.class public final Lcom/ibm/icu/util/DateInterval;
.super Ljava/lang/Object;
.source "DateInterval.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fromDate:J

.field private final toDate:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ibm/icu/util/DateInterval;->fromDate:J

    iput-wide p3, p0, Lcom/ibm/icu/util/DateInterval;->toDate:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x0

    instance-of v2, p1, Lcom/ibm/icu/util/DateInterval;

    if-eqz v2, :cond_1d

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/DateInterval;

    move-object v1, v0

    iget-wide v2, p0, Lcom/ibm/icu/util/DateInterval;->fromDate:J

    iget-wide v4, v1, Lcom/ibm/icu/util/DateInterval;->fromDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    iget-wide v2, p0, Lcom/ibm/icu/util/DateInterval;->toDate:J

    iget-wide v4, v1, Lcom/ibm/icu/util/DateInterval;->toDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    :goto_1a
    return v2

    :cond_1b
    move v2, v6

    goto :goto_1a

    :cond_1d
    move v2, v6

    goto :goto_1a
.end method

.method public getFromDate()J
    .registers 3

    iget-wide v0, p0, Lcom/ibm/icu/util/DateInterval;->fromDate:J

    return-wide v0
.end method

.method public getToDate()J
    .registers 3

    iget-wide v0, p0, Lcom/ibm/icu/util/DateInterval;->toDate:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/ibm/icu/util/DateInterval;->fromDate:J

    iget-wide v2, p0, Lcom/ibm/icu/util/DateInterval;->toDate:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/ibm/icu/util/DateInterval;->fromDate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ibm/icu/util/DateInterval;->toDate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/ibm/icu/util/Measure;
.super Ljava/lang/Object;
.source "Measure.java"


# instance fields
.field private number:Ljava/lang/Number;

.field private unit:Lcom/ibm/icu/util/MeasureUnit;


# direct methods
.method protected constructor <init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    iput-object p2, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    return-void
.end method

.method private static numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 7

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    move v0, v4

    goto :goto_8

    :cond_17
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_6

    move v3, v5

    :goto_5
    return v3

    :cond_6
    if-ne p1, p0, :cond_a

    move v3, v6

    goto :goto_5

    :cond_a
    :try_start_a
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/Measure;

    move-object v2, v0

    iget-object v3, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    iget-object v4, v2, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    iget-object v4, v2, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-static {v3, v4}, Lcom/ibm/icu/util/Measure;->numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_1f} :catch_26

    move-result v3

    if-eqz v3, :cond_24

    move v3, v6

    goto :goto_5

    :cond_24
    move v3, v5

    goto :goto_5

    :catch_26
    move-exception v3

    move-object v1, v3

    move v3, v5

    goto :goto_5
.end method

.method public getNumber()Ljava/lang/Number;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    return-object v0
.end method

.method public getUnit()Lcom/ibm/icu/util/MeasureUnit;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

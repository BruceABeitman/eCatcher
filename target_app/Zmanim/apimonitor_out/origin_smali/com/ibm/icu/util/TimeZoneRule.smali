.class public abstract Lcom/ibm/icu/util/TimeZoneRule;
.super Ljava/lang/Object;
.source "TimeZoneRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5875820a58321ca4L


# instance fields
.field private final dstSavings:I

.field private final name:Ljava/lang/String;

.field private final rawOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    iput p2, p0, Lcom/ibm/icu/util/TimeZoneRule;->rawOffset:I

    iput p3, p0, Lcom/ibm/icu/util/TimeZoneRule;->dstSavings:I

    return-void
.end method


# virtual methods
.method public getDSTSavings()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/TimeZoneRule;->dstSavings:I

    return v0
.end method

.method public abstract getFinalStart(II)Ljava/util/Date;
.end method

.method public abstract getFirstStart(II)Ljava/util/Date;
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getNextStart(JIIZ)Ljava/util/Date;
.end method

.method public abstract getPreviousStart(JIIZ)Ljava/util/Date;
.end method

.method public getRawOffset()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/TimeZoneRule;->rawOffset:I

    return v0
.end method

.method public isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z
    .registers 4

    iget v0, p0, Lcom/ibm/icu/util/TimeZoneRule;->rawOffset:I

    iget v1, p1, Lcom/ibm/icu/util/TimeZoneRule;->rawOffset:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/ibm/icu/util/TimeZoneRule;->dstSavings:I

    iget v1, p1, Lcom/ibm/icu/util/TimeZoneRule;->dstSavings:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract isTransitionRule()Z
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", stdOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/util/TimeZoneRule;->rawOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dstSaving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/util/TimeZoneRule;->dstSavings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public final Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;
.super Ljava/lang/Object;
.source "RateShareEntry.java"


# instance fields
.field a:I

.field b:S


# direct methods
.method public constructor <init>(IS)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:I

    iput-short p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->b:S

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:I

    return v0
.end method

.method public final b()S
    .registers 2

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->b:S

    return v0
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
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->b:S

    iget-short v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->b:S

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->b:S

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{availableBitrate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetRateShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

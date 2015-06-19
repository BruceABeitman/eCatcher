.class public final Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;
.super Ljava/lang/Object;
.source "SampleToGroupBox.java"


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->a:J

    iput p3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->b:I

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->a:J

    return-wide v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

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
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->b:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->b:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->a:J

    iget-wide v4, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->a:J

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry{sampleCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupDescriptionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

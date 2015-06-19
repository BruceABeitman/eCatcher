.class public Lcom/pinguo/album/exif/Rational;
.super Ljava/lang/Object;
.source "Rational.java"
.field private final mDenominator:J
.field private final mNumerator:J
.method public constructor <init>(JJ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/pinguo/album/exif/Rational;->mNumerator:J
iput-wide p3, p0, Lcom/pinguo/album/exif/Rational;->mDenominator:J
return-void
.end method
.method public constructor <init>(Lcom/pinguo/album/exif/Rational;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-wide v0, p1, Lcom/pinguo/album/exif/Rational;->mNumerator:J
iput-wide v0, p0, Lcom/pinguo/album/exif/Rational;->mNumerator:J
iget-wide v0, p1, Lcom/pinguo/album/exif/Rational;->mDenominator:J
iput-wide v0, p0, Lcom/pinguo/album/exif/Rational;->mDenominator:J
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
if-nez p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-ne p0, p1, :cond_9
move v1, v2
goto :goto_4
:cond_9
instance-of v3, p1, Lcom/pinguo/album/exif/Rational;
if-eqz v3, :cond_4
move-object v0, p1
check-cast v0, Lcom/pinguo/album/exif/Rational;
iget-wide v3, p0, Lcom/pinguo/album/exif/Rational;->mNumerator:J
iget-wide v5, v0, Lcom/pinguo/album/exif/Rational;->mNumerator:J
cmp-long v3, v3, v5
if-nez v3, :cond_4
iget-wide v3, p0, Lcom/pinguo/album/exif/Rational;->mDenominator:J
iget-wide v5, v0, Lcom/pinguo/album/exif/Rational;->mDenominator:J
cmp-long v3, v3, v5
if-nez v3, :cond_4
move v1, v2
goto :goto_4
.end method
.method public getDenominator()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/album/exif/Rational;->mDenominator:J
return-wide v0
.end method
.method public getNumerator()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/album/exif/Rational;->mNumerator:J
return-wide v0
.end method
.method public toDouble()D
.registers 5
iget-wide v0, p0, Lcom/pinguo/album/exif/Rational;->mNumerator:J
long-to-double v0, v0
iget-wide v2, p0, Lcom/pinguo/album/exif/Rational;->mDenominator:J
long-to-double v2, v2
div-double/2addr v0, v2
return-wide v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
iget-wide v1, p0, Lcom/pinguo/album/exif/Rational;->mNumerator:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/pinguo/album/exif/Rational;->mDenominator:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.class public Lcom/google/zxing/ResultPoint;
.super Ljava/lang/Object;
.source "ResultPoint.java"
.field private final x:F
.field private final y:F
.method public constructor <init>(FF)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/ResultPoint;->x:F
iput p2, p0, Lcom/google/zxing/ResultPoint;->y:F
return-void
.end method
.method private static crossProductZ(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
.registers 8
iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F
iget v1, p1, Lcom/google/zxing/ResultPoint;->y:F
iget v2, p2, Lcom/google/zxing/ResultPoint;->x:F
sub-float/2addr v2, v0
iget v3, p0, Lcom/google/zxing/ResultPoint;->y:F
sub-float/2addr v3, v1
mul-float/2addr v2, v3
iget v3, p2, Lcom/google/zxing/ResultPoint;->y:F
sub-float/2addr v3, v1
iget v4, p0, Lcom/google/zxing/ResultPoint;->x:F
sub-float/2addr v4, v0
mul-float/2addr v3, v4
sub-float/2addr v2, v3
return v2
.end method
.method public static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
.registers 6
iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F
iget v1, p0, Lcom/google/zxing/ResultPoint;->y:F
iget v2, p1, Lcom/google/zxing/ResultPoint;->x:F
iget v3, p1, Lcom/google/zxing/ResultPoint;->y:F
invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F
move-result v0
return v0
.end method
.method public static orderBestPatterns([Lcom/google/zxing/ResultPoint;)V
.registers 13
const/4 v11, 0x2
const/4 v10, 0x1
const/4 v9, 0x0
aget-object v7, p0, v9
aget-object v8, p0, v10
invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v5
aget-object v7, p0, v10
aget-object v8, p0, v11
invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v0
aget-object v7, p0, v9
aget-object v8, p0, v11
invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v6
cmpl-float v7, v0, v5
if-ltz v7, :cond_3c
cmpl-float v7, v0, v6
if-ltz v7, :cond_3c
aget-object v2, p0, v9
aget-object v1, p0, v10
aget-object v3, p0, v11
:goto_29
invoke-static {v1, v2, v3}, Lcom/google/zxing/ResultPoint;->crossProductZ(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
move-result v7
const/4 v8, 0x0
cmpg-float v7, v7, v8
if-gez v7, :cond_35
move-object v4, v1
move-object v1, v3
move-object v3, v4
:cond_35
aput-object v1, p0, v9
aput-object v2, p0, v10
aput-object v3, p0, v11
return-void
:cond_3c
cmpl-float v7, v6, v0
if-ltz v7, :cond_4b
cmpl-float v7, v6, v5
if-ltz v7, :cond_4b
aget-object v2, p0, v10
aget-object v1, p0, v9
aget-object v3, p0, v11
goto :goto_29
:cond_4b
aget-object v2, p0, v11
aget-object v1, p0, v9
aget-object v3, p0, v10
goto :goto_29
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/zxing/ResultPoint;
if-eqz v2, :cond_19
move-object v0, p1
check-cast v0, Lcom/google/zxing/ResultPoint;
iget v2, p0, Lcom/google/zxing/ResultPoint;->x:F
iget v3, v0, Lcom/google/zxing/ResultPoint;->x:F
cmpl-float v2, v2, v3
if-nez v2, :cond_19
iget v2, p0, Lcom/google/zxing/ResultPoint;->y:F
iget v3, v0, Lcom/google/zxing/ResultPoint;->y:F
cmpl-float v2, v2, v3
if-nez v2, :cond_19
const/4 v1, 0x1
:cond_19
return v1
.end method
.method public final getX()F
.registers 2
iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F
return v0
.end method
.method public final getY()F
.registers 2
iget v0, p0, Lcom/google/zxing/ResultPoint;->y:F
return v0
.end method
.method public final hashCode()I
.registers 3
iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F
invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/zxing/ResultPoint;->y:F
invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x19
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const/16 v1, 0x28
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/google/zxing/ResultPoint;->x:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const/16 v1, 0x2c
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/google/zxing/ResultPoint;->y:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const/16 v1, 0x29
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
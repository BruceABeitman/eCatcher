.class public Lcom/google/zxing/o;
.super Ljava/lang/Object;
.source "ResultPoint.java"
.field public final a:F
.field public final b:F
.method public constructor <init>(FF)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/o;->a:F
iput p2, p0, Lcom/google/zxing/o;->b:F
return-void
.end method
.method public static a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
.registers 6
iget v0, p0, Lcom/google/zxing/o;->a:F
iget v1, p0, Lcom/google/zxing/o;->b:F
iget v2, p1, Lcom/google/zxing/o;->a:F
iget v3, p1, Lcom/google/zxing/o;->b:F
invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/b/a/a;->a(FFFF)F
move-result v0
return v0
.end method
.method public static a([Lcom/google/zxing/o;)V
.registers 12
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v7, 0x0
aget-object v0, p0, v7
aget-object v1, p0, v8
invoke-static {v0, v1}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v0
aget-object v1, p0, v8
aget-object v2, p0, v9
invoke-static {v1, v2}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v1
aget-object v2, p0, v7
aget-object v3, p0, v9
invoke-static {v2, v3}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v2
cmpl-float v3, v1, v0
if-ltz v3, :cond_4b
cmpl-float v3, v1, v2
if-ltz v3, :cond_4b
aget-object v1, p0, v7
aget-object v2, p0, v8
aget-object v0, p0, v9
:goto_29
iget v3, v1, Lcom/google/zxing/o;->a:F
iget v4, v1, Lcom/google/zxing/o;->b:F
iget v5, v0, Lcom/google/zxing/o;->a:F
sub-float/2addr v5, v3
iget v6, v2, Lcom/google/zxing/o;->b:F
sub-float/2addr v6, v4
mul-float/2addr v5, v6
iget v6, v0, Lcom/google/zxing/o;->b:F
sub-float v4, v6, v4
iget v6, v2, Lcom/google/zxing/o;->a:F
sub-float v3, v6, v3
mul-float/2addr v3, v4
sub-float v3, v5, v3
const/4 v4, 0x0
cmpg-float v3, v3, v4
if-gez v3, :cond_61
:goto_44
aput-object v0, p0, v7
aput-object v1, p0, v8
aput-object v2, p0, v9
return-void
:cond_4b
cmpl-float v1, v2, v1
if-ltz v1, :cond_5a
cmpl-float v0, v2, v0
if-ltz v0, :cond_5a
aget-object v1, p0, v8
aget-object v2, p0, v7
aget-object v0, p0, v9
goto :goto_29
:cond_5a
aget-object v1, p0, v9
aget-object v2, p0, v7
aget-object v0, p0, v8
goto :goto_29
:cond_61
move-object v10, v0
move-object v0, v2
move-object v2, v10
goto :goto_44
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/google/zxing/o;
if-eqz v1, :cond_18
check-cast p1, Lcom/google/zxing/o;
iget v1, p0, Lcom/google/zxing/o;->a:F
iget v2, p1, Lcom/google/zxing/o;->a:F
cmpl-float v1, v1, v2
if-nez v1, :cond_18
iget v1, p0, Lcom/google/zxing/o;->b:F
iget v2, p1, Lcom/google/zxing/o;->b:F
cmpl-float v1, v1, v2
if-nez v1, :cond_18
const/4 v0, 0x1
:cond_18
return v0
.end method
.method public final hashCode()I
.registers 3
iget v0, p0, Lcom/google/zxing/o;->a:F
invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/zxing/o;->b:F
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
iget v1, p0, Lcom/google/zxing/o;->a:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const/16 v1, 0x2c
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/google/zxing/o;->b:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const/16 v1, 0x29
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
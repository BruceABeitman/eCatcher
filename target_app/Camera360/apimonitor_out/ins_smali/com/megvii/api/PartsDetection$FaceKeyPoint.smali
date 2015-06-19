.class public Lcom/megvii/api/PartsDetection$FaceKeyPoint;
.super Ljava/lang/Object;
.source "PartsDetection.java"
.field  keyPoint:[Landroid/graphics/PointF;
.method public constructor <init>([I)V
.registers 7
const/4 v4, 0x5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_12
array-length v2, p1
const/16 v3, 0xb
if-ne v2, v3, :cond_12
new-array v2, v4, [Landroid/graphics/PointF;
iput-object v2, p0, Lcom/megvii/api/PartsDetection$FaceKeyPoint;->keyPoint:[Landroid/graphics/PointF;
const/4 v0, 0x0
:goto_10
if-lt v0, v4, :cond_13
:cond_12
return-void
:cond_13
new-instance v1, Landroid/graphics/PointF;
mul-int/lit8 v2, v0, 0x2
add-int/lit8 v2, v2, 0x1
aget v2, p1, v2
int-to-float v2, v2
mul-int/lit8 v3, v0, 0x2
add-int/lit8 v3, v3, 0x2
aget v3, p1, v3
int-to-float v3, v3
invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V
iget-object v2, p0, Lcom/megvii/api/PartsDetection$FaceKeyPoint;->keyPoint:[Landroid/graphics/PointF;
aput-object v1, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
.end method
.method public getKeyPoint()[Landroid/graphics/PointF;
.registers 2
iget-object v0, p0, Lcom/megvii/api/PartsDetection$FaceKeyPoint;->keyPoint:[Landroid/graphics/PointF;
return-object v0
.end method
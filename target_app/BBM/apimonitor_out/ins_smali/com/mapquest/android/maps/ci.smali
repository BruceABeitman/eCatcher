.class public abstract Lcom/mapquest/android/maps/ci;
.super Ljava/lang/Object;
.source "TouchEventHandler.java"
.implements Lcom/mapquest/android/maps/cl;
.field final synthetic a:Lcom/mapquest/android/maps/ch;
.method public constructor <init>(Lcom/mapquest/android/maps/ch;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/ci;->a:Lcom/mapquest/android/maps/ch;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/util/ArrayList;)Landroid/graphics/PointF;
.registers 10
const/high16 v8, 0x4000
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v6
move v1, v2
move v3, v2
move v4, v2
move v5, v2
:goto_b
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/PointF;
iget v7, v0, Landroid/graphics/PointF;->x:F
cmpl-float v7, v5, v7
if-gtz v7, :cond_21
cmpl-float v7, v5, v2
if-nez v7, :cond_23
:cond_21
iget v5, v0, Landroid/graphics/PointF;->x:F
:cond_23
iget v7, v0, Landroid/graphics/PointF;->x:F
cmpg-float v7, v4, v7
if-ltz v7, :cond_2d
cmpl-float v7, v4, v2
if-nez v7, :cond_2f
:cond_2d
iget v4, v0, Landroid/graphics/PointF;->x:F
:cond_2f
iget v7, v0, Landroid/graphics/PointF;->y:F
cmpl-float v7, v3, v7
if-gtz v7, :cond_39
cmpl-float v7, v3, v2
if-nez v7, :cond_3b
:cond_39
iget v3, v0, Landroid/graphics/PointF;->y:F
:cond_3b
iget v7, v0, Landroid/graphics/PointF;->y:F
cmpg-float v7, v1, v7
if-ltz v7, :cond_45
cmpl-float v7, v1, v2
if-nez v7, :cond_54
:cond_45
iget v0, v0, Landroid/graphics/PointF;->y:F
:goto_47
move v1, v0
goto :goto_b
:cond_49
add-float v0, v4, v5
div-float/2addr v0, v8
add-float/2addr v1, v3
div-float/2addr v1, v8
new-instance v2, Landroid/graphics/PointF;
invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V
return-object v2
:cond_54
move v0, v1
goto :goto_47
.end method
.method protected static a(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V
.registers 5
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_4
array-length v1, p1
if-ge v0, v1, :cond_12
new-instance v1, Landroid/graphics/PointF;
invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_12
const/4 v0, 0x0
move v1, v0
:goto_14
array-length v0, p1
if-ge v1, v0, :cond_33
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/PointF;
aget-object v2, p1, v1
iget v2, v2, Landroid/graphics/PointF;->x:F
iput v2, v0, Landroid/graphics/PointF;->x:F
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/PointF;
aget-object v2, p1, v1
iget v2, v2, Landroid/graphics/PointF;->y:F
iput v2, v0, Landroid/graphics/PointF;->y:F
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_33
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
:goto_39
array-length v1, p1
if-lt v0, v1, :cond_42
invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v0, v0, -0x1
goto :goto_39
:cond_42
return-void
.end method
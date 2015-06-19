.class  Lcom/pinguo/lib/util/CollectionTools$c;
.super Ljava/lang/Object;
.source "CollectionTools.java"
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;
.field  h:I
.field  w:I
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/pinguo/lib/util/CollectionTools$c;->w:I
iput p2, p0, Lcom/pinguo/lib/util/CollectionTools$c;->h:I
return-void
.end method
.method public compare(Landroid/graphics/Point;Landroid/graphics/Point;)I
.registers 7
iget v2, p1, Landroid/graphics/Point;->x:I
iget v3, p2, Landroid/graphics/Point;->y:I
add-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/lib/util/CollectionTools$c;->w:I
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/lib/util/CollectionTools$c;->h:I
sub-int/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v0
iget v2, p2, Landroid/graphics/Point;->x:I
iget v3, p2, Landroid/graphics/Point;->y:I
add-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/lib/util/CollectionTools$c;->w:I
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/lib/util/CollectionTools$c;->h:I
sub-int/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v1
if-ne v0, v1, :cond_22
const/4 v2, 0x0
:goto_21
return v2
:cond_22
if-le v0, v1, :cond_26
const/4 v2, 0x1
goto :goto_21
:cond_26
const/4 v2, -0x1
goto :goto_21
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Landroid/graphics/Point;
check-cast p2, Landroid/graphics/Point;
invoke-virtual {p0, p1, p2}, Lcom/pinguo/lib/util/CollectionTools$c;->compare(Landroid/graphics/Point;Landroid/graphics/Point;)I
move-result v0
return v0
.end method
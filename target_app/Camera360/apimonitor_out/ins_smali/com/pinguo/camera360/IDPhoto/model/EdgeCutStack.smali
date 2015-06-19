.class public Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;
.super Ljava/lang/Object;
.source "EdgeCutStack.java"
.field private static final MAX_STACK_SIZE:I = 0x7fffffff
.field private mEdgeCuts:Ljava/util/LinkedList;
.field private mOrgBitmap:Landroid/graphics/Bitmap;
.field private mOrgCanvas:Landroid/graphics/Canvas;
.field private mPaint:Landroid/graphics/Paint;
.field private mStackIndex:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
return-void
.end method
.method private ensurePaint()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
if-nez v0, :cond_32
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x4
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
:cond_32
return-void
.end method
.method private getNext()Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->canNext()Z
move-result v1
if-eqz v1, :cond_17
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
:cond_17
return-object v0
.end method
.method private getPrev()Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->canPrev()Z
move-result v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
:cond_17
return-object v0
.end method
.method private push(Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;)V
.registers 7
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
:goto_6
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
move-result v3
if-lt v1, v3, :cond_4c
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v3, v2}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->ensurePaint()V
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
move-result v3
const v4, 0x7fffffff
if-lt v3, v4, :cond_3c
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgCanvas:Landroid/graphics/Canvas;
if-eqz v3, :cond_5e
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z
move-result v3
if-eqz v3, :cond_5e
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgCanvas:Landroid/graphics/Canvas;
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v3, v4}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
:goto_3c
:cond_3c
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v3, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
move-result v3
add-int/lit8 v3, v3, -0x1
iput v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
return-void
:cond_4c
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
if-le v1, v3, :cond_5b
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_5b
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_5e
const-string/jumbo v3, "cx"
const-string/jumbo v4, "can\'t change org bitmap,fail..fail"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3c
.end method
.method private refreshBitmap()Landroid/graphics/Bitmap;
.registers 8
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgBitmap:Landroid/graphics/Bitmap;
if-eqz v4, :cond_2b
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgBitmap:Landroid/graphics/Bitmap;
sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
const/4 v6, 0x1
invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
move-result-object v3
new-instance v0, Landroid/graphics/Canvas;
invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->ensurePaint()V
const/4 v2, 0x0
:goto_16
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
if-le v2, v4, :cond_1b
:goto_1a
return-object v3
:cond_1b
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v1, v0, v4}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
add-int/lit8 v2, v2, 0x1
goto :goto_16
:cond_2b
const/4 v3, 0x0
goto :goto_1a
.end method
.method public canNext()Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
const/4 v1, -0x1
if-lt v0, v1, :cond_13
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x2
if-gt v0, v1, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public canPrev()Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
if-ltz v0, :cond_12
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-gt v0, v1, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public discardAll()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
return-void
.end method
.method public doneGetAll()Ljava/util/LinkedList;
.registers 4
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
const/4 v0, 0x0
:goto_6
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mStackIndex:I
if-le v0, v2, :cond_b
return-object v1
:cond_b
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mEdgeCuts:Ljava/util/LinkedList;
invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method public next()Landroid/graphics/Bitmap;
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->getNext()Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
move-result-object v1
if-eqz v1, :cond_c
const/4 v0, 0x0
:try_start_7
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->refreshBitmap()Landroid/graphics/Bitmap;
:try_end_a
.catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_a} :catch_e
move-result-object v0
:goto_b
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_b
:catch_e
move-exception v2
goto :goto_b
.end method
.method public prev()Landroid/graphics/Bitmap;
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->getPrev()Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
move-result-object v1
if-eqz v1, :cond_c
const/4 v0, 0x0
:try_start_7
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->refreshBitmap()Landroid/graphics/Bitmap;
:try_end_a
.catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_a} :catch_e
move-result-object v0
:goto_b
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_b
:catch_e
move-exception v2
goto :goto_b
.end method
.method public push(Landroid/graphics/Path;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V
.registers 6
new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;-><init>(Landroid/graphics/Path;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->push(Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;)V
return-void
.end method
.method public push(Landroid/graphics/PointF;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V
.registers 6
new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;-><init>(Landroid/graphics/PointF;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->push(Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;)V
return-void
.end method
.method public setOrgBitmap(Landroid/graphics/Bitmap;)V
.registers 4
const/4 v0, 0x0
if-eqz p1, :cond_12
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgBitmap:Landroid/graphics/Bitmap;
new-instance v0, Landroid/graphics/Canvas;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgBitmap:Landroid/graphics/Bitmap;
invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgCanvas:Landroid/graphics/Canvas;
:goto_e
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->discardAll()V
return-void
:cond_12
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgBitmap:Landroid/graphics/Bitmap;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->mOrgCanvas:Landroid/graphics/Canvas;
goto :goto_e
.end method
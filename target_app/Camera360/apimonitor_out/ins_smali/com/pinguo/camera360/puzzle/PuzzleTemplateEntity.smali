.class public Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;
.super Ljava/lang/Object;
.source "PuzzleTemplateEntity.java"
.field private static final TAG:Ljava/lang/String; = "PuzzleTemplateEntity"
.field public id:J
.field private mCacheItemList:Ljava/util/LinkedList;
.field private mContext:Landroid/content/Context;
.field private mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
.field private mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$OnRequestLayoutListener;
.field private mOutHeightInTemplate:F
.field private mOutWidthInTemplate:F
.field private mPathList:Ljava/util/ArrayList;
.field public final mPuzzleItemList:Ljava/util/LinkedList;
.field private mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
.field private mRadioInTemplate:F
.field private mRadioReal:F
.field public needLayout:Z
.field public outHeightReal:F
.field public outWidthReal:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/high16 v1, -0x4080
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z
sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->PUZZLING:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mRadioInTemplate:F
iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mRadioReal:F
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mCacheItemList:Ljava/util/LinkedList;
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mContext:Landroid/content/Context;
return-void
.end method
.method private addPuzzleItem()Lcom/pinguo/camera360/puzzle/PuzzleItem;
.registers 4
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mCacheItemList:Ljava/util/LinkedList;
invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/puzzle/PuzzleItem;
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mCacheItemList:Ljava/util/LinkedList;
invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
:goto_17
return-object v1
:cond_18
new-instance v1, Lcom/pinguo/camera360/puzzle/PuzzleItem;
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mContext:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;-><init>(Landroid/content/Context;)V
goto :goto_17
.end method
.method private drawForOutput(Landroid/graphics/Canvas;Lcom/pinguo/camera360/puzzle/PuzzleSystem;Ljava/util/List;)V
.registers 7
const/4 v1, -0x1
invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V
invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_f
return-void
:cond_f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->loadForOutputType()V
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->releaseBitmap()V
goto :goto_8
.end method
.method private drawForPuzzle(Landroid/graphics/Canvas;Lcom/pinguo/camera360/puzzle/PuzzleSystem;Ljava/util/List;)V
.registers 7
const/4 v1, -0x1
invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V
invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_f
return-void
:cond_f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->draw(Landroid/graphics/Canvas;)V
goto :goto_8
.end method
.method private layout(Lcom/pinguo/camera360/puzzle/PuzzleSystem;Ljava/util/LinkedList;)V
.registers 28
const/16 v21, 0x0
move/from16 v0, v21
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z
const-string/jumbo v21, "PuzzleTemplateEntity"
const-string/jumbo v22, "--- >layout start "
invoke-static/range {v21 .. v22}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->getItems()Ljava/util/List;
move-result-object v9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
move-object/from16 v21, v0
sget-object v22, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->OUTPUT:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
move-object/from16 v0, v21
move-object/from16 v1, v22
if-ne v0, v1, :cond_8e
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outWidthReal:F
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outHeightReal:F
:goto_31
invoke-interface {v9}, Ljava/util/List;->size()I
move-result v8
invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I
move-result v20
move-object/from16 v0, p0
invoke-direct {v0, v8}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->removePuzzleItem(I)V
const-string/jumbo v21, "PuzzleTemplateEntity"
new-instance v22, Ljava/lang/StringBuilder;
const-string/jumbo v23, "     layouting , itemCount = "
invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v22
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v22
const-string/jumbo v23, ", canvas size = "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, v22
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v22
const-string/jumbo v23, " x "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, v22
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v22
const-string/jumbo v23, "\uff0c mDrawType = "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
move-object/from16 v23, v0
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-static/range {v21 .. v22}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v6, 0x0
:goto_82
if-lt v6, v8, :cond_a1
:goto_84
const-string/jumbo v21, "PuzzleTemplateEntity"
const-string/jumbo v22, "--- >layout end ... "
invoke-static/range {v21 .. v22}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_8e
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->width:I
move/from16 v21, v0
move/from16 v0, v21
int-to-float v5, v0
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->height:I
move/from16 v21, v0
move/from16 v0, v21
int-to-float v4, v0
goto :goto_31
:cond_a1
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z
move/from16 v21, v0
if-eqz v21, :cond_b3
const-string/jumbo v21, "PuzzleTemplateEntity"
const-string/jumbo v22, "     layouting break, relayout"
invoke-static/range {v21 .. v22}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_84
:cond_b3
invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
new-instance v11, Ljava/util/ArrayList;
invoke-virtual {v14}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->getPositions()Ljava/util/List;
move-result-object v21
move-object/from16 v0, v21
invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
move/from16 v0, v20
if-lt v6, v0, :cond_14e
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->addPuzzleItem()Lcom/pinguo/camera360/puzzle/PuzzleItem;
move-result-object v15
move-object/from16 v0, p2
invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:goto_d1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v21
check-cast v21, Ljava/lang/String;
move-object/from16 v0, v21
invoke-virtual {v15, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setPhotoPath(Ljava/lang/String;)V
new-instance v17, Ljava/util/ArrayList;
invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v21
:goto_ed
invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-nez v22, :cond_158
:goto_f3
const/16 v21, 0x0
move-object/from16 v0, v17
move/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v19
check-cast v19, Landroid/graphics/PointF;
const/16 v21, 0x2
move-object/from16 v0, v17
move/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v16
check-cast v16, Landroid/graphics/PointF;
const-string/jumbo v21, "PuzzleTemplateEntity"
new-instance v22, Ljava/lang/StringBuilder;
const-string/jumbo v23, "     layouting , item type = "
invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v14}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->getType()I
move-result v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v22
const-string/jumbo v23, ", point count = "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
move-result v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v22
const-string/jumbo v23, ", photoPath = "
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual {v15}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getPhotoPath()Ljava/lang/String;
move-result-object v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-static/range {v21 .. v22}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v14}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->getType()I
move-result v21
packed-switch v21, :pswitch_data_23c
:pswitch_14a
:goto_14a
add-int/lit8 v6, v6, 0x1
goto/16 :goto_82
:cond_14e
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/puzzle/PuzzleItem;
goto/16 :goto_d1
:cond_158
invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Landroid/graphics/PointF;
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z
move/from16 v22, v0
if-eqz v22, :cond_170
const-string/jumbo v21, "PuzzleTemplateEntity"
const-string/jumbo v22, "     layouting break, relayout : restorePoint "
invoke-static/range {v21 .. v22}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f3
:cond_170
new-instance v10, Landroid/graphics/PointF;
iget v0, v12, Landroid/graphics/PointF;->x:F
move/from16 v22, v0
iget v0, v12, Landroid/graphics/PointF;->y:F
move/from16 v23, v0
move/from16 v0, v22
move/from16 v1, v23
invoke-direct {v10, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V
invoke-static {v10, v5, v4}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->restorePoint(Landroid/graphics/PointF;FF)V
move-object/from16 v0, v17
invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_ed
:pswitch_18b
const/16 v21, 0x0
move-object/from16 v0, v21
invoke-virtual {v15, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setOverRidePath(Landroid/graphics/Path;)V
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/PointF;->x:F
move/from16 v21, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/PointF;->y:F
move/from16 v22, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/PointF;->x:F
move/from16 v23, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/PointF;->y:F
move/from16 v24, v0
move/from16 v0, v21
move/from16 v1, v22
move/from16 v2, v23
move/from16 v3, v24
invoke-virtual {v15, v0, v1, v2, v3}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->layout(FFFF)V
goto :goto_14a
:pswitch_1b6
new-instance v13, Landroid/graphics/Path;
invoke-direct {v13}, Landroid/graphics/Path;-><init>()V
const-string/jumbo v21, "PuzzleTemplateEntity"
new-instance v22, Ljava/lang/StringBuilder;
const-string/jumbo v23, "   >> moveTo start : type "
invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v14}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->getType()I
move-result v23
invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v22
invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v22
invoke-static/range {v21 .. v22}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v7, 0x0
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v21
:goto_1da
invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-nez v22, :cond_1e8
invoke-virtual {v13}, Landroid/graphics/Path;->close()V
invoke-virtual {v15, v13}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setOverRidePath(Landroid/graphics/Path;)V
goto/16 :goto_14a
:cond_1e8
invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Landroid/graphics/PointF;
if-nez v7, :cond_22b
iget v0, v12, Landroid/graphics/PointF;->x:F
move/from16 v22, v0
iget v0, v12, Landroid/graphics/PointF;->y:F
move/from16 v23, v0
move/from16 v0, v22
move/from16 v1, v23
invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V
:goto_1ff
const-string/jumbo v22, "PuzzleTemplateEntity"
new-instance v23, Ljava/lang/StringBuilder;
const-string/jumbo v24, "   >> ==moveTo point = "
invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v0, v12, Landroid/graphics/PointF;->x:F
move/from16 v24, v0
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v23
const-string/jumbo v24, ":"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
iget v0, v12, Landroid/graphics/PointF;->y:F
move/from16 v24, v0
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-static/range {v22 .. v23}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v7, v7, 0x1
goto :goto_1da
:cond_22b
iget v0, v12, Landroid/graphics/PointF;->x:F
move/from16 v22, v0
iget v0, v12, Landroid/graphics/PointF;->y:F
move/from16 v23, v0
move/from16 v0, v22
move/from16 v1, v23
invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V
goto :goto_1ff
nop
:pswitch_data_23c
.packed-switch 0x0
:pswitch_18b
:pswitch_14a
:pswitch_1b6
.end packed-switch
.end method
.method private removePuzzleItem(I)V
.registers 6
const/4 v0, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_e
return-void
:cond_e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/puzzle/PuzzleItem;
if-lt v0, p1, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mCacheItemList:Ljava/util/LinkedList;
invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->clear()V
:cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method public static restorePoint(Landroid/graphics/PointF;FF)V
.registers 4
iget v0, p0, Landroid/graphics/PointF;->x:F
mul-float/2addr v0, p1
iput v0, p0, Landroid/graphics/PointF;->x:F
iget v0, p0, Landroid/graphics/PointF;->y:F
mul-float/2addr v0, p2
iput v0, p0, Landroid/graphics/PointF;->y:F
return-void
.end method
.method public draw(Landroid/graphics/Canvas;Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;
invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->drawForPuzzle(Landroid/graphics/Canvas;Lcom/pinguo/camera360/puzzle/PuzzleSystem;Ljava/util/List;)V
return-void
.end method
.method public declared-synchronized drawOutPutPhoto(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)Landroid/graphics/Bitmap;
.registers 10
monitor-enter p0
:try_start_1
sget-object v5, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->OUTPUT:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->setDrawType(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;)V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
iget v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outWidthReal:F
iget v6, p1, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->width:I
int-to-float v6, v6
div-float v4, v5, v6
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;
invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_18
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_37
invoke-direct {p0, p1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->layout(Lcom/pinguo/camera360/puzzle/PuzzleSystem;Ljava/util/LinkedList;)V
iget v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outWidthReal:F
float-to-int v5, v5
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outHeightReal:F
float-to-int v6, v6
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v5, Landroid/graphics/Canvas;
invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-direct {p0, v5, p1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->drawForOutput(Landroid/graphics/Canvas;Lcom/pinguo/camera360/puzzle/PuzzleSystem;Ljava/util/List;)V
:try_end_35
.catchall {:try_start_1 .. :try_end_35} :catchall_4f
monitor-exit p0
return-object v0
:cond_37
:try_start_37
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/puzzle/PuzzleItem;
iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mContext:Landroid/content/Context;
invoke-virtual {v3, v6, v4}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->copy(Landroid/content/Context;F)Lcom/pinguo/camera360/puzzle/PuzzleItem;
move-result-object v1
sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->OUTPUT:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
invoke-virtual {v1, v6}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setDrawType(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;)V
invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->releaseBitmap()V
:try_end_4e
.catchall {:try_start_37 .. :try_end_4e} :catchall_4f
goto :goto_18
:catchall_4f
move-exception v5
monitor-exit p0
throw v5
.end method
.method public filesExist()Z
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;
invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_e
const/4 v2, 0x1
:goto_d
return v2
:cond_e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/puzzle/PuzzleItem;
new-instance v0, Ljava/io/File;
invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getPhotoPath()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_6
const/4 v2, 0x0
goto :goto_d
.end method
.method public getDrawType()Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
return-object v0
.end method
.method public getLayoutRadioInTemplate()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mRadioInTemplate:F
return v0
.end method
.method public getRealRadio()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mRadioReal:F
return v0
.end method
.method public declared-synchronized layout(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->layout(Lcom/pinguo/camera360/puzzle/PuzzleSystem;Ljava/util/LinkedList;)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized loadPhotoForPuzzleMode()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_1c
move-result v2
if-nez v2, :cond_f
monitor-exit p0
return-void
:cond_f
:try_start_f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->releaseBitmap()V
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->loadPhoto()V
:try_end_1b
.catchall {:try_start_f .. :try_end_1b} :catchall_1c
goto :goto_7
:catchall_1c
move-exception v1
monitor-exit p0
throw v1
.end method
.method public releaseAllBitmap()V
.registers 4
const-string/jumbo v1, "PuzzleTemplateEntity"
const-string/jumbo v2, " release all bit map in template !!!!!!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_16
return-void
:cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->releaseBitmap()V
goto :goto_f
.end method
.method public replacePhoto(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v0, 0x0
:goto_7
if-lt v0, v1, :cond_a
return-void
:cond_a
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1b
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method public setDrawType(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
return-void
.end method
.method public setPhotoPath(Ljava/util/ArrayList;)V
.registers 3
if-eqz p1, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
:goto_f
return-void
:cond_10
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z
goto :goto_f
.end method
.method public setRealLayoutRadio(F)V
.registers 5
iput p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mRadioReal:F
iget v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outWidthReal:F
div-float/2addr v0, p1
iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outHeightReal:F
const-string/jumbo v0, "PuzzleTemplateEntity"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setRealLayoutRadio ,  size ="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outWidthReal:F
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " x "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outHeightReal:F
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", radio =  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mRadioReal:F
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setRequstListener(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$OnRequestLayoutListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$OnRequestLayoutListener;
return-void
.end method
.method public setTemplate(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
.registers 10
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->getWidth()I
move-result v3
invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->getRatio()Ljava/lang/Double;
move-result-object v2
const-string/jumbo v4, "PuzzleTemplateEntity"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "setTemplate , tempalte info : outPut width ="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", radio =  "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-gtz v3, :cond_2f
const/16 v3, 0x384
:cond_2f
invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
move-result-wide v4
const-wide/16 v6, 0x0
cmpg-double v4, v4, v6
if-gtz v4, :cond_3f
const-wide/high16 v4, 0x3fe8
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
:cond_3f
invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->getRatio()Ljava/lang/Double;
move-result-object v2
int-to-double v4, v3
invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
move-result-wide v6
div-double v0, v4, v6
double-to-float v4, v0
iput v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mOutHeightInTemplate:F
int-to-float v4, v3
iput v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mOutWidthInTemplate:F
invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F
move-result v4
iput v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mRadioInTemplate:F
int-to-float v4, v3
iput v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->outWidthReal:F
const-string/jumbo v4, "PuzzleTemplateEntity"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "init tempalte size ,  size ="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mOutWidthInTemplate:F
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " x "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mOutHeightInTemplate:F
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", radio =  "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x1
iput-boolean v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$OnRequestLayoutListener;
invoke-interface {v4, p0}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$OnRequestLayoutListener;->onRequestLayout(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;)V
return-void
.end method
.method public swapPath(Ljava/lang/String;Ljava/lang/String;)V
.registers 9
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
const/4 v1, -0x1
const/4 v2, -0x1
const/4 v0, 0x0
:goto_9
if-lt v0, v4, :cond_17
if-eq v1, v2, :cond_16
if-ltz v1, :cond_16
if-ltz v2, :cond_16
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
invoke-static {v5, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V
:cond_16
return-void
:cond_17
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPathList:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_29
move v1, v0
:cond_26
:goto_26
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_29
invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_26
move v2, v0
goto :goto_26
.end method
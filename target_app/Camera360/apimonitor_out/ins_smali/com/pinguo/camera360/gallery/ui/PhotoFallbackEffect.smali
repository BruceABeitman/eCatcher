.class public Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
.super Lcom/pinguo/camera360/gallery/anim/Animation;
.source "PhotoFallbackEffect.java"
.implements Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;
.field private static final ANIM_DURATION:I = 0x12c
.field private static final ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;
.field private mList:Ljava/util/ArrayList;
.field private mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
.field private mProgress:F
.field private mSource:Landroid/graphics/RectF;
.field private mTarget:Landroid/graphics/RectF;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
const/high16 v1, 0x3fc0
invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/anim/Animation;-><init>()V
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
const/16 v0, 0x12c
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->setDuration(I)V
sget-object v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-void
.end method
.method private drawEntry(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;)V
.registers 20
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
invoke-virtual {v12}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->isLoaded()Z
move-result v12
if-nez v12, :cond_b
:goto_a
return-void
:cond_b
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
invoke-virtual {v12}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->getWidth()I
move-result v11
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
invoke-virtual {v12}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->getHeight()I
move-result v7
move-object/from16 v0, p2
iget-object v9, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;
move-object/from16 v0, p2
iget-object v5, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mProgress:F
invoke-virtual {v5}, Landroid/graphics/Rect;->height()I
move-result v12
int-to-float v12, v12
invoke-virtual {v9}, Landroid/graphics/Rect;->width()I
move-result v13
invoke-virtual {v9}, Landroid/graphics/Rect;->height()I
move-result v14
invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I
move-result v13
int-to-float v13, v13
div-float v6, v12, v13
mul-float v12, v6, v8
const/high16 v13, 0x3f80
const/high16 v14, 0x3f80
sub-float/2addr v14, v8
mul-float/2addr v13, v14
add-float v10, v12, v13
invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I
move-result v12
int-to-float v12, v12
mul-float/2addr v12, v8
invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I
move-result v13
int-to-float v13, v13
const/high16 v14, 0x3f80
sub-float/2addr v14, v8
mul-float/2addr v13, v14
add-float v3, v12, v13
invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I
move-result v12
int-to-float v12, v12
mul-float/2addr v12, v8
invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I
move-result v13
int-to-float v13, v13
const/high16 v14, 0x3f80
sub-float/2addr v14, v8
mul-float/2addr v13, v14
add-float v4, v12, v13
invoke-virtual {v9}, Landroid/graphics/Rect;->height()I
move-result v12
int-to-float v12, v12
mul-float v1, v12, v10
invoke-virtual {v9}, Landroid/graphics/Rect;->width()I
move-result v12
int-to-float v12, v12
mul-float v2, v12, v10
if-le v11, v7, :cond_14e
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
const/high16 v13, 0x4000
div-float v13, v1, v13
sub-float v13, v3, v13
const/high16 v14, 0x4000
div-float v14, v1, v14
sub-float v14, v4, v14
const/high16 v15, 0x4000
div-float v15, v1, v15
add-float/2addr v15, v3
const/high16 v16, 0x4000
div-float v16, v1, v16
add-float v16, v16, v4
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
sub-int v13, v11, v7
div-int/lit8 v13, v13, 0x2
int-to-float v13, v13
const/4 v14, 0x0
add-int v15, v11, v7
div-int/lit8 v15, v15, 0x2
int-to-float v15, v15
int-to-float v0, v7
move/from16 v16, v0
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
move-object/from16 v0, p1
invoke-interface {v0, v12, v13, v14}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
const/4 v12, 0x1
move-object/from16 v0, p1
invoke-interface {v0, v12}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
const/high16 v12, 0x3f80
sub-float/2addr v12, v8
move-object/from16 v0, p1
invoke-interface {v0, v12}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyAlpha(F)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
const/high16 v13, 0x4000
div-float v13, v2, v13
sub-float v13, v3, v13
const/high16 v14, 0x4000
div-float v14, v1, v14
sub-float v14, v4, v14
const/high16 v15, 0x4000
div-float v15, v1, v15
sub-float v15, v3, v15
const/high16 v16, 0x4000
div-float v16, v1, v16
add-float v16, v16, v4
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
const/4 v13, 0x0
const/4 v14, 0x0
sub-int v15, v11, v7
div-int/lit8 v15, v15, 0x2
int-to-float v15, v15
int-to-float v0, v7
move/from16 v16, v0
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
move-object/from16 v0, p1
invoke-interface {v0, v12, v13, v14}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
const/high16 v13, 0x4000
div-float v13, v1, v13
add-float/2addr v13, v3
const/high16 v14, 0x4000
div-float v14, v1, v14
sub-float v14, v4, v14
const/high16 v15, 0x4000
div-float v15, v2, v15
add-float/2addr v15, v3
const/high16 v16, 0x4000
div-float v16, v1, v16
add-float v16, v16, v4
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
add-int v13, v11, v7
div-int/lit8 v13, v13, 0x2
int-to-float v13, v13
const/4 v14, 0x0
int-to-float v15, v11
int-to-float v0, v7
move/from16 v16, v0
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
move-object/from16 v0, p1
invoke-interface {v0, v12, v13, v14}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
goto/16 :goto_a
:cond_14e
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
const/high16 v13, 0x4000
div-float v13, v2, v13
sub-float v13, v3, v13
const/high16 v14, 0x4000
div-float v14, v2, v14
sub-float v14, v4, v14
const/high16 v15, 0x4000
div-float v15, v2, v15
add-float/2addr v15, v3
const/high16 v16, 0x4000
div-float v16, v2, v16
add-float v16, v16, v4
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
const/4 v13, 0x0
sub-int v14, v7, v11
div-int/lit8 v14, v14, 0x2
int-to-float v14, v14
int-to-float v15, v11
add-int v16, v7, v11
div-int/lit8 v16, v16, 0x2
move/from16 v0, v16
int-to-float v0, v0
move/from16 v16, v0
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
move-object/from16 v0, p1
invoke-interface {v0, v12, v13, v14}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
const/4 v12, 0x1
move-object/from16 v0, p1
invoke-interface {v0, v12}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
const/high16 v12, 0x3f80
sub-float/2addr v12, v8
move-object/from16 v0, p1
invoke-interface {v0, v12}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyAlpha(F)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
const/high16 v13, 0x4000
div-float v13, v2, v13
sub-float v13, v3, v13
const/high16 v14, 0x4000
div-float v14, v1, v14
sub-float v14, v4, v14
const/high16 v15, 0x4000
div-float v15, v2, v15
add-float/2addr v15, v3
const/high16 v16, 0x4000
div-float v16, v2, v16
sub-float v16, v4, v16
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
const/4 v13, 0x0
const/4 v14, 0x0
int-to-float v15, v11
sub-int v16, v7, v11
div-int/lit8 v16, v16, 0x2
move/from16 v0, v16
int-to-float v0, v0
move/from16 v16, v0
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
move-object/from16 v0, p1
invoke-interface {v0, v12, v13, v14}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
const/high16 v13, 0x4000
div-float v13, v2, v13
sub-float v13, v3, v13
const/high16 v14, 0x4000
div-float v14, v2, v14
add-float/2addr v14, v4
const/high16 v15, 0x4000
div-float v15, v2, v15
add-float/2addr v15, v3
const/high16 v16, 0x4000
div-float v16, v1, v16
add-float v16, v16, v4
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
const/4 v13, 0x0
add-int v14, v11, v7
div-int/lit8 v14, v14, 0x2
int-to-float v14, v14
int-to-float v15, v11
int-to-float v0, v7
move/from16 v16, v0
invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p2
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;
move-object/from16 v0, p1
invoke-interface {v0, v12, v13, v14}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
goto/16 :goto_a
.end method
.method public acceptSlot(I)Z
.registers 6
const/4 v1, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v2
:goto_7
if-lt v1, v2, :cond_b
const/4 v3, 0x1
:goto_a
return v3
:cond_b
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->index:I
if-ne v3, p1, :cond_19
const/4 v3, 0x0
goto :goto_a
:cond_19
add-int/lit8 v1, v1, 0x1
goto :goto_7
.end method
.method public addEntry(Lcom/pinguo/camera360/gallery/data/Path;Landroid/graphics/Rect;Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;
invoke-direct {v1, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;-><init>(Lcom/pinguo/camera360/gallery/data/Path;Landroid/graphics/Rect;Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Z
.registers 9
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->get()J
move-result-wide v4
invoke-virtual {p0, v4, v5}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->calculate(J)Z
move-result v2
const/4 v1, 0x0
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v3
:goto_f
if-lt v1, v3, :cond_12
return v2
:cond_12
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;
iget v4, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->index:I
if-gez v4, :cond_21
:goto_1e
add-int/lit8 v1, v1, 0x1
goto :goto_f
:cond_21
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
iget-object v6, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->path:Lcom/pinguo/camera360/gallery/data/Path;
invoke-interface {v5, v6}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;->getItemIndex(Lcom/pinguo/camera360/gallery/data/Path;)I
move-result v5
invoke-interface {v4, v5}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;->getPosition(I)Landroid/graphics/Rect;
move-result-object v4
iput-object v4, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->drawEntry(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;)V
goto :goto_1e
.end method
.method public getEntry(Lcom/pinguo/camera360/gallery/data/Path;)Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;
.registers 6
const/4 v1, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v2
:goto_7
if-lt v1, v2, :cond_b
const/4 v0, 0x0
:cond_a
return-object v0
:cond_b
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->path:Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v3, p1}, Lcom/pinguo/camera360/gallery/data/Path;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_a
add-int/lit8 v1, v1, 0x1
goto :goto_7
.end method
.method protected onCalculate(F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mProgress:F
return-void
.end method
.method public setPositionProvider(Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;)V
.registers 7
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
if-eqz v3, :cond_f
const/4 v1, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v2
:goto_d
if-lt v1, v2, :cond_10
:cond_f
return-void
:cond_10
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->path:Lcom/pinguo/camera360/gallery/data/Path;
invoke-interface {v3, v4}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;->getItemIndex(Lcom/pinguo/camera360/gallery/data/Path;)I
move-result v3
iput v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->index:I
add-int/lit8 v1, v1, 0x1
goto :goto_d
.end method
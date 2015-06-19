.class public Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;
.super Lcom/pinguo/album/views/layout/ThumbnailLayout;
.source "ThumbnailExpandLayout.java"
.field private static final TAG:Ljava/lang/String; = "ThumbnailExpandLayout"
.field protected mSortTags:Ljava/util/ArrayList;
.field protected mVisibleTagEnd:I
.field protected mVisibleTagStart:I
.method public constructor <init>(Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/album/views/layout/ThumbnailLayout;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
return-void
.end method
.method private computeSortTagOffsets()V
.registers 9
const/4 v7, 0x0
iget-object v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v5
iget-object v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSet$SortTag;
iput v7, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I
const/4 v6, 0x1
if-ne v5, v6, :cond_19
iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailCount:I
iput v6, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I
:cond_18
return-void
:cond_19
const/4 v3, 0x1
:goto_1a
if-ge v3, v5, :cond_18
iget-object v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;
iget-object v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
add-int/lit8 v7, v3, -0x1
invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/data/MediaSet$SortTag;
iget v6, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
iget v7, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I
add-int/2addr v6, v7
iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mUnitCount:I
rem-int v4, v6, v7
iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mUnitCount:I
sub-int/2addr v6, v4
iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mUnitCount:I
rem-int/2addr v6, v7
iget v7, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I
add-int/2addr v6, v7
iput v6, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I
iget v6, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
iget v7, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
sub-int/2addr v6, v7
iput v6, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I
add-int/lit8 v6, v5, -0x1
if-ne v3, v6, :cond_54
iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailCount:I
iget v7, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
sub-int/2addr v6, v7
iput v6, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I
:cond_54
add-int/lit8 v3, v3, 0x1
goto :goto_1a
.end method
.method private initLayoutParameters(II)V
.registers 32
new-instance v22, Ljava/util/ArrayList;
invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
move-object/from16 v22, v0
if-eqz v22, :cond_1f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
move-result v22
if-nez v22, :cond_20
:goto_1f
:cond_1f
return-void
:cond_20
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->computeSortTagOffsets()V
const/4 v12, 0x0
const/4 v13, 0x1
const/16 v21, 0x0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailWidth:I
move/from16 v22, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailGap:I
move/from16 v23, v0
add-int v6, v22, v23
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailHeight:I
move/from16 v22, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailGap:I
move/from16 v23, v0
add-int v11, v22, v23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
move-object/from16 v22, v0
move-object/from16 v0, v22
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelHeight:I
move/from16 v22, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailGap:I
move/from16 v23, v0
add-int v17, v22, v23
const/4 v7, 0x0
:goto_5c
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailCount:I
move/from16 v22, v0
move/from16 v0, v22
if-lt v7, v0, :cond_d6
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mWidth:I
move/from16 v22, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mHeight:I
move/from16 v23, v0
move/from16 v0, v22
move/from16 v1, v23
if-le v0, v1, :cond_1af
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mWidth:I
move/from16 v18, v0
:goto_7e
const/4 v7, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v23
:goto_89
invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z
move-result v22
if-nez v22, :cond_1c5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
move-result v22
if-lez v22, :cond_1f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
move-object/from16 v22, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
move-object/from16 v23, v0
invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I
move-result v23
add-int/lit8 v23, v23, -0x1
invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
move-object/from16 v0, v22
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->rect:Landroid/graphics/Rect;
move-object/from16 v22, v0
move-object/from16 v0, v22
iget v0, v0, Landroid/graphics/Rect;->bottom:I
move/from16 v22, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
move-object/from16 v23, v0
move-object/from16 v0, v23
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->footer_height:I
move/from16 v23, v0
add-int v22, v22, v23
move-object/from16 v0, p0
move/from16 v1, v22
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->setContentLength(I)V
goto/16 :goto_1f
:cond_d6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
move-result v22
const/16 v23, 0x1
move/from16 v0, v22
move/from16 v1, v23
if-eq v0, v1, :cond_192
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
move-result v22
move/from16 v0, v22
if-ge v13, v0, :cond_120
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/pinguo/album/data/MediaSet$SortTag;
move-object/from16 v0, v16
iget v0, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
move/from16 v22, v0
move/from16 v0, v22
if-ge v7, v0, :cond_176
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
move-object/from16 v22, v0
add-int/lit8 v23, v13, -0x1
invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/pinguo/album/data/MediaSet$SortTag;
move-object/from16 v0, v22
iget v12, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I
:cond_120
:goto_120
add-int v8, v7, v12
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mUnitCount:I
move/from16 v22, v0
div-int v10, v8, v22
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mUnitCount:I
move/from16 v22, v0
mul-int v22, v22, v10
sub-int v5, v8, v22
mul-int v19, v5, v6
mul-int v22, v10, v11
add-int v23, v13, v21
mul-int v23, v23, v17
add-int v20, v22, v23
new-instance v9, Landroid/graphics/Rect;
invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailWidth:I
move/from16 v22, v0
add-int v22, v22, v19
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailHeight:I
move/from16 v23, v0
add-int v23, v23, v20
move/from16 v0, v19
move/from16 v1, v20
move/from16 v2, v22
move/from16 v3, v23
invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
move-object/from16 v22, v0
new-instance v23, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
const/16 v24, 0x0
move-object/from16 v0, v23
move/from16 v1, v24
invoke-direct {v0, v1, v9}, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;-><init>(ZLandroid/graphics/Rect;)V
invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v7, v7, 0x1
goto/16 :goto_5c
:cond_176
move-object/from16 v0, v16
iget v12, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->offsetSlotCount:I
move-object/from16 v0, v16
iget-boolean v0, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z
move/from16 v22, v0
if-nez v22, :cond_18f
add-int/lit8 v13, v13, 0x1
:goto_184
move-object/from16 v0, v16
iget-boolean v0, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z
move/from16 v22, v0
if-eqz v22, :cond_120
add-int/lit8 v21, v21, 0x1
goto :goto_120
:cond_18f
add-int/lit8 v13, v13, 0x2
goto :goto_184
:cond_192
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
move-object/from16 v22, v0
const/16 v23, 0x0
invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/pinguo/album/data/MediaSet$SortTag;
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailCount:I
move/from16 v23, v0
move/from16 v0, v23
move-object/from16 v1, v22
iput v0, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I
const/4 v12, 0x0
goto/16 :goto_120
:cond_1af
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mHeight:I
move/from16 v22, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
move-object/from16 v23, v0
move-object/from16 v0, v23
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->header_bar_height:I
move/from16 v23, v0
add-int v18, v22, v23
goto/16 :goto_7e
:cond_1c5
invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/pinguo/album/data/MediaSet$SortTag;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
move-object/from16 v22, v0
move-object/from16 v0, v16
iget v0, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
move/from16 v24, v0
move-object/from16 v0, v22
move/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
move-object/from16 v0, v22
iget-object v9, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->rect:Landroid/graphics/Rect;
move-object/from16 v0, v16
iget-boolean v0, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z
move/from16 v22, v0
if-nez v22, :cond_226
new-instance v22, Landroid/graphics/Rect;
iget v0, v9, Landroid/graphics/Rect;->left:I
move/from16 v24, v0
iget v0, v9, Landroid/graphics/Rect;->top:I
move/from16 v25, v0
sub-int v25, v25, v17
iget v0, v9, Landroid/graphics/Rect;->left:I
move/from16 v26, v0
add-int v26, v26, v18
iget v0, v9, Landroid/graphics/Rect;->top:I
move/from16 v27, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
move-object/from16 v28, v0
move-object/from16 v0, v28
iget v0, v0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->thumbnailGap:I
move/from16 v28, v0
sub-int v27, v27, v28
move-object/from16 v0, v22
move/from16 v1, v24
move/from16 v2, v25
move/from16 v3, v26
move/from16 v4, v27
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
move-object/from16 v0, v22
move-object/from16 v1, v16
iput-object v0, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
goto/16 :goto_89
:cond_226
new-instance v22, Landroid/graphics/Rect;
iget v0, v9, Landroid/graphics/Rect;->left:I
move/from16 v24, v0
iget v0, v9, Landroid/graphics/Rect;->top:I
move/from16 v25, v0
mul-int/lit8 v26, v17, 0x3
sub-int v25, v25, v26
iget v0, v9, Landroid/graphics/Rect;->left:I
move/from16 v26, v0
add-int v26, v26, v18
iget v0, v9, Landroid/graphics/Rect;->top:I
move/from16 v27, v0
sub-int v27, v27, v17
move-object/from16 v0, v22
move/from16 v1, v24
move/from16 v2, v25
move/from16 v3, v26
move/from16 v4, v27
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
move-object/from16 v0, v22
move-object/from16 v1, v16
iput-object v0, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
goto/16 :goto_89
.end method
.method private setVisibleTagRange(II)V
.registers 6
iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagStart:I
if-ne p1, v0, :cond_9
iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagEnd:I
if-ne p2, v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
if-ge p1, p2, :cond_1d
iput p1, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagStart:I
iput p2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagEnd:I
:goto_f
iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;
iget v1, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagStart:I
iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagEnd:I
invoke-interface {v0, v1, v2}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->onVisibleTagRangeChanged(II)V
goto :goto_8
:cond_1d
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagEnd:I
iput v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagStart:I
goto :goto_f
.end method
.method public getSortTags()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
return-object v0
.end method
.method public getTagIndexByPosition(FF)I
.registers 10
const/4 v4, -0x1
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
if-nez v5, :cond_7
move v2, v4
:goto_6
return v2
:cond_7
invoke-static {p1}, Ljava/lang/Math;->round(F)I
move-result v5
add-int/lit8 v0, v5, 0x0
invoke-static {p2}, Ljava/lang/Math;->round(F)I
move-result v5
iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mScrollPosition:I
add-int v1, v5, v6
const/4 v2, 0x0
:goto_16
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-lt v2, v5, :cond_20
move v2, v4
goto :goto_6
:cond_20
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/data/MediaSet$SortTag;
iget-boolean v5, v3, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z
if-eqz v5, :cond_2f
:cond_2c
add-int/lit8 v2, v2, 0x1
goto :goto_16
:cond_2f
iget-object v5, v3, Lcom/pinguo/album/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mWidth:I
div-int/lit8 v6, v6, 0x2
sub-int v6, v0, v6
invoke-virtual {v5, v6, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v5
if-eqz v5, :cond_2c
goto :goto_6
.end method
.method public getThumbnailIndexByPosition(FF)I
.registers 8
invoke-static {p1}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/lit8 v0, v3, 0x0
invoke-static {p2}, Ljava/lang/Math;->round(F)I
move-result v3
iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mScrollPosition:I
add-int v1, v3, v4
const/4 v2, 0x0
:goto_f
iget-object v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-lt v2, v3, :cond_19
const/4 v2, -0x1
:cond_18
return v2
:cond_19
iget-object v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iget-object v3, v3, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->rect:Landroid/graphics/Rect;
invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v3
if-nez v3, :cond_18
add-int/lit8 v2, v2, 0x1
goto :goto_f
.end method
.method public getThumbnailPos()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
return-object v0
.end method
.method public getThumbnailRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_13
iget-object v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iget-object p2, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->rect:Landroid/graphics/Rect;
:goto_12
return-object p2
:cond_13
new-instance p2, Landroid/graphics/Rect;
invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V
goto :goto_12
.end method
.method public getVisibleTagEnd()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagEnd:I
return v0
.end method
.method public getVisibleTagStart()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mVisibleTagStart:I
return v0
.end method
.method protected initThumbnailParameters()V
.registers 7
new-instance v1, Lcom/pinguo/lib/util/DebugHelper;
invoke-direct {v1}, Lcom/pinguo/lib/util/DebugHelper;-><init>()V
const-string/jumbo v2, "initThumbnailParameters"
invoke-virtual {v1, v2}, Lcom/pinguo/lib/util/DebugHelper;->start(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mWidth:I
iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mHeight:I
if-le v2, v3, :cond_58
iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
iget v0, v2, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->rowsLand:I
:goto_15
iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
iget v2, v2, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->thumbnailGap:I
iput v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailGap:I
const/4 v2, 0x1
iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mWidth:I
add-int/lit8 v4, v0, -0x1
iget v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailGap:I
mul-int/2addr v4, v5
sub-int/2addr v3, v4
div-int/2addr v3, v0
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v2
iput v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailWidth:I
iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
if-nez v2, :cond_5d
iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailWidth:I
iget-object v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
iget v3, v3, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelHeight:I
add-int/2addr v2, v3
iput v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailHeight:I
:goto_38
iput v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mUnitCount:I
iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;
if-eqz v2, :cond_47
iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mRenderer:Lcom/pinguo/album/views/ThumbnailView$Renderer;
iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailWidth:I
iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailHeight:I
invoke-interface {v2, v3, v4}, Lcom/pinguo/album/views/ThumbnailView$Renderer;->onThumbnailSizeChanged(II)V
:cond_47
iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mHeight:I
iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mWidth:I
invoke-direct {p0, v2, v3}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->initLayoutParameters(II)V
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->updateVisibleTagRange()V
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->updateVisibleThumbnailRange()V
invoke-virtual {v1}, Lcom/pinguo/lib/util/DebugHelper;->end()V
return-void
:cond_58
iget-object v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
iget v0, v2, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->rowsPort:I
goto :goto_15
:cond_5d
iget v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailWidth:I
iput v2, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailHeight:I
goto :goto_38
.end method
.method public setScrollPosition(I)V
.registers 3
iget v0, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mScrollPosition:I
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput p1, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mScrollPosition:I
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->updateVisibleTagRange()V
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->updateVisibleThumbnailRange()V
goto :goto_4
.end method
.method public setSortTags(Ljava/util/ArrayList;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
return-void
.end method
.method protected updateVisibleTagRange()V
.registers 9
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
if-eqz v5, :cond_c
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-nez v5, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mScrollPosition:I
const/4 v4, 0x0
const/4 v0, 0x0
const/4 v1, 0x0
const/4 v2, 0x0
:goto_13
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-lt v2, v5, :cond_27
if-nez v1, :cond_23
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
:cond_23
invoke-direct {p0, v4, v0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->setVisibleTagRange(II)V
goto :goto_c
:cond_27
if-nez v1, :cond_41
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/album/data/MediaSet$SortTag;
iget-object v5, v5, Lcom/pinguo/album/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
iget-object v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
iget v6, v6, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelHeight:I
mul-int/lit8 v6, v6, 0x3
sub-int v6, v3, v6
if-lt v5, v6, :cond_41
move v4, v2
const/4 v1, 0x1
:cond_41
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/album/data/MediaSet$SortTag;
iget-object v5, v5, Lcom/pinguo/album/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->bottom:I
iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mHeight:I
add-int/2addr v6, v3
iget-object v7, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
iget v7, v7, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelHeight:I
mul-int/lit8 v7, v7, 0x3
add-int/2addr v6, v7
if-gt v5, v6, :cond_5b
add-int/lit8 v0, v2, 0x1
:cond_5b
add-int/lit8 v2, v2, 0x1
goto :goto_13
.end method
.method protected updateVisibleThumbnailRange()V
.registers 9
iget v3, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mScrollPosition:I
const/4 v4, 0x0
const/4 v0, 0x0
const/4 v1, 0x0
const/4 v2, 0x0
:goto_6
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-lt v2, v5, :cond_16
if-nez v1, :cond_12
iget v4, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailCount:I
:cond_12
invoke-virtual {p0, v4, v0}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->setVisibleRange(II)V
return-void
:cond_16
if-nez v1, :cond_2c
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iget-object v5, v5, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->rect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailHeight:I
sub-int v6, v3, v6
if-lt v5, v6, :cond_2c
move v4, v2
const/4 v1, 0x1
:cond_2c
iget-object v5, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailPositions:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iget-object v5, v5, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->rect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->bottom:I
iget v6, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mHeight:I
add-int/2addr v6, v3
iget v7, p0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;->mThumbnailHeight:I
add-int/2addr v6, v7
if-gt v5, v6, :cond_42
add-int/lit8 v0, v2, 0x1
:cond_42
add-int/lit8 v2, v2, 0x1
goto :goto_6
.end method
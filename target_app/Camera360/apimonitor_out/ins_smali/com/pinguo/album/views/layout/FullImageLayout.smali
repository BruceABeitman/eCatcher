.class public Lcom/pinguo/album/views/layout/FullImageLayout;
.super Ljava/lang/Object;
.source "FullImageLayout.java"
.field private static final ANIM_KIND_CAPTURE:I = 0x9
.field private static final ANIM_KIND_DELETE:I = 0x8
.field private static final ANIM_KIND_FLING:I = 0x6
.field private static final ANIM_KIND_FLING_X:I = 0x7
.field private static final ANIM_KIND_NONE:I = -0x1
.field private static final ANIM_KIND_OPENING:I = 0x5
.field private static final ANIM_KIND_SCALE:I = 0x1
.field private static final ANIM_KIND_SCROLL:I = 0x0
.field private static final ANIM_KIND_SLIDE:I = 0x3
.field private static final ANIM_KIND_SNAPBACK:I = 0x2
.field private static final ANIM_KIND_ZOOM:I = 0x4
.field private static final ANIM_TIME:[I = null
.field private static final BOX_MAX:I = 0x3
.field public static final CAPTURE_ANIMATION_TIME:I = 0x2bc
.field private static final CENTER_OUT_INDEX:[I = null
.field private static final DEFAULT_DELETE_ANIMATION_DURATION:I = 0xc8
.field private static final FILM_MODE_LANDSCAPE_HEIGHT:F = 0.7f
.field private static final FILM_MODE_LANDSCAPE_WIDTH:F = 0.7f
.field private static final FILM_MODE_PORTRAIT_HEIGHT:F = 0.48f
.field private static final FILM_MODE_PORTRAIT_WIDTH:F = 0.7f
.field private static final HORIZONTAL_SLACK:I = 0x0
.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8
.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1
.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2
.field public static final IMAGE_AT_TOP_EDGE:I = 0x4
.field private static final IMAGE_GAP:I = 0x0
.field private static final LAST_ANIMATION:J = -0x2L
.field private static final MAX_DELETE_ANIMATION_DURATION:I = 0x190
.field private static final NO_ANIMATION:J = -0x1L
.field private static final SCALE_LIMIT:F = 4.0f
.field private static final SCALE_MAX_EXTRA:F = 1.4f
.field private static final SCALE_MIN_EXTRA:F = 0.7f
.field public static final SNAPBACK_ANIMATION_TIME:I = 0x258
.field private static final TAG:Ljava/lang/String;
.field private mBoundBottom:I
.field private mBoundLeft:I
.field private mBoundRight:I
.field private mBoundTop:I
.field private mBoxes:Lcom/pinguo/album/utils/RangeArray;
.field private mConstrained:Z
.field private mConstrainedFrame:Landroid/graphics/Rect;
.field private mExtraScalingRange:Z
.field private mFilmMode:Z
.field private mFilmRatio:Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;
.field private mFilmScroller:Landroid/widget/Scroller;
.field private mFocusX:F
.field private mFocusY:F
.field private mGaps:Lcom/pinguo/album/utils/RangeArray;
.field private mHasNext:Z
.field private mHasPrev:Z
.field private mInScale:Z
.field private mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;
.field private mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
.field private mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
.field  mPopFromTop:Z
.field private mRects:Lcom/pinguo/album/utils/RangeArray;
.field private mTempBoxes:Lcom/pinguo/album/utils/RangeArray;
.field private mTempGaps:Lcom/pinguo/album/utils/RangeArray;
.field private mViewH:I
.field private mViewW:I
.method static constructor <clinit>()V
.registers 6
const/16 v5, 0x12c
const-class v2, Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
sput-object v2, Lcom/pinguo/album/views/layout/FullImageLayout;->TAG:Ljava/lang/String;
const/16 v2, 0xa
new-array v2, v2, [I
const/4 v3, 0x2
const/16 v4, 0x258
aput v4, v2, v3
const/4 v3, 0x3
const/16 v4, 0x190
aput v4, v2, v3
const/4 v3, 0x4
aput v5, v2, v3
const/4 v3, 0x5
aput v5, v2, v3
const/16 v3, 0x9
const/16 v4, 0x2bc
aput v4, v2, v3
sput-object v2, Lcom/pinguo/album/views/layout/FullImageLayout;->ANIM_TIME:[I
const/4 v2, 0x7
new-array v2, v2, [I
sput-object v2, Lcom/pinguo/album/views/layout/FullImageLayout;->CENTER_OUT_INDEX:[I
const/16 v2, 0x10
invoke-static {v2}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(I)I
move-result v2
sput v2, Lcom/pinguo/album/views/layout/FullImageLayout;->IMAGE_GAP:I
const/16 v2, 0xc
invoke-static {v2}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(I)I
move-result v2
sput v2, Lcom/pinguo/album/views/layout/FullImageLayout;->HORIZONTAL_SLACK:I
const/4 v0, 0x0
:goto_3c
sget-object v2, Lcom/pinguo/album/views/layout/FullImageLayout;->CENTER_OUT_INDEX:[I
array-length v2, v2
if-lt v0, v2, :cond_42
return-void
:cond_42
add-int/lit8 v2, v0, 0x1
div-int/lit8 v1, v2, 0x2
and-int/lit8 v2, v0, 0x1
if-nez v2, :cond_4b
neg-int v1, v1
:cond_4b
sget-object v2, Lcom/pinguo/album/views/layout/FullImageLayout;->CENTER_OUT_INDEX:[I
aput v1, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_3c
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/album/views/layout/FullImageLayout$Listener;)V
.registers 9
const/4 v5, 0x2
const/4 v1, 0x0
const/4 v4, 0x0
const/4 v3, 0x3
const/4 v2, -0x3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mExtraScalingRange:Z
iput-boolean v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
const/16 v1, 0x4b0
iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
const/16 v1, 0x4b0
iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrained:Z
new-instance v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-direct {v1, p0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout;Lcom/pinguo/album/views/layout/FullImageLayout$Platform;)V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
new-instance v1, Lcom/pinguo/album/utils/RangeArray;
invoke-direct {v1, v2, v3}, Lcom/pinguo/album/utils/RangeArray;-><init>(II)V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
new-instance v1, Lcom/pinguo/album/utils/RangeArray;
invoke-direct {v1, v2, v5}, Lcom/pinguo/album/utils/RangeArray;-><init>(II)V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
new-instance v1, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;
invoke-direct {v1, p0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout;Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;)V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmRatio:Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;
new-instance v1, Lcom/pinguo/album/utils/RangeArray;
invoke-direct {v1, v2, v3}, Lcom/pinguo/album/utils/RangeArray;-><init>(II)V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempBoxes:Lcom/pinguo/album/utils/RangeArray;
new-instance v1, Lcom/pinguo/album/utils/RangeArray;
invoke-direct {v1, v2, v5}, Lcom/pinguo/album/utils/RangeArray;-><init>(II)V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempGaps:Lcom/pinguo/album/utils/RangeArray;
new-instance v1, Lcom/pinguo/album/utils/RangeArray;
invoke-direct {v1, v2, v3}, Lcom/pinguo/album/utils/RangeArray;-><init>(II)V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
iput-object p2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
new-instance v1, Lcom/pinguo/album/views/utils/FlingScroller;
invoke-direct {v1}, Lcom/pinguo/album/views/utils/FlingScroller;-><init>()V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
new-instance v1, Landroid/widget/Scroller;
invoke-direct {v1, p1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->initPlatform()V
const/4 v0, -0x3
:goto_63
if-le v0, v3, :cond_69
const/4 v0, -0x3
:goto_66
if-lt v0, v3, :cond_83
return-void
:cond_69
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
new-instance v2, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
invoke-direct {v2, p0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout;Lcom/pinguo/album/views/layout/FullImageLayout$Box;)V
invoke-virtual {v1, v0, v2}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->initBox(I)V
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {v1, v0, v2}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_63
:cond_83
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
new-instance v2, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
invoke-direct {v2, p0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout;Lcom/pinguo/album/views/layout/FullImageLayout$Gap;)V
invoke-virtual {v1, v0, v2}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->initGap(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_66
.end method
.method static synthetic access$0(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mInScale:Z
return v0
.end method
.method static synthetic access$10(Lcom/pinguo/album/views/layout/FullImageLayout;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
return v0
.end method
.method static synthetic access$11(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrained:Z
return v0
.end method
.method static synthetic access$12(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/album/views/layout/FullImageLayout;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
return v0
.end method
.method static synthetic access$14(Lcom/pinguo/album/views/layout/FullImageLayout;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
return v0
.end method
.method static synthetic access$15()[I
.registers 1
sget-object v0, Lcom/pinguo/album/views/layout/FullImageLayout;->ANIM_TIME:[I
return-object v0
.end method
.method static synthetic access$16(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/widget/Scroller;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
return-object v0
.end method
.method static synthetic access$17(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasNext:Z
return v0
.end method
.method static synthetic access$18(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasPrev:Z
return v0
.end method
.method static synthetic access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/utils/RangeArray;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
return-object v0
.end method
.method static synthetic access$20(Lcom/pinguo/album/views/layout/FullImageLayout;F)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(F)V
return-void
.end method
.method static synthetic access$21(Lcom/pinguo/album/views/layout/FullImageLayout;F)Z
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->viewTallerThanScaledImage(F)Z
move-result v0
return v0
.end method
.method static synthetic access$22(Lcom/pinguo/album/views/layout/FullImageLayout;)F
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusY:F
return v0
.end method
.method static synthetic access$23(Lcom/pinguo/album/views/layout/FullImageLayout;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
return v0
.end method
.method static synthetic access$24(Lcom/pinguo/album/views/layout/FullImageLayout;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mExtraScalingRange:Z
return v0
.end method
.method static synthetic access$4(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
return v0
.end method
.method static synthetic access$5()I
.registers 1
sget v0, Lcom/pinguo/album/views/layout/FullImageLayout;->HORIZONTAL_SLACK:I
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/album/views/layout/FullImageLayout;FI)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(FI)V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/album/views/layout/FullImageLayout;F)Z
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->viewWiderThanScaledImage(F)Z
move-result v0
return v0
.end method
.method static synthetic access$8(Lcom/pinguo/album/views/layout/FullImageLayout;)F
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusX:F
return v0
.end method
.method static synthetic access$9(Lcom/pinguo/album/views/layout/FullImageLayout;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
return v0
.end method
.method private calculateStableBound(F)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(FI)V
return-void
.end method
.method private calculateStableBound(FI)V
.registers 9
const/4 v5, 0x0
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v5}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
invoke-direct {p0, v0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;F)I
move-result v2
invoke-direct {p0, v0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;F)I
move-result v1
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
add-int/lit8 v3, v3, 0x1
div-int/lit8 v3, v3, 0x2
add-int/lit8 v4, v2, 0x1
div-int/lit8 v4, v4, 0x2
sub-int/2addr v3, v4
sub-int/2addr v3, p2
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
div-int/lit8 v3, v2, 0x2
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
div-int/lit8 v4, v4, 0x2
sub-int/2addr v3, v4
add-int/2addr v3, p2
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
add-int/lit8 v3, v3, 0x1
div-int/lit8 v3, v3, 0x2
add-int/lit8 v4, v1, 0x1
div-int/lit8 v4, v4, 0x2
sub-int/2addr v3, v4
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
div-int/lit8 v3, v1, 0x2
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
div-int/lit8 v4, v4, 0x2
sub-int/2addr v3, v4
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->viewTallerThanScaledImage(F)Z
move-result v3
if-eqz v3, :cond_49
iput v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
iput v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
:cond_49
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->viewWiderThanScaledImage(F)Z
move-result v3
if-eqz v3, :cond_57
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v3, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
:cond_57
return-void
.end method
.method private canScroll()Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-wide v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
const-wide/16 v5, -0x1
cmp-long v3, v3, v5
if-nez v3, :cond_13
:goto_12
:sswitch_12
return v1
:cond_13
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
sparse-switch v3, :sswitch_data_1a
move v1, v2
goto :goto_12
:sswitch_data_1a
.sparse-switch
0x0 -> :sswitch_12
0x6 -> :sswitch_12
0x7 -> :sswitch_12
.end sparse-switch
.end method
.method private convertBoxToRect(I)V
.registers 12
iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v8, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v8, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/graphics/Rect;
iget v8, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget-object v9, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v9, v9, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I
add-int/2addr v8, v9
iget v9, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
div-int/lit8 v9, v9, 0x2
add-int v7, v8, v9
invoke-direct {p0, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v5
invoke-direct {p0, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v3
if-nez p1, :cond_48
iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v8, v8, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iget v9, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
div-int/lit8 v9, v9, 0x2
add-int v6, v8, v9
div-int/lit8 v8, v5, 0x2
sub-int v8, v6, v8
iput v8, v4, Landroid/graphics/Rect;->left:I
iget v8, v4, Landroid/graphics/Rect;->left:I
add-int/2addr v8, v5
iput v8, v4, Landroid/graphics/Rect;->right:I
:goto_3c
div-int/lit8 v8, v3, 0x2
sub-int v8, v7, v8
iput v8, v4, Landroid/graphics/Rect;->top:I
iget v8, v4, Landroid/graphics/Rect;->top:I
add-int/2addr v8, v3
iput v8, v4, Landroid/graphics/Rect;->bottom:I
return-void
:cond_48
if-lez p1, :cond_6b
iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
add-int/lit8 v9, p1, -0x1
invoke-virtual {v8, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Rect;
iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
add-int/lit8 v9, p1, -0x1
invoke-virtual {v8, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iget v8, v0, Landroid/graphics/Rect;->right:I
iget v9, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
add-int/2addr v8, v9
iput v8, v4, Landroid/graphics/Rect;->left:I
iget v8, v4, Landroid/graphics/Rect;->left:I
add-int/2addr v8, v5
iput v8, v4, Landroid/graphics/Rect;->right:I
goto :goto_3c
:cond_6b
iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
add-int/lit8 v9, p1, 0x1
invoke-virtual {v8, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Rect;
iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v8, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iget v8, v0, Landroid/graphics/Rect;->left:I
iget v9, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
sub-int/2addr v8, v9
iput v8, v4, Landroid/graphics/Rect;->right:I
iget v8, v4, Landroid/graphics/Rect;->right:I
sub-int/2addr v8, v5
iput v8, v4, Landroid/graphics/Rect;->left:I
goto :goto_3c
.end method
.method private debugMoveBox([I)V
.registers 7
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "moveBox:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_9
array-length v3, p1
if-lt v0, v3, :cond_16
sget-object v3, Lcom/pinguo/album/views/layout/FullImageLayout;->TAG:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
:cond_16
aget v1, p1, v0
const v3, 0x7fffffff
if-ne v1, v3, :cond_26
const-string/jumbo v3, " N"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_23
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_26
const-string/jumbo v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aget v3, p1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto :goto_23
.end method
.method private dumpRect(I)V
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v2, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Rect;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Rect "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ":"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v2, "("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v2, ") ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v2, "x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/album/views/layout/FullImageLayout;->TAG:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method private dumpState()V
.registers 7
const/4 v5, 0x3
const/4 v0, -0x3
:goto_2
if-lt v0, v5, :cond_c
const/4 v0, 0x0
:goto_5
const/4 v2, 0x7
if-lt v0, v2, :cond_39
const/4 v0, -0x3
:goto_9
if-le v0, v5, :cond_43
return-void
:cond_c
sget-object v3, Lcom/pinguo/album/views/layout/FullImageLayout;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Gap "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v4, ": "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v2, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iget v2, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_39
sget-object v2, Lcom/pinguo/album/views/layout/FullImageLayout;->CENTER_OUT_INDEX:[I
aget v2, v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->dumpRect(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_43
add-int/lit8 v1, v0, 0x1
:goto_45
if-le v1, v5, :cond_4a
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_4a
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v2, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/graphics/Rect;
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/graphics/Rect;
invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
move-result v2
if-eqz v2, :cond_87
sget-object v2, Lcom/pinguo/album/views/layout/FullImageLayout;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "rect "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " and rect "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "intersects!"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_87
add-int/lit8 v1, v1, 0x1
goto :goto_45
.end method
.method private gapToSide(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
.registers 5
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
int-to-float v0, v0
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMinimalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v1
iget v2, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
int-to-float v2, v2
mul-float/2addr v1, v2
sub-float/2addr v0, v1
const/high16 v1, 0x4000
div-float/2addr v0, v1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method private getDefaultGapSize(I)I
.registers 7
iget-boolean v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-eqz v2, :cond_7
sget v2, Lcom/pinguo/album/views/layout/FullImageLayout;->IMAGE_GAP:I
:goto_6
return v2
:cond_7
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v2, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
add-int/lit8 v3, p1, 0x1
invoke-virtual {v2, v3}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
sget v2, Lcom/pinguo/album/views/layout/FullImageLayout;->IMAGE_GAP:I
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->gapToSide(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v3
invoke-direct {p0, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->gapToSide(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v4
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v3
add-int/2addr v2, v3
goto :goto_6
.end method
.method private getMaximalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
.registers 3
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-eqz v0, :cond_9
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMinimalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v0
:goto_8
return v0
:cond_9
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrained:Z
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z
move-result v0
if-nez v0, :cond_1a
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMinimalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v0
goto :goto_8
:cond_1a
const/high16 v0, 0x4080
goto :goto_8
.end method
.method private getMinimalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
.registers 10
const/high16 v4, 0x3f80
const/high16 v0, 0x3f80
iget-boolean v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-nez v5, :cond_50
iget-boolean v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrained:Z
if-eqz v5, :cond_50
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z
move-result v5
if-nez v5, :cond_50
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v5
if-ne p1, v5, :cond_50
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
invoke-virtual {v5}, Landroid/graphics/Rect;->width()I
move-result v3
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
invoke-virtual {v5}, Landroid/graphics/Rect;->height()I
move-result v2
:goto_29
iget-boolean v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-eqz v5, :cond_39
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
if-le v5, v6, :cond_55
const v4, 0x3f333333
const v0, 0x3ef5c28f
:goto_39
:cond_39
int-to-float v5, v3
mul-float/2addr v5, v4
iget v6, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
int-to-float v6, v6
div-float/2addr v5, v6
int-to-float v6, v2
mul-float/2addr v6, v0
iget v7, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
int-to-float v7, v7
div-float/2addr v6, v7
invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F
move-result v1
const/high16 v5, 0x4080
invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F
move-result v5
return v5
:cond_50
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
goto :goto_29
:cond_55
const v4, 0x3f333333
const v0, 0x3f333333
goto :goto_39
.end method
.method private getTargetScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
.registers 6
iget-wide v0, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_b
iget v0, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
:goto_a
return v0
:cond_b
iget v0, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToScale:F
goto :goto_a
.end method
.method private heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
.registers 4
iget v0, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
int-to-float v0, v0
iget v1, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
mul-float/2addr v0, v1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method private heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;F)I
.registers 5
iget v0, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
int-to-float v0, v0
mul-float/2addr v0, p2
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method private initBox(I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mUseViewSize:Z
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMinimalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v1
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMaximalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v1
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F
const/4 v1, 0x0
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
const-wide/16 v1, -0x1
iput-wide v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
const/4 v1, -0x1
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
return-void
.end method
.method private initBox(ILcom/pinguo/album/views/FullImageView$Size;)V
.registers 6
const/4 v2, 0x0
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->width:I
if-eqz v1, :cond_9
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->height:I
if-nez v1, :cond_d
:cond_9
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->initBox(I)V
:goto_c
return-void
:cond_d
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->width:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->height:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
iput-boolean v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mUseViewSize:Z
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMinimalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v1
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMaximalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v1
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F
iput v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
const-wide/16 v1, -0x1
iput-wide v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
const/4 v1, -0x1
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
goto :goto_c
.end method
.method private initGap(I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->getDefaultGapSize(I)I
move-result v1
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mDefaultSize:I
iget v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mDefaultSize:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
const-wide/16 v1, -0x1
iput-wide v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationStartTime:J
return-void
.end method
.method private initGap(II)V
.registers 6
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->getDefaultGapSize(I)I
move-result v1
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mDefaultSize:I
iput p2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
const-wide/16 v1, -0x1
iput-wide v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationStartTime:J
return-void
.end method
.method private initPlatform()V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->updateDefaultXY()V
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v1, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v1, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultY:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
const-wide/16 v1, -0x1
iput-wide v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J
return-void
.end method
.method private static isAlmostEqual(FF)Z
.registers 4
sub-float v0, p0, p1
const/4 v1, 0x0
cmpg-float v1, v0, v1
if-gez v1, :cond_8
neg-float v0, v0
:cond_8
const v1, 0x3ca3d70a
cmpg-float v1, v0, v1
if-gez v1, :cond_11
const/4 v1, 0x1
:goto_10
return v1
:cond_11
const/4 v1, 0x0
goto :goto_10
.end method
.method private layoutAndSetPosition()V
.registers 3
const/4 v0, 0x0
:goto_1
const/4 v1, 0x7
if-lt v0, v1, :cond_5
return-void
:cond_5
sget-object v1, Lcom/pinguo/album/views/layout/FullImageLayout;->CENTER_OUT_INDEX:[I
aget v1, v1, v0
invoke-direct {p0, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->convertBoxToRect(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method private redraw()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->layoutAndSetPosition()V
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
invoke-interface {v0}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->invalidate()V
return-void
.end method
.method private setBoxSize(IIIZ)Z
.registers 10
const/4 v3, 0x0
iget-object v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v4, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-boolean v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mUseViewSize:Z
if-nez v2, :cond_10
if-eqz p4, :cond_10
:cond_f
:goto_f
return v3
:cond_10
iput-boolean p4, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mUseViewSize:Z
iget v4, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
if-ne p2, v4, :cond_1a
iget v4, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
if-eq p3, v4, :cond_f
:cond_1a
if-le p2, p3, :cond_46
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
int-to-float v3, v3
int-to-float v4, p2
div-float v1, v3, v4
:goto_22
iput p2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
iput p3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
if-eqz v2, :cond_2a
if-eqz p4, :cond_2e
:cond_2a
iget-boolean v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-nez v3, :cond_4d
:cond_2e
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMinimalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v3
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
const-wide/16 v3, -0x1
iput-wide v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
:goto_38
if-nez p1, :cond_44
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusX:F
div-float/2addr v3, v1
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusX:F
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusY:F
div-float/2addr v3, v1
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusY:F
:cond_44
const/4 v3, 0x1
goto :goto_f
:cond_46
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
int-to-float v3, v3
int-to-float v4, p3
div-float v1, v3, v4
goto :goto_22
:cond_4d
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
mul-float/2addr v3, v1
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mFromScale:F
mul-float/2addr v3, v1
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mFromScale:F
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToScale:F
mul-float/2addr v3, v1
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToScale:F
goto :goto_38
.end method
.method private snapAndRedraw()V
.registers 4
const/4 v2, 0x3
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-virtual {v1}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->startSnapback()Z
const/4 v0, -0x3
:goto_7
if-le v0, v2, :cond_15
const/4 v0, -0x3
:goto_a
if-lt v0, v2, :cond_23
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmRatio:Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;
invoke-virtual {v1}, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->startSnapback()Z
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->redraw()V
return-void
:cond_15
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
invoke-virtual {v1}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->startSnapback()Z
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_23
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
invoke-virtual {v1}, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->startSnapback()Z
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method private startAnimation(IIFI)Z
.registers 8
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v2, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultY:I
#calls: Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->doAnimation(III)Z
invoke-static {v1, p1, v2, p4}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Platform;III)Z
move-result v1
or-int/2addr v0, v1
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
#calls: Lcom/pinguo/album/views/layout/FullImageLayout$Box;->doAnimation(IFI)Z
invoke-static {v1, p2, p3, p4}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Box;IFI)Z
move-result v1
or-int/2addr v0, v1
if-eqz v0, :cond_1f
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->redraw()V
:cond_1f
return v0
.end method
.method private startOpeningAnimationIfNeeded()Z
.registers 11
const/4 v9, 0x5
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mOpenAnimationRect:Landroid/graphics/Rect;
if-nez v6, :cond_8
:cond_7
:goto_7
return v4
:cond_8
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v6, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-boolean v6, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mUseViewSize:Z
if-nez v6, :cond_7
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mOpenAnimationRect:Landroid/graphics/Rect;
const/4 v6, 0x0
iput-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mOpenAnimationRect:Landroid/graphics/Rect;
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I
move-result v7
iget v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
div-int/lit8 v8, v8, 0x2
sub-int/2addr v7, v8
iput v7, v6, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I
move-result v6
iget v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
div-int/lit8 v7, v7, 0x2
sub-int/2addr v6, v7
iput v6, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
move-result v6
int-to-float v6, v6
iget v7, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
int-to-float v7, v7
div-float/2addr v6, v7
invoke-virtual {v3}, Landroid/graphics/Rect;->height()I
move-result v7
int-to-float v7, v7
iget v8, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
int-to-float v8, v8
div-float/2addr v7, v8
invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F
move-result v6
iput v6, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v6, v6, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
iget v7, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
invoke-direct {p0, v6, v4, v7, v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
const/4 v2, -0x1
:goto_53
if-lt v2, v5, :cond_57
move v4, v5
goto :goto_7
:cond_57
iget-object v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v4, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
iput v4, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
iget v4, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mDefaultSize:I
invoke-virtual {v1, v4, v9}, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->doAnimation(II)Z
add-int/lit8 v2, v2, 0x1
goto :goto_53
.end method
.method private updateScaleAndGapLimit()V
.registers 6
const/4 v4, 0x3
const/4 v2, -0x3
:goto_2
if-le v2, v4, :cond_8
const/4 v2, -0x3
:goto_5
if-lt v2, v4, :cond_1f
return-void
:cond_8
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMinimalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v3
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getMaximalScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v3
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F
add-int/lit8 v2, v2, 0x1
goto :goto_2
:cond_1f
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
invoke-direct {p0, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->getDefaultGapSize(I)I
move-result v3
iput v3, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mDefaultSize:I
add-int/lit8 v2, v2, 0x1
goto :goto_5
.end method
.method private viewTallerThanScaledImage(F)Z
.registers 5
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v0, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
invoke-direct {p0, v0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;F)I
move-result v0
if-lt v2, v0, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
move v0, v1
goto :goto_12
.end method
.method private viewWiderThanScaledImage(F)Z
.registers 5
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v0, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
invoke-direct {p0, v0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;F)I
move-result v0
if-lt v2, v0, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
move v0, v1
goto :goto_12
.end method
.method private widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
.registers 4
iget v0, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
int-to-float v0, v0
iget v1, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
mul-float/2addr v0, v1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method private widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;F)I
.registers 5
iget v0, p1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
int-to-float v0, v0
mul-float/2addr v0, p2
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public advanceAnimation()V
.registers 5
const/4 v3, 0x3
const/4 v0, 0x0
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->advanceAnimation()Z
move-result v2
or-int/2addr v0, v2
const/4 v1, -0x3
:goto_a
if-le v1, v3, :cond_1c
const/4 v1, -0x3
:goto_d
if-lt v1, v3, :cond_2c
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmRatio:Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;
invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->advanceAnimation()Z
move-result v2
or-int/2addr v0, v2
if-eqz v0, :cond_1b
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->redraw()V
:cond_1b
return-void
:cond_1c
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v2, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->advanceAnimation()Z
move-result v2
or-int/2addr v0, v2
add-int/lit8 v1, v1, 0x1
goto :goto_a
:cond_2c
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v2, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->advanceAnimation()Z
move-result v2
or-int/2addr v0, v2
add-int/lit8 v1, v1, 0x1
goto :goto_d
.end method
.method public beginScale(FF)V
.registers 8
const/high16 v4, 0x3f00
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
sub-float/2addr p1, v2
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
sub-float/2addr p2, v2
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mInScale:Z
iget v2, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
int-to-float v2, v2
sub-float v2, p1, v2
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
div-float/2addr v2, v3
add-float/2addr v2, v4
float-to-int v2, v2
int-to-float v2, v2
iput v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusX:F
iget v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
int-to-float v2, v2
sub-float v2, p2, v2
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
div-float/2addr v2, v3
add-float/2addr v2, v4
float-to-int v2, v2
int-to-float v2, v2
iput v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusY:F
return-void
.end method
.method public endScale()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mInScale:Z
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapAndRedraw()V
return-void
.end method
.method public flingFilmX(I)Z
.registers 15
const/4 v2, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v2
:cond_4
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v0, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v11, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v10, v11, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasPrev:Z
if-nez v0, :cond_18
iget v0, v11, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
if-ge v0, v10, :cond_3
:cond_18
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasNext:Z
if-nez v0, :cond_20
iget v0, v11, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
if-le v0, v10, :cond_3
:cond_20
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
iget v1, v11, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
const/high16 v5, -0x8000
const v6, 0x7fffffff
move v3, p1
move v4, v2
move v7, v2
move v8, v2
invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I
move-result v12
iget v0, v9, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v1, v9, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
const/4 v2, 0x7
invoke-direct {p0, v12, v0, v1, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
move-result v2
goto :goto_3
.end method
.method public flingFilmY(II)I
.registers 11
const/16 v7, 0x8
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v5, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
invoke-direct {p0, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v3
const/4 v0, 0x3
if-ltz p2, :cond_17
if-nez p2, :cond_4e
iget v5, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
if-gtz v5, :cond_4e
:cond_17
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
neg-int v5, v5
div-int/lit8 v5, v5, 0x2
add-int/lit8 v6, v3, 0x1
div-int/lit8 v6, v6, 0x2
sub-int/2addr v5, v6
sub-int v4, v5, v0
:goto_23
if-eqz p2, :cond_5a
iget v5, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
sub-int v5, v4, v5
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v5
int-to-float v5, v5
const/high16 v6, 0x447a
mul-float/2addr v5, v6
invoke-static {p2}, Ljava/lang/Math;->abs(I)I
move-result v6
int-to-float v6, v6
div-float/2addr v5, v6
float-to-int v2, v5
const/16 v5, 0x190
invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I
move-result v2
:goto_3e
sget-object v5, Lcom/pinguo/album/views/layout/FullImageLayout;->ANIM_TIME:[I
aput v2, v5, v7
iget v5, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
#calls: Lcom/pinguo/album/views/layout/FullImageLayout$Box;->doAnimation(IFI)Z
invoke-static {v1, v4, v5, v7}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Box;IFI)Z
move-result v5
if-eqz v5, :cond_5d
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->redraw()V
:goto_4d
return v2
:cond_4e
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
add-int/lit8 v5, v5, 0x1
div-int/lit8 v5, v5, 0x2
div-int/lit8 v6, v3, 0x2
add-int/2addr v5, v6
add-int v4, v5, v0
goto :goto_23
:cond_5a
const/16 v2, 0xc8
goto :goto_3e
:cond_5d
const/4 v2, -0x1
goto :goto_4d
.end method
.method public flingPage(II)Z
.registers 17
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v11, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v0, v9, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->viewWiderThanScaledImage(F)Z
move-result v0
if-eqz v0, :cond_1d
iget v0, v9, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->viewTallerThanScaledImage(F)Z
move-result v0
if-eqz v0, :cond_1d
const/4 v0, 0x0
:goto_1c
return v0
:cond_1d
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getImageAtEdges()I
move-result v10
if-lez p1, :cond_27
and-int/lit8 v0, v10, 0x1
if-nez v0, :cond_2d
:cond_27
if-gez p1, :cond_2e
and-int/lit8 v0, v10, 0x2
if-eqz v0, :cond_2e
:cond_2d
const/4 p1, 0x0
:cond_2e
if-lez p2, :cond_34
and-int/lit8 v0, v10, 0x4
if-nez v0, :cond_3a
:cond_34
if-gez p2, :cond_3c
and-int/lit8 v0, v10, 0x8
if-eqz v0, :cond_3c
:cond_3a
const/16 p2, 0x0
:cond_3c
if-nez p1, :cond_42
if-nez p2, :cond_42
const/4 v0, 0x0
goto :goto_1c
:cond_42
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
iget v1, v11, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iget v2, v9, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
iget v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
iget v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
move v3, p1
move/from16 v4, p2
invoke-virtual/range {v0 .. v8}, Lcom/pinguo/album/views/utils/FlingScroller;->fling(IIIIIIII)V
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
invoke-virtual {v0}, Lcom/pinguo/album/views/utils/FlingScroller;->getFinalX()I
move-result v12
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
invoke-virtual {v0}, Lcom/pinguo/album/views/utils/FlingScroller;->getFinalY()I
move-result v13
sget-object v0, Lcom/pinguo/album/views/layout/FullImageLayout;->ANIM_TIME:[I
const/4 v1, 0x6
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
invoke-virtual {v2}, Lcom/pinguo/album/views/utils/FlingScroller;->getDuration()I
move-result v2
aput v2, v0, v1
iget v0, v9, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
const/4 v1, 0x6
invoke-direct {p0, v12, v13, v0, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
move-result v0
goto :goto_1c
.end method
.method public forceImageSize(ILcom/pinguo/album/views/FullImageView$Size;)V
.registers 5
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->width:I
if-eqz v1, :cond_8
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->height:I
if-nez v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->width:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->height:I
iput v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
goto :goto_8
.end method
.method public getFilmRatio()F
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmRatio:Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mCurrentRatio:F
return v0
.end method
.method public getImageAtEdges()I
.registers 6
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
invoke-direct {p0, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(F)V
const/4 v1, 0x0
iget v3, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
if-gt v3, v4, :cond_19
or-int/lit8 v1, v1, 0x2
:cond_19
iget v3, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
if-lt v3, v4, :cond_21
or-int/lit8 v1, v1, 0x1
:cond_21
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
if-gt v3, v4, :cond_29
or-int/lit8 v1, v1, 0x8
:cond_29
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
if-lt v3, v4, :cond_31
or-int/lit8 v1, v1, 0x4
:cond_31
return v1
.end method
.method public getImageHeight()I
.registers 4
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageH:I
return v1
.end method
.method public getImageScale()F
.registers 4
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
return v1
.end method
.method public getImageWidth()I
.registers 4
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mImageW:I
return v1
.end method
.method public getPosition(I)Landroid/graphics/Rect;
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v0, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Rect;
return-object v0
.end method
.method public hasDeletingBox()Z
.registers 4
const/4 v0, -0x3
:goto_1
const/4 v1, 0x3
if-le v0, v1, :cond_6
const/4 v1, 0x0
:goto_5
return v1
:cond_6
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v1, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
const/16 v2, 0x8
if-ne v1, v2, :cond_16
const/4 v1, 0x1
goto :goto_5
:cond_16
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public hitTest(II)I
.registers 7
const/4 v0, 0x0
:goto_1
const/4 v3, 0x7
if-lt v0, v3, :cond_8
const v1, 0x7fffffff
:cond_7
return v1
:cond_8
sget-object v3, Lcom/pinguo/album/views/layout/FullImageLayout;->CENTER_OUT_INDEX:[I
aget v1, v3, v0
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/graphics/Rect;
invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
move-result v3
if-nez v3, :cond_7
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public inOpeningAnimation()Z
.registers 8
const-wide/16 v5, -0x1
const/4 v4, 0x5
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationKind:I
if-ne v0, v4, :cond_12
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-wide v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J
cmp-long v0, v2, v5
if-nez v0, :cond_2e
:cond_12
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v0, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
if-ne v0, v4, :cond_2c
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v0, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-wide v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
cmp-long v0, v2, v5
if-nez v0, :cond_2e
:cond_2c
move v0, v1
:goto_2d
return v0
:cond_2e
const/4 v0, 0x1
goto :goto_2d
.end method
.method public isAtMinimalScale()Z
.registers 4
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v1, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
iget v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
invoke-static {v1, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->isAlmostEqual(FF)Z
move-result v1
return v1
.end method
.method public isCenter()Z
.registers 5
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v2, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v2, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v3, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
if-ne v2, v3, :cond_18
iget v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
if-nez v2, :cond_18
const/4 v1, 0x1
:cond_18
return v1
.end method
.method public isScrolling()Z
.registers 5
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-wide v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v1, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I
if-eq v0, v1, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public moveBox([IZZZ[Lcom/pinguo/album/views/FullImageView$Size;)V
.registers 25
move/from16 v0, p2
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasPrev:Z
move/from16 v0, p3
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasNext:Z
new-instance v7, Lcom/pinguo/album/utils/RangeIntArray;
const/16 v17, -0x3
const/16 v18, 0x3
move-object/from16 v0, p1
move/from16 v1, v17
move/from16 v2, v18
invoke-direct {v7, v0, v1, v2}, Lcom/pinguo/album/utils/RangeIntArray;-><init>([III)V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->layoutAndSetPosition()V
const/4 v9, -0x3
:goto_1f
const/16 v17, 0x3
move/from16 v0, v17
if-le v9, v0, :cond_13f
const/4 v9, -0x3
:goto_26
const/16 v17, 0x3
move/from16 v0, v17
if-le v9, v0, :cond_171
const/4 v9, -0x3
:goto_2d
const/16 v17, 0x3
move/from16 v0, v17
if-lt v9, v0, :cond_19f
const/4 v9, -0x3
:goto_34
const/16 v17, 0x3
move/from16 v0, v17
if-le v9, v0, :cond_1cd
const/4 v9, -0x3
:goto_3b
const/16 v17, 0x3
move/from16 v0, v17
if-lt v9, v0, :cond_207
const/4 v11, -0x3
const/4 v9, -0x3
:goto_43
const/16 v17, 0x3
move/from16 v0, v17
if-le v9, v0, :cond_256
const/4 v6, -0x3
:goto_4a
const/16 v17, 0x3
move/from16 v0, v17
if-le v6, v0, :cond_2a2
:cond_50
const/4 v13, 0x3
:goto_51
const/16 v17, -0x3
move/from16 v0, v17
if-ge v13, v0, :cond_2b3
:cond_57
const/16 v17, 0x3
move/from16 v0, v17
if-le v6, v0, :cond_7f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
move/from16 v18, v0
move/from16 v0, v18
move-object/from16 v1, v17
iput v0, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
const/4 v13, 0x0
move v6, v13
:cond_7f
const/16 v17, 0x0
add-int/lit8 v18, v6, 0x1
invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I
move-result v9
:goto_87
if-lt v9, v13, :cond_2c4
const/16 v17, -0x1
add-int/lit8 v18, v13, -0x1
invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I
move-result v9
:goto_91
if-gt v9, v6, :cond_352
const/4 v11, -0x3
const/4 v9, -0x3
:goto_95
const/16 v17, 0x3
move/from16 v0, v17
if-lt v9, v0, :cond_3e0
add-int/lit8 v9, v6, -0x1
:goto_9d
const/16 v17, -0x3
move/from16 v0, v17
if-ge v9, v0, :cond_46d
add-int/lit8 v9, v13, 0x1
:goto_a5
const/16 v17, 0x3
move/from16 v0, v17
if-le v9, v0, :cond_4bf
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, v17
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
move/from16 v18, v0
sub-int v5, v17, v18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
move/from16 v18, v0
add-int v18, v18, v5
move/from16 v0, v18
move-object/from16 v1, v17
iput v0, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromX:I
move/from16 v18, v0
add-int v18, v18, v5
move/from16 v0, v18
move-object/from16 v1, v17
iput v0, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromX:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I
move/from16 v18, v0
add-int v18, v18, v5
move/from16 v0, v18
move-object/from16 v1, v17
iput v0, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
move-object/from16 v17, v0
move-object/from16 v0, v17
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFlingOffset:I
move/from16 v18, v0
add-int v18, v18, v5
move/from16 v0, v18
move-object/from16 v1, v17
iput v0, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFlingOffset:I
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrained:Z
move/from16 v17, v0
move/from16 v0, v17
move/from16 v1, p4
if-eq v0, v1, :cond_13b
move/from16 v0, p4
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrained:Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->updateDefaultXY()V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->updateScaleAndGapLimit()V
:cond_13b
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapAndRedraw()V
return-void
:cond_13f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mRects:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Landroid/graphics/Rect;
invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I
move-result v17
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
move/from16 v18, v0
div-int/lit8 v18, v18, 0x2
sub-int v17, v17, v18
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
add-int/lit8 v9, v9, 0x1
goto/16 :goto_1f
:cond_171
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v9, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v0, v9, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
add-int/lit8 v9, v9, 0x1
goto/16 :goto_26
:cond_19f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v9, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v0, v9, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
add-int/lit8 v9, v9, 0x1
goto/16 :goto_2d
:cond_1cd
invoke-virtual {v7, v9}, Lcom/pinguo/album/utils/RangeIntArray;->get(I)I
move-result v10
const v17, 0x7fffffff
move/from16 v0, v17
if-ne v10, v0, :cond_1dc
:goto_1d8
add-int/lit8 v9, v9, 0x1
goto/16 :goto_34
:cond_1dc
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v10}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v9, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v0, v10, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
goto :goto_1d8
:cond_207
invoke-virtual {v7, v9}, Lcom/pinguo/album/utils/RangeIntArray;->get(I)I
move-result v10
const v17, 0x7fffffff
move/from16 v0, v17
if-ne v10, v0, :cond_216
:goto_212
:cond_212
add-int/lit8 v9, v9, 0x1
goto/16 :goto_3b
:cond_216
add-int/lit8 v17, v9, 0x1
move/from16 v0, v17
invoke-virtual {v7, v0}, Lcom/pinguo/album/utils/RangeIntArray;->get(I)I
move-result v11
const v17, 0x7fffffff
move/from16 v0, v17
if-eq v11, v0, :cond_212
add-int/lit8 v17, v10, 0x1
move/from16 v0, v17
if-ne v0, v11, :cond_212
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v10}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v9, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v0, v10, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
goto :goto_212
:cond_256
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
if-eqz v17, :cond_26a
:goto_264
add-int/lit8 v9, v9, 0x1
goto/16 :goto_43
:cond_268
add-int/lit8 v11, v11, 0x1
:cond_26a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
if-eqz v17, :cond_268
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
add-int/lit8 v12, v11, 0x1
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v9, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
add-int/lit8 v17, v9, 0x3
aget-object v17, p5, v17
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v9, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->initBox(ILcom/pinguo/album/views/FullImageView$Size;)V
move v11, v12
goto :goto_264
:cond_2a2
invoke-virtual {v7, v6}, Lcom/pinguo/album/utils/RangeIntArray;->get(I)I
move-result v17
const v18, 0x7fffffff
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_50
add-int/lit8 v6, v6, 0x1
goto/16 :goto_4a
:cond_2b3
invoke-virtual {v7, v13}, Lcom/pinguo/album/utils/RangeIntArray;->get(I)I
move-result v17
const v18, 0x7fffffff
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_57
add-int/lit8 v13, v13, -0x1
goto/16 :goto_51
:cond_2c4
invoke-virtual {v7, v9}, Lcom/pinguo/album/utils/RangeIntArray;->get(I)I
move-result v17
const v18, 0x7fffffff
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_2d5
:goto_2d1
add-int/lit8 v9, v9, 0x1
goto/16 :goto_87
:cond_2d5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
add-int/lit8 v18, v9, -0x1
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v15
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v16
iget v0, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move/from16 v17, v0
div-int/lit8 v18, v15, 0x2
sub-int v18, v15, v18
add-int v17, v17, v18
div-int/lit8 v18, v16, 0x2
add-int v17, v17, v18
move-object/from16 v0, p0
invoke-direct {v0, v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->getDefaultGapSize(I)I
move-result v18
add-int v17, v17, v18
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPopFromTop:Z
move/from16 v17, v0
if-eqz v17, :cond_33b
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
move/from16 v17, v0
div-int/lit8 v17, v17, 0x2
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v18
div-int/lit8 v18, v18, 0x2
add-int v17, v17, v18
move/from16 v0, v17
neg-int v0, v0
move/from16 v17, v0
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
goto :goto_2d1
:cond_33b
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
move/from16 v17, v0
div-int/lit8 v17, v17, 0x2
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v18
div-int/lit8 v18, v18, 0x2
add-int v17, v17, v18
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
goto :goto_2d1
:cond_352
invoke-virtual {v7, v9}, Lcom/pinguo/album/utils/RangeIntArray;->get(I)I
move-result v17
const v18, 0x7fffffff
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_363
:goto_35f
add-int/lit8 v9, v9, -0x1
goto/16 :goto_91
:cond_363
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
add-int/lit8 v18, v9, 0x1
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v15
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v16
iget v0, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move/from16 v17, v0
div-int/lit8 v18, v15, 0x2
sub-int v17, v17, v18
div-int/lit8 v18, v16, 0x2
sub-int v18, v16, v18
sub-int v17, v17, v18
move-object/from16 v0, p0
invoke-direct {v0, v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->getDefaultGapSize(I)I
move-result v18
sub-int v17, v17, v18
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPopFromTop:Z
move/from16 v17, v0
if-eqz v17, :cond_3c9
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
move/from16 v17, v0
div-int/lit8 v17, v17, 0x2
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v18
div-int/lit8 v18, v18, 0x2
add-int v17, v17, v18
move/from16 v0, v17
neg-int v0, v0
move/from16 v17, v0
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
goto :goto_35f
:cond_3c9
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
move/from16 v17, v0
div-int/lit8 v17, v17, 0x2
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->heightOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v18
div-int/lit8 v18, v18, 0x2
add-int v17, v17, v18
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
goto :goto_35f
:cond_3e0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
if-eqz v17, :cond_3f4
:goto_3ee
add-int/lit8 v9, v9, 0x1
goto/16 :goto_95
:cond_3f2
add-int/lit8 v11, v11, 0x1
:cond_3f4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
if-eqz v17, :cond_3f2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mTempGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
add-int/lit8 v12, v11, 0x1
move-object/from16 v0, v17
invoke-virtual {v0, v11}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v9, v1}, Lcom/pinguo/album/utils/RangeArray;->put(ILjava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
add-int/lit8 v18, v9, 0x1
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v15
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v16
if-lt v9, v6, :cond_466
if-ge v9, v13, :cond_466
iget v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move/from16 v17, v0
iget v0, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move/from16 v18, v0
sub-int v17, v17, v18
div-int/lit8 v18, v16, 0x2
sub-int v17, v17, v18
div-int/lit8 v18, v15, 0x2
sub-int v18, v15, v18
sub-int v8, v17, v18
move-object/from16 v0, p0
invoke-direct {v0, v9, v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->initGap(II)V
move v11, v12
goto :goto_3ee
:cond_466
move-object/from16 v0, p0
invoke-direct {v0, v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->initGap(I)V
move v11, v12
goto :goto_3ee
:cond_46d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
add-int/lit8 v18, v9, 0x1
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v15
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iget v0, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move/from16 v17, v0
div-int/lit8 v18, v15, 0x2
sub-int v17, v17, v18
div-int/lit8 v18, v16, 0x2
sub-int v18, v16, v18
sub-int v17, v17, v18
iget v0, v8, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
move/from16 v18, v0
sub-int v17, v17, v18
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
add-int/lit8 v9, v9, -0x1
goto/16 :goto_9d
:cond_4bf
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
add-int/lit8 v18, v9, -0x1
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v9}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v15
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->widthOf(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)I
move-result v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
move-object/from16 v17, v0
add-int/lit8 v18, v9, -0x1
invoke-virtual/range {v17 .. v18}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iget v0, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
move/from16 v17, v0
div-int/lit8 v18, v15, 0x2
sub-int v18, v15, v18
add-int v17, v17, v18
div-int/lit8 v18, v16, 0x2
add-int v17, v17, v18
iget v0, v8, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
move/from16 v18, v0
add-int v17, v17, v18
move/from16 v0, v17
iput v0, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAbsoluteX:I
add-int/lit8 v9, v9, 0x1
goto/16 :goto_a5
.end method
.method public resetToFullView()V
.registers 6
const/4 v4, 0x0
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v1, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
iget v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
const/4 v3, 0x4
invoke-direct {p0, v1, v4, v2, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
return-void
.end method
.method public scaleBy(FFF)I
.registers 12
const/4 v4, 0x1
const/4 v5, 0x0
const/high16 v7, 0x3f00
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
div-int/lit8 v6, v6, 0x2
int-to-float v6, v6
sub-float/2addr p2, v6
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
div-int/lit8 v6, v6, 0x2
int-to-float v6, v6
sub-float/2addr p3, v6
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v6, v5}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getTargetScale(Lcom/pinguo/album/views/layout/FullImageLayout$Box;)F
move-result v6
mul-float/2addr v6, p1
invoke-virtual {v0, v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->clampScale(F)F
move-result p1
iget-boolean v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-eqz v6, :cond_3a
iget v2, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
:goto_29
iget-boolean v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-eqz v6, :cond_42
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
:goto_2f
invoke-direct {p0, v2, v3, p1, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
iget v6, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
cmpg-float v6, p1, v6
if-gez v6, :cond_4a
const/4 v4, -0x1
:cond_39
:goto_39
return v4
:cond_3a
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusX:F
mul-float/2addr v6, p1
sub-float v6, p2, v6
add-float/2addr v6, v7
float-to-int v2, v6
goto :goto_29
:cond_42
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusY:F
mul-float/2addr v6, p1
sub-float v6, p3, v6
add-float/2addr v6, v7
float-to-int v3, v6
goto :goto_2f
:cond_4a
iget v6, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F
cmpl-float v6, p1, v6
if-gtz v6, :cond_39
move v4, v5
goto :goto_39
.end method
.method public scrollFilmX(I)V
.registers 10
const/4 v7, 0x0
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->canScroll()Z
move-result v3
if-nez v3, :cond_8
:goto_7
return-void
:cond_8
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v7}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-wide v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
const-wide/16 v5, -0x1
cmp-long v3, v3, v5
if-eqz v3, :cond_20
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
sparse-switch v3, :sswitch_data_52
goto :goto_7
:cond_20
:sswitch_20
iget v3, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
add-int v2, v3, p1
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v3, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
sub-int/2addr v2, v3
iget-boolean v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasPrev:Z
if-nez v3, :cond_43
if-lez v2, :cond_43
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
const/4 v4, 0x1
invoke-interface {v3, v2, v4}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onPull(II)V
const/4 v2, 0x0
:goto_36
:cond_36
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v3, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
add-int/2addr v2, v3
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v4, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
invoke-direct {p0, v2, v3, v4, v7}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
goto :goto_7
:cond_43
iget-boolean v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasNext:Z
if-nez v3, :cond_36
if-gez v2, :cond_36
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
neg-int v4, v2
const/4 v5, 0x3
invoke-interface {v3, v4, v5}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onPull(II)V
const/4 v2, 0x0
goto :goto_36
:sswitch_data_52
.sparse-switch
0x0 -> :sswitch_20
0x6 -> :sswitch_20
0x7 -> :sswitch_20
.end sparse-switch
.end method
.method public scrollFilmY(II)V
.registers 7
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->canScroll()Z
move-result v2
if-nez v2, :cond_7
:goto_6
return-void
:cond_7
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v2, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
add-int v1, v2, p2
iget v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
const/4 v3, 0x0
#calls: Lcom/pinguo/album/views/layout/FullImageLayout$Box;->doAnimation(IFI)Z
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Box;IFI)Z
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->redraw()V
goto :goto_6
.end method
.method public scrollPage(II)V
.registers 12
const/4 v8, 0x0
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->canScroll()Z
move-result v5
if-nez v5, :cond_8
:goto_7
return-void
:cond_8
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v5, v8}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v5, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
invoke-direct {p0, v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(F)V
iget v5, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
add-int v3, v5, p1
iget v5, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
add-int v4, v5, p2
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
if-eq v5, v6, :cond_32
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
if-ge v4, v5, :cond_54
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
sub-int/2addr v6, v4
const/4 v7, 0x2
invoke-interface {v5, v6, v7}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onPull(II)V
:goto_32
:cond_32
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
invoke-static {v4, v5, v6}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v4
iget-boolean v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasPrev:Z
if-nez v5, :cond_62
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
if-le v3, v5, :cond_62
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
sub-int v2, v3, v5
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
const/4 v6, 0x1
invoke-interface {v5, v2, v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onPull(II)V
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
:goto_4e
:cond_4e
iget v5, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
invoke-direct {p0, v3, v4, v5, v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
goto :goto_7
:cond_54
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
if-le v4, v5, :cond_32
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
sub-int v6, v4, v6
invoke-interface {v5, v6, v8}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onPull(II)V
goto :goto_32
:cond_62
iget-boolean v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mHasNext:Z
if-nez v5, :cond_4e
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
if-ge v3, v5, :cond_4e
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
sub-int v2, v5, v3
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
const/4 v6, 0x3
invoke-interface {v5, v2, v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onPull(II)V
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
goto :goto_4e
.end method
.method public setConstrainedFrame(Landroid/graphics/Rect;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->updateDefaultXY()V
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->updateScaleAndGapLimit()V
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapAndRedraw()V
goto :goto_8
.end method
.method public setExtraScalingRange(Z)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mExtraScalingRange:Z
if-ne v0, p1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mExtraScalingRange:Z
if-nez p1, :cond_4
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapAndRedraw()V
goto :goto_4
.end method
.method public setFilmMode(Z)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-ne p1, v0, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->updateDefaultXY()V
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->updateScaleAndGapLimit()V
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->stopAnimation()V
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapAndRedraw()V
goto :goto_4
.end method
.method public setImageSize(ILcom/pinguo/album/views/FullImageView$Size;Landroid/graphics/Rect;)V
.registers 8
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->width:I
if-eqz v1, :cond_8
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->height:I
if-nez v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const/4 v0, 0x0
if-eqz p3, :cond_1f
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1f
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
invoke-virtual {v1}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->updateDefaultXY()V
const/4 v0, 0x1
:cond_1f
iget v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->width:I
iget v2, p2, Lcom/pinguo/album/views/FullImageView$Size;->height:I
const/4 v3, 0x0
invoke-direct {p0, p1, v1, v2, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->setBoxSize(IIIZ)Z
move-result v1
or-int/2addr v0, v1
if-eqz v0, :cond_8
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->updateScaleAndGapLimit()V
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapAndRedraw()V
goto :goto_8
.end method
.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mOpenAnimationRect:Landroid/graphics/Rect;
return-void
.end method
.method public setPopFromTop(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPopFromTop:Z
return-void
.end method
.method public setViewSize(II)V
.registers 8
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
if-ne p1, v3, :cond_9
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
if-ne p2, v3, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->isAtMinimalScale()Z
move-result v2
iput p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
iput p2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->initPlatform()V
const/4 v1, -0x3
:goto_15
const/4 v3, 0x3
if-le v1, v3, :cond_34
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->updateScaleAndGapLimit()V
if-eqz v2, :cond_2a
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
:cond_2a
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->startOpeningAnimationIfNeeded()Z
move-result v3
if-nez v3, :cond_8
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->skipToFinalPosition()V
goto :goto_8
:cond_34
const/4 v3, 0x1
invoke-direct {p0, v1, p1, p2, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->setBoxSize(IIIZ)Z
add-int/lit8 v1, v1, 0x1
goto :goto_15
.end method
.method public skipAnimation()V
.registers 9
const/4 v7, 0x3
const-wide/16 v5, -0x1
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-wide v3, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J
cmp-long v3, v3, v5
if-eqz v3, :cond_1f
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-object v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v4, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I
iput v4, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-object v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v4, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToY:I
iput v4, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iput-wide v5, v3, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J
:cond_1f
const/4 v2, -0x3
:goto_20
if-le v2, v7, :cond_29
const/4 v2, -0x3
:goto_23
if-lt v2, v7, :cond_45
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->redraw()V
return-void
:cond_29
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-wide v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
cmp-long v3, v3, v5
if-nez v3, :cond_3a
:goto_37
add-int/lit8 v2, v2, 0x1
goto :goto_20
:cond_3a
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToY:I
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToScale:F
iput v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
iput-wide v5, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
goto :goto_37
:cond_45
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v2}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iget-wide v3, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationStartTime:J
cmp-long v3, v3, v5
if-nez v3, :cond_56
:goto_53
add-int/lit8 v2, v2, 0x1
goto :goto_23
:cond_56
iget v3, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mToGap:I
iput v3, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
iput-wide v5, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationStartTime:J
goto :goto_53
.end method
.method public skipToFinalPosition()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->stopAnimation()V
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapAndRedraw()V
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->skipAnimation()V
return-void
.end method
.method public snapback()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->snapAndRedraw()V
return-void
.end method
.method public startCaptureAnimationSlide(I)V
.registers 10
const/4 v7, 0x0
const/16 v6, 0x9
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, v7}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v3, p1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-object v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v4, v4, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v5, v5, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultY:I
#calls: Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->doAnimation(III)Z
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Platform;III)Z
iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
#calls: Lcom/pinguo/album/views/layout/FullImageLayout$Box;->doAnimation(IFI)Z
invoke-static {v0, v7, v3, v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Box;IFI)Z
iget v3, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
#calls: Lcom/pinguo/album/views/layout/FullImageLayout$Box;->doAnimation(IFI)Z
invoke-static {v2, v7, v3, v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Box;IFI)Z
iget v3, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mDefaultSize:I
invoke-virtual {v1, v3, v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->doAnimation(II)Z
invoke-direct {p0}, Lcom/pinguo/album/views/layout/FullImageLayout;->redraw()V
return-void
.end method
.method public startHorizontalSlide()V
.registers 6
const/4 v4, 0x0
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v1, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I
iget v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
const/4 v3, 0x3
invoke-direct {p0, v1, v4, v2, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
return-void
.end method
.method public stopAnimation()V
.registers 6
const/4 v4, 0x3
const-wide/16 v2, -0x1
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iput-wide v2, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J
const/4 v0, -0x3
:goto_8
if-le v0, v4, :cond_e
const/4 v0, -0x3
:goto_b
if-lt v0, v4, :cond_1b
return-void
:cond_e
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iput-wide v2, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1b
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mGaps:Lcom/pinguo/album/utils/RangeArray;
invoke-virtual {v1, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
iput-wide v2, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationStartTime:J
add-int/lit8 v0, v0, 0x1
goto :goto_b
.end method
.method public stopScrolling()V
.registers 5
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-wide v0, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
iget-boolean v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V
:cond_15
iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v2, v2, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
iput v2, v1, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I
iput v2, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromX:I
goto :goto_a
.end method
.method public zoomIn(FFF)V
.registers 14
const/high16 v9, 0x3f00
iget v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
div-int/lit8 v7, v7, 0x2
int-to-float v7, v7
sub-float/2addr p1, v7
iget v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
div-int/lit8 v7, v7, 0x2
int-to-float v7, v7
sub-float/2addr p2, v7
iget-object v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
const/4 v8, 0x0
invoke-virtual {v7, v8}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;
iget-object v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mPlatform:Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
iget v7, v7, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I
int-to-float v7, v7
sub-float v7, p1, v7
iget v8, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
div-float v3, v7, v8
iget v7, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
int-to-float v7, v7
sub-float v7, p2, v7
iget v8, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
div-float v4, v7, v8
neg-float v7, v3
mul-float/2addr v7, p3
add-float/2addr v7, v9
float-to-int v5, v7
neg-float v7, v4
mul-float/2addr v7, p3
add-float/2addr v7, v9
float-to-int v6, v7
invoke-direct {p0, p3}, Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(F)V
iget v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
iget v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
invoke-static {v5, v7, v8}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v1
iget v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
iget v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
invoke-static {v6, v7, v8}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v2
iget v7, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
iget v8, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F
invoke-static {p3, v7, v8}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result p3
const/4 v7, 0x4
invoke-direct {p0, v1, v2, p3, v7}, Lcom/pinguo/album/views/layout/FullImageLayout;->startAnimation(IIFI)Z
return-void
.end method
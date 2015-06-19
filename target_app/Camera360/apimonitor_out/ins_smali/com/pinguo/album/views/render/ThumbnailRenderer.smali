.class public Lcom/pinguo/album/views/render/ThumbnailRenderer;
.super Lcom/pinguo/album/views/render/AbstractThumbnailRender;
.source "ThumbnailRenderer.java"
.field private static final CACHE_SIZE:I = 0x60
.field private static final ENABLE_COLORFUL_DEFAULT_TEXTURE:Z = true
.field private static final FONT_COLOR_WEEK:I = -0x4a4541
.field private static final TAG:Ljava/lang/String; = "ThumbnailViewRender"
.field private static final WAIT_LOADING_DEFAULT_COLOR:I = -0x616061
.field private mAnimatePressedUp:Z
.field private mAudioIconWith:I
.field private mData:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
.field private mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
.field private mFragment:Lcom/pinguo/album/fragment/PGBaseFragment;
.field private mHighlightItemPath:Lcom/pinguo/album/data/MediaPath;
.field private mInSelectionMode:Z
.field private mMediaSelector:Lcom/pinguo/album/selectors/PhotoSelector;
.field private final mPhotoSound:Lcom/pinguo/album/opengles/BitmapTexture;
.field private mPressedIndex:I
.field private mSortTagOffsetX:I
.field protected final mSortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;
.field private mTagWidth:I
.field private mThumbnailFilter:Lcom/pinguo/album/views/render/ThumbnailRenderer$ThumbnailFilter;
.field private mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
.field private mTodayString:Ljava/lang/String;
.field private mTodayTexture:Lcom/pinguo/album/opengles/StringTexture;
.field private final mWaitLoadingDefaultTexture:Lcom/pinguo/album/opengles/ColorTexture;
.field private mWeeksTexture:[Lcom/pinguo/album/opengles/StringTexture;
.method public constructor <init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/views/ThumbnailView;Lcom/pinguo/album/selectors/PhotoSelector;Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;)V
.registers 16
const/4 v10, 0x1
const/4 v8, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
invoke-direct {p0, v7}, Lcom/pinguo/album/views/render/AbstractThumbnailRender;-><init>(Landroid/content/Context;)V
const/4 v7, 0x0
iput-object v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mHighlightItemPath:Lcom/pinguo/album/data/MediaPath;
const/4 v7, -0x1
iput v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPressedIndex:I
iput v8, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mAudioIconWith:I
iput v8, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mSortTagOffsetX:I
iput-object p1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mFragment:Lcom/pinguo/album/fragment/PGBaseFragment;
iput-object p2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
iput-object p3, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mMediaSelector:Lcom/pinguo/album/selectors/PhotoSelector;
new-instance v7, Lcom/pinguo/album/opengles/ColorTexture;
const v8, -0x616061
invoke-direct {v7, v8}, Lcom/pinguo/album/opengles/ColorTexture;-><init>(I)V
iput-object v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mWaitLoadingDefaultTexture:Lcom/pinguo/album/opengles/ColorTexture;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0b0095
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F
move-result v7
invoke-static {v7}, Ljava/lang/Math;->round(F)I
move-result v7
iput v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mAudioIconWith:I
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
new-instance v7, Lcom/pinguo/album/opengles/BitmapTexture;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getResources()Landroid/content/res/Resources;
move-result-object v8
const v9, 0x7f020424
invoke-static {v8, v9, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v8
invoke-direct {v7, v8}, Lcom/pinguo/album/opengles/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPhotoSound:Lcom/pinguo/album/opengles/BitmapTexture;
iput-object p4, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mSortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;
new-instance v5, Landroid/text/TextPaint;
invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V
iget-object v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mSortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;
iget v7, v7, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;->labelFontSize:I
int-to-float v7, v7
invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V
invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V
const v7, -0x4a4541
invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setColor(I)V
invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setFilterBitmap(Z)V
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
const v8, 0x7f08001b
invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3, v5}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;
move-result-object v7
iput-object v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mTodayTexture:Lcom/pinguo/album/opengles/StringTexture;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0d0016
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v6
array-length v7, v6
new-array v7, v7, [Lcom/pinguo/album/opengles/StringTexture;
iput-object v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mWeeksTexture:[Lcom/pinguo/album/opengles/StringTexture;
const/4 v1, 0x0
:goto_90
array-length v7, v6
if-lt v1, v7, :cond_ab
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v7, "yyyyMMdd"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v8
invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v7, Ljava/util/Date;
invoke-direct {v7}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v7
iput-object v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mTodayString:Ljava/lang/String;
return-void
:cond_ab
aget-object v4, v6, v1
iget-object v7, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mWeeksTexture:[Lcom/pinguo/album/opengles/StringTexture;
invoke-static {v4, v5}, Lcom/pinguo/album/opengles/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/pinguo/album/opengles/StringTexture;
move-result-object v8
aput-object v8, v7, v1
add-int/lit8 v1, v1, 0x1
goto :goto_90
.end method
.method static synthetic access$0(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/views/ThumbnailView;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/selectors/PhotoSelector;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mMediaSelector:Lcom/pinguo/album/selectors/PhotoSelector;
return-object v0
.end method
.method private getRelateWeekTexture(Lcom/pinguo/album/data/MediaSet$SortTag;)Lcom/pinguo/album/opengles/StringTexture;
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mTodayString:Ljava/lang/String;
if-eqz v4, :cond_1b
iget-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mTodayString:Ljava/lang/String;
iget-object v5, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1b
iget-object v4, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;
iget-object v5, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1b
const/4 v1, 0x1
:cond_1b
if-eqz v1, :cond_20
iget-object v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mTodayTexture:Lcom/pinguo/album/opengles/StringTexture;
:goto_1f
:cond_1f
return-object v2
:cond_20
iget-object v4, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;
if-eqz v4, :cond_1f
iget-object v4, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_1f
:try_start_2c
iget-object v4, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
const/4 v5, 0x1
if-ne v4, v5, :cond_1f
iget-object v4, p1, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
iget-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mWeeksTexture:[Lcom/pinguo/album/opengles/StringTexture;
iget-object v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mWeeksTexture:[Lcom/pinguo/album/opengles/StringTexture;
array-length v5, v5
rem-int v5, v3, v5
aget-object v2, v4, v5
:try_end_44
.catch Ljava/lang/Exception; {:try_start_2c .. :try_end_44} :catch_45
goto :goto_1f
:catch_45
move-exception v0
const/4 v2, 0x0
goto :goto_1f
.end method
.method private renderOverlay(Lcom/pinguo/album/opengles/GLESCanvas;ILcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;II)I
.registers 9
const/4 v0, 0x0
iget v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPressedIndex:I
if-ne v1, p2, :cond_1c
iget-boolean v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mAnimatePressedUp:Z
if-eqz v1, :cond_18
or-int/lit8 v0, v0, 0x2
invoke-virtual {p0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->isPressedUpFrameFinished()Z
move-result v1
if-eqz v1, :cond_17
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mAnimatePressedUp:Z
const/4 v1, -0x1
iput v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPressedIndex:I
:cond_17
:goto_17
return v0
:cond_18
invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawPressedFrame(Lcom/pinguo/album/opengles/GLESCanvas;II)V
goto :goto_17
:cond_1c
iget-object v1, p3, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->path:Lcom/pinguo/album/data/MediaPath;
if-eqz v1, :cond_2a
iget-object v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mHighlightItemPath:Lcom/pinguo/album/data/MediaPath;
iget-object v2, p3, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->path:Lcom/pinguo/album/data/MediaPath;
if-ne v1, v2, :cond_2a
invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawSelectedFrame(Lcom/pinguo/album/opengles/GLESCanvas;II)V
goto :goto_17
:cond_2a
iget-boolean v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mInSelectionMode:Z
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mMediaSelector:Lcom/pinguo/album/selectors/PhotoSelector;
iget-object v2, p3, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->path:Lcom/pinguo/album/data/MediaPath;
invoke-virtual {v1, v2, p2}, Lcom/pinguo/album/selectors/PhotoSelector;->isItemSelected(Lcom/pinguo/album/data/MediaPath;I)Z
move-result v1
if-eqz v1, :cond_3c
invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawSelectedFrame(Lcom/pinguo/album/opengles/GLESCanvas;II)V
goto :goto_17
:cond_3c
invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawPreSelectedFrame(Lcom/pinguo/album/opengles/GLESCanvas;II)V
goto :goto_17
.end method
.method protected drawPhotoSound(Lcom/pinguo/album/opengles/GLESCanvas;II)V
.registers 11
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPhotoSound:Lcom/pinguo/album/opengles/BitmapTexture;
if-eqz v0, :cond_13
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPhotoSound:Lcom/pinguo/album/opengles/BitmapTexture;
move-object v0, p1
move v4, v3
move v5, p2
move v6, p3
invoke-static/range {v0 .. v6}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawFrame(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;Lcom/pinguo/album/opengles/Texture;IIII)V
:cond_13
return-void
.end method
.method public onThumbnailSizeChanged(II)V
.registers 3
return-void
.end method
.method public onVisibleRangeChanged(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->setActiveWindow(II)V
:cond_9
return-void
.end method
.method public onVisibleTagRangeChanged(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->setActiveTagWindow(II)V
:cond_9
return-void
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-virtual {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->pause()V
return-void
.end method
.method public prepareDrawing()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mMediaSelector:Lcom/pinguo/album/selectors/PhotoSelector;
invoke-virtual {v0}, Lcom/pinguo/album/selectors/PhotoSelector;->inSelectionMode()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mInSelectionMode:Z
return-void
.end method
.method protected renderExpand(Lcom/pinguo/album/opengles/GLESCanvas;II)I
.registers 7
const/4 v1, 0x2
invoke-interface {p1, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V
iget v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mAudioIconWith:I
mul-int/lit8 v1, v1, 0x6
div-int/lit8 v0, v1, 0x5
sub-int v1, p2, v0
int-to-float v1, v1
sub-int v2, p3, v0
int-to-float v2, v2
invoke-interface {p1, v1, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
iget v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mAudioIconWith:I
iget v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mAudioIconWith:I
invoke-virtual {p0, p1, v1, v2}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawPhotoSound(Lcom/pinguo/album/opengles/GLESCanvas;II)V
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
const/4 v1, 0x0
return v1
.end method
.method public renderSortTag(Lcom/pinguo/album/opengles/GLESCanvas;III)I
.registers 13
const/4 v7, 0x0
iget-object v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
if-nez v5, :cond_6
:goto_5
:cond_5
return v7
:cond_6
iget-object v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-virtual {v5, p2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->getSortTagEntry(I)Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
move-result-object v3
if-eqz v3, :cond_5
iget-object v0, v3, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
iget-object v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-virtual {v5, p2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->getSortTag(I)Lcom/pinguo/album/data/MediaSet$SortTag;
move-result-object v4
if-eqz v0, :cond_3b
iget-boolean v5, v4, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z
if-eqz v5, :cond_2e
iget-object v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-virtual {v5}, Lcom/pinguo/album/views/ThumbnailView;->getWidth()I
move-result v5
iget v6, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mTagWidth:I
sub-int/2addr v5, v6
div-int/lit8 v5, v5, 0x2
int-to-float v5, v5
div-int/lit8 v6, p4, 0x4
int-to-float v6, v6
invoke-interface {p1, v5, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
:cond_2e
invoke-interface {v0}, Lcom/pinguo/album/opengles/Texture;->getHeight()I
move-result v1
iget v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mSortTagOffsetX:I
sub-int v6, p4, v1
div-int/lit8 v6, v6, 0x2
invoke-interface {v0, p1, v5, v6}, Lcom/pinguo/album/opengles/Texture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
:cond_3b
iget-boolean v5, v4, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z
if-nez v5, :cond_5
iget-boolean v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mInSelectionMode:Z
if-eqz v5, :cond_61
mul-int/lit8 v5, p4, 0x2
div-int/lit8 p4, v5, 0x3
iget-object v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-virtual {v5}, Lcom/pinguo/album/views/ThumbnailView;->getWidth()I
move-result v5
sub-int/2addr v5, p4
int-to-float v5, v5
div-int/lit8 v6, p4, 0x3
int-to-float v6, v6
invoke-interface {p1, v5, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
iget-boolean v5, v4, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z
if-eqz v5, :cond_5d
invoke-virtual {p0, p1, p4, p4}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawCheckedBox(Lcom/pinguo/album/opengles/GLESCanvas;II)V
goto :goto_5
:cond_5d
invoke-virtual {p0, p1, p4, p4}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawUncheckedBox(Lcom/pinguo/album/opengles/GLESCanvas;II)V
goto :goto_5
:cond_61
invoke-direct {p0, v4}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->getRelateWeekTexture(Lcom/pinguo/album/data/MediaSet$SortTag;)Lcom/pinguo/album/opengles/StringTexture;
move-result-object v2
if-eqz v2, :cond_5
iget-object v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-virtual {v5}, Lcom/pinguo/album/views/ThumbnailView;->getWidth()I
move-result v5
invoke-virtual {v2}, Lcom/pinguo/album/opengles/StringTexture;->getWidth()I
move-result v6
sub-int/2addr v5, v6
int-to-float v5, v5
iget v6, v4, Lcom/pinguo/album/data/MediaSet$SortTag;->drawBeginPos:F
invoke-interface {p1, v5, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
invoke-virtual {v2, p1, v7, v7}, Lcom/pinguo/album/opengles/StringTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
goto :goto_5
.end method
.method public renderThumbnail(Lcom/pinguo/album/opengles/GLESCanvas;IIII)I
.registers 20
iget-object v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailFilter:Lcom/pinguo/album/views/render/ThumbnailRenderer$ThumbnailFilter;
if-eqz v2, :cond_10
iget-object v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailFilter:Lcom/pinguo/album/views/render/ThumbnailRenderer$ThumbnailFilter;
move/from16 v0, p2
invoke-interface {v2, v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer$ThumbnailFilter;->acceptThumbnail(I)Z
move-result v2
if-nez v2, :cond_10
const/4 v13, 0x0
:goto_f
return v13
:cond_10
iget-object v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
move/from16 v0, p2
invoke-virtual {v2, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->get(I)Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
move-result-object v8
if-nez v8, :cond_1c
const/4 v13, 0x0
goto :goto_f
:cond_1c
const/4 v13, 0x0
iget-object v4, v8, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-nez v4, :cond_4e
iget-object v2, v8, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->item:Lcom/pinguo/album/data/MediaItem;
instance-of v2, v2, Lcom/pinguo/album/data/image/CloudMediaItem;
if-eqz v2, :cond_3c
iget-object v2, v8, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->item:Lcom/pinguo/album/data/MediaItem;
check-cast v2, Lcom/pinguo/album/data/image/CloudMediaItem;
iget v11, v2, Lcom/pinguo/album/data/image/CloudMediaItem;->avgColor:I
if-ltz v11, :cond_3c
const v2, 0xffffff
if-gt v11, v2, :cond_37
const/high16 v2, -0x100
add-int/2addr v11, v2
:cond_37
new-instance v4, Lcom/pinguo/album/opengles/ColorTexture;
invoke-direct {v4, v11}, Lcom/pinguo/album/opengles/ColorTexture;-><init>(I)V
:cond_3c
if-nez v4, :cond_40
iget-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mWaitLoadingDefaultTexture:Lcom/pinguo/album/opengles/ColorTexture;
:cond_40
instance-of v2, v4, Lcom/pinguo/album/opengles/ColorTexture;
if-eqz v2, :cond_4e
move-object v2, v4
check-cast v2, Lcom/pinguo/album/opengles/ColorTexture;
move/from16 v0, p4
move/from16 v1, p5
invoke-virtual {v2, v0, v1}, Lcom/pinguo/album/opengles/ColorTexture;->setSize(II)V
:cond_4e
iget v7, v8, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->rotation:I
move-object v2, p0
move-object v3, p1
move/from16 v5, p4
move/from16 v6, p5
invoke-virtual/range {v2 .. v7}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->drawContent(Lcom/pinguo/album/opengles/GLESCanvas;Lcom/pinguo/album/opengles/Texture;III)V
iget-object v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mData:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
if-eqz v2, :cond_74
iget-object v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mData:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
move/from16 v0, p2
invoke-virtual {v2, v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->get(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v12
if-eqz v12, :cond_74
invoke-virtual {v12}, Lcom/pinguo/album/data/MediaItem;->hasAudio()Z
move-result v2
if-eqz v2, :cond_74
move/from16 v0, p4
move/from16 v1, p5
invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->renderExpand(Lcom/pinguo/album/opengles/GLESCanvas;II)I
:cond_74
move-object v5, p0
move-object v6, p1
move/from16 v7, p2
move/from16 v9, p4
move/from16 v10, p5
invoke-direct/range {v5 .. v10}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->renderOverlay(Lcom/pinguo/album/opengles/GLESCanvas;ILcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;II)I
move-result v2
or-int/2addr v13, v2
goto :goto_f
.end method
.method public resume()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-virtual {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->resume()V
return-void
.end method
.method public setHighlightItemPath(Lcom/pinguo/album/data/MediaPath;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mHighlightItemPath:Lcom/pinguo/album/data/MediaPath;
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-object p1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mHighlightItemPath:Lcom/pinguo/album/data/MediaPath;
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-virtual {v0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V
goto :goto_4
.end method
.method public setModel(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)V
.registers 13
const/4 v10, 0x0
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-virtual {v0, v10}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->setListener(Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;)V
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/ThumbnailView;->setThumbnailCount(I)V
iput-object v10, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
:cond_12
if-eqz p1, :cond_77
new-instance v8, Landroid/util/DisplayMetrics;
invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mFragment:Lcom/pinguo/album/fragment/PGBaseFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v0
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mFragment:Lcom/pinguo/album/fragment/PGBaseFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->get(Landroid/content/Context;)Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
move-result-object v0
iget-object v9, v0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mFragment:Lcom/pinguo/album/fragment/PGBaseFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->get(Landroid/content/Context;)Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
move-result-object v7
iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I
iget v1, v7, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->paddingRight:I
sub-int/2addr v0, v1
iget v1, v7, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->paddingLeft:I
sub-int/2addr v0, v1
iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iput v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mTagWidth:I
new-instance v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;
iget-object v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mFragment:Lcom/pinguo/album/fragment/PGBaseFragment;
const/16 v3, 0x60
iget-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mSortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;
iget v5, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mTagWidth:I
iget v6, v9, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelHeight:I
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;-><init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/data/loader/ThumbnailDataLoader;ILcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;II)V
iput-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mDataWindow:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
new-instance v1, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;
invoke-direct {v1, p0, v10}, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;-><init>(Lcom/pinguo/album/views/render/ThumbnailRenderer;Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;)V
invoke-virtual {v0, v1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->setListener(Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;)V
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-virtual {p1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->size()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/ThumbnailView;->setThumbnailCount(I)V
iput-object p1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mData:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
:cond_77
return-void
.end method
.method public setPressedIndex(I)V
.registers 3
iget v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPressedIndex:I
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput p1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPressedIndex:I
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-virtual {v0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V
goto :goto_4
.end method
.method public setPressedUp()V
.registers 3
iget v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mPressedIndex:I
const/4 v1, -0x1
if-ne v0, v1, :cond_6
:goto_5
return-void
:cond_6
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mAnimatePressedUp:Z
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-virtual {v0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V
goto :goto_5
.end method
.method public setThumbnailFilter(Lcom/pinguo/album/views/render/ThumbnailRenderer$ThumbnailFilter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailFilter:Lcom/pinguo/album/views/render/ThumbnailRenderer$ThumbnailFilter;
return-void
.end method
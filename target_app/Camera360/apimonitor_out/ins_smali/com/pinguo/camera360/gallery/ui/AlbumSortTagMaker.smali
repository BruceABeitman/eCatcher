.class public Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
.super Ljava/lang/Object;
.source "AlbumSortTagMaker.java"
.field private static final BACKGROUND_COLOR:I = 0x0
.field private static final BORDER_SIZE:I = 0x2
.field private static final FONT_COLOR_DATE:I = -0x34302e
.field private static final FONT_COLOR_DAY:I = -0x1
.field private static final FONT_COLOR_MONTH:I = -0x1
.field private static final FONT_COLOR_YEAR:I = -0x1
.field private static final TAG:Ljava/lang/String; = "AlbumSortTagMaker"
.field private mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
.field private mContext:Landroid/content/Context;
.field private mDateBg:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
.field private mDateCover:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
.field private mDatePaint:Landroid/text/TextPaint;
.field private mDayPaint:Landroid/text/TextPaint;
.field private mMonthPaint:Landroid/text/TextPaint;
.field private mSortTagHeight:I
.field private mSortTagWidth:I
.field private mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
.field private mYearBGHeight:I
.field private mYearPaint:Landroid/text/TextPaint;
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;II)V
.registers 11
const/4 v2, -0x1
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearBGHeight:I
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mContext:Landroid/content/Context;
iget v1, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->dayFontSize:I
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDayPaint:Landroid/text/TextPaint;
iget v1, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->monthFontSize:I
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mMonthPaint:Landroid/text/TextPaint;
iget v1, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->dateFontSize:I
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearPaint:Landroid/text/TextPaint;
iget v1, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->dateFontSize:I
const v2, -0x34302e
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDatePaint:Landroid/text/TextPaint;
monitor-enter p0
:try_start_2f
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagWidth:I
iput p4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagHeight:I
monitor-exit p0
:try_end_34
.catchall {:try_start_2f .. :try_end_34} :catchall_64
const/4 v0, 0x4
new-instance v1, Lcom/pinguo/camera360/gallery/data/BitmapPool;
add-int v2, p3, v0
add-int v3, p4, v0
const/16 v4, 0x8
const-string/jumbo v5, "AlbumSortTagPool"
invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/BitmapPool;-><init>(IIILjava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
const v2, 0x7f02019b
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;I)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDateBg:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
const v2, 0x7f02018e
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;I)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDateCover:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
invoke-static {p1}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v1, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->tagYearHeight:I
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearBGHeight:I
return-void
:catchall_64
move-exception v1
:try_start_65
monitor-exit p0
:try_end_66
.catchall {:try_start_65 .. :try_end_66} :catchall_64
throw v1
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagWidth:I
return v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearPaint:Landroid/text/TextPaint;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagHeight:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Lcom/pinguo/camera360/gallery/data/BitmapPool;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDateBg:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDayPaint:Landroid/text/TextPaint;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mMonthPaint:Landroid/text/TextPaint;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDateCover:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDatePaint:Landroid/text/TextPaint;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearBGHeight:I
return v0
.end method
.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
.registers 8
monitor-enter p5
int-to-float v0, p4
:try_start_2
sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-static {p3, p5, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object p3
int-to-float v0, p1
add-int/lit8 v1, p2, 0x8
int-to-float v1, v1
invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
monitor-exit p5
return-void
:catchall_15
move-exception v0
monitor-exit p5
:try_end_17
.catchall {:try_start_2 .. :try_end_17} :catchall_15
throw v0
.end method
.method public static getBorderSize()I
.registers 1
const/4 v0, 0x2
return v0
.end method
.method private static getTextPaint(IIZ)Landroid/text/TextPaint;
.registers 6
const/4 v2, 0x1
new-instance v0, Landroid/text/TextPaint;
invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V
int-to-float v1, p0
invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V
invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V
invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V
invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V
if-eqz p2, :cond_1c
invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
:cond_1c
return-object v0
.end method
.method public clearRecycledSortTags()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->clear()V
:cond_9
return-void
.end method
.method public recycleSortTag(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public requestTag(Ljava/lang/String;Z)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.registers 4
new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;Ljava/lang/String;Z)V
return-object v0
.end method
.method public declared-synchronized setSortTagMetrics(II)V
.registers 9
monitor-enter p0
:try_start_1
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagWidth:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_1d
if-ne v1, p1, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagWidth:I
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagHeight:I
const/4 v0, 0x4
new-instance v1, Lcom/pinguo/camera360/gallery/data/BitmapPool;
add-int v2, p1, v0
add-int v3, p2, v0
const/16 v4, 0x8
const-string/jumbo v5, "AlbumSortTagPool"
invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/BitmapPool;-><init>(IIILjava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
:try_end_1c
.catchall {:try_start_7 .. :try_end_1c} :catchall_1d
goto :goto_5
:catchall_1d
move-exception v1
monitor-exit p0
throw v1
.end method
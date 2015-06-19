.class public Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
.super Ljava/lang/Object;
.source "ThumbnailSortTagMaker.java"
.field private static final BACKGROUND_COLOR:I = 0x0
.field private static final BORDER_SIZE:I = 0x2
.field private static final FONT_COLOR_LABEL1:I = -0x767474
.field private static final FONT_COLOR_LABEL2:I = -0x4a4541
.field private static final FONT_COLOR_YEAR:I = -0x1
.field private static final TAG:Ljava/lang/String; = "AlbumSortTagMaker"
.field private mContext:Landroid/content/Context;
.field private mDateFormatOrigin:Ljava/text/SimpleDateFormat;
.field private mDateFormatOut:Ljava/text/SimpleDateFormat;
.field private mLabel1Paint:Landroid/text/TextPaint;
.field private mLabel2Paint:Landroid/text/TextPaint;
.field private mLabelYearPaint:Landroid/text/TextPaint;
.field private mSortTagDrawPos1:F
.field private mSortTagDrawPos2:F
.field private mSortTagHeight:I
.field private mSortTagWidth:I
.field private mSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;
.field private mYearBGHeight:I
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;II)V
.registers 12
const/high16 v6, 0x4000
const/4 v5, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v5, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mYearBGHeight:I
iput-object p2, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;
iput-object p1, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mContext:Landroid/content/Context;
iget v3, p2, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;->yearFontSize:I
const/4 v4, -0x1
invoke-static {v3, v4, v5}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabelYearPaint:Landroid/text/TextPaint;
iget v3, p2, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;->labelFontSize:I
const v4, -0x767474
invoke-static {v3, v4, v5}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel1Paint:Landroid/text/TextPaint;
iget v3, p2, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;->labelFontSize:I
mul-int/lit8 v3, v3, 0x4
div-int/lit8 v3, v3, 0x5
const v4, -0x4a4541
invoke-static {v3, v4, v5}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel2Paint:Landroid/text/TextPaint;
iget-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel1Paint:Landroid/text/TextPaint;
invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F
move-result v0
iget-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel2Paint:Landroid/text/TextPaint;
invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F
move-result v1
monitor-enter p0
:try_start_3c
iput p3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagWidth:I
iput p4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagHeight:I
move v2, v0
iget v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagHeight:I
int-to-float v3, v3
sub-float/2addr v3, v2
div-float/2addr v3, v6
iput v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagDrawPos1:F
const v3, 0x3f8ccccd
mul-float/2addr v3, v1
add-float/2addr v2, v3
iget v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagHeight:I
int-to-float v3, v3
sub-float/2addr v3, v2
div-float/2addr v3, v6
iput v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagDrawPos2:F
monitor-exit p0
:try_end_55
.catchall {:try_start_3c .. :try_end_55} :catchall_7e
iget v3, p2, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;->yearFontSize:I
iget-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mContext:Landroid/content/Context;
const/4 v5, 0x4
invoke-static {v4, v5}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I
move-result v4
add-int/2addr v3, v4
iput v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mYearBGHeight:I
new-instance v3, Ljava/text/SimpleDateFormat;
const-string/jumbo v4, "yyyyMMdd"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v5
invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iput-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOrigin:Ljava/text/SimpleDateFormat;
new-instance v3, Ljava/text/SimpleDateFormat;
const-string/jumbo v4, "yyyy/MM/dd"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v5
invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iput-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOut:Ljava/text/SimpleDateFormat;
return-void
:catchall_7e
move-exception v3
:try_start_7f
monitor-exit p0
:try_end_80
.catchall {:try_start_7f .. :try_end_80} :catchall_7e
throw v3
.end method
.method static synthetic access$0(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Ljava/text/SimpleDateFormat;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOut:Ljava/text/SimpleDateFormat;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Ljava/text/SimpleDateFormat;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOrigin:Ljava/text/SimpleDateFormat;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)F
.registers 2
iget v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagDrawPos2:F
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)F
.registers 2
iget v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagDrawPos1:F
return v0
.end method
.method static synthetic access$4(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagWidth:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagHeight:I
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel1Paint:Landroid/text/TextPaint;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel2Paint:Landroid/text/TextPaint;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabelYearPaint:Landroid/text/TextPaint;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mYearBGHeight:I
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
.method public requestTag(Lcom/pinguo/album/data/MediaSet$SortTag;)Lcom/pinguo/album/AlbumThreadPool$Job;
.registers 3
new-instance v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;
invoke-direct {v0, p0, p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;-><init>(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;Lcom/pinguo/album/data/MediaSet$SortTag;)V
return-object v0
.end method
.method public declared-synchronized setSortTagMetrics(II)V
.registers 8
const/high16 v4, 0x4000
monitor-enter p0
:try_start_3
iget v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagWidth:I
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_2e
if-ne v3, p1, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
iput p1, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagWidth:I
iput p2, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagHeight:I
iget-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel1Paint:Landroid/text/TextPaint;
invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F
move-result v0
iget-object v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel2Paint:Landroid/text/TextPaint;
invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F
move-result v1
move v2, v0
iget v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagHeight:I
int-to-float v3, v3
sub-float/2addr v3, v2
div-float/2addr v3, v4
iput v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagDrawPos1:F
const v3, 0x3f8ccccd
mul-float/2addr v3, v1
add-float/2addr v2, v3
iget v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagHeight:I
int-to-float v3, v3
sub-float/2addr v3, v2
div-float/2addr v3, v4
iput v3, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagDrawPos2:F
:try_end_2d
.catchall {:try_start_9 .. :try_end_2d} :catchall_2e
goto :goto_7
:catchall_2e
move-exception v3
monitor-exit p0
throw v3
.end method
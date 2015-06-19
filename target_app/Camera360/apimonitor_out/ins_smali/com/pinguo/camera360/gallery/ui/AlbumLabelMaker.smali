.class public Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"
.field private static final BACKGROUND_COLOR:I = 0x0
.field private static final BORDER_SIZE:I = 0x1
.field private static final FONT_COLOR_COUNT:I = -0x111112
.field private static final FONT_COLOR_TITLE:I = -0x66605b
.field private mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
.field private final mCountPaint:Landroid/text/TextPaint;
.field private mLabelHeight:I
.field private mLabelWidth:I
.field private final mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
.field private final mTitlePaint:Landroid/text/TextPaint;
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I
const v1, -0x66605b
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
iget v0, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I
const v1, -0x111112
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Lcom/pinguo/camera360/gallery/data/BitmapPool;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelHeight:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
return-object v0
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
invoke-virtual {p5, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
sub-int v0, p4, v0
div-int/lit8 p1, v0, 0x2
int-to-float v0, p1
invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
move-result-object v1
iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
sub-int v1, p2, v1
int-to-float v1, v1
invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
monitor-exit p5
return-void
:catchall_27
move-exception v0
monitor-exit p5
:try_end_29
.catchall {:try_start_2 .. :try_end_29} :catchall_27
throw v0
.end method
.method public static getBorderSize()I
.registers 1
const/4 v0, 0x1
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
if-eqz p2, :cond_19
invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
:cond_19
return-object v0
.end method
.method public clearRecycledLabels()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->clear()V
:cond_9
return-void
.end method
.method public recycleLabel(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public requestLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.registers 4
new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public declared-synchronized setLabelWidth(II)V
.registers 9
monitor-enter p0
:try_start_1
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
if-ne v1, p1, :cond_b
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelHeight:I
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_26
if-ne p2, v1, :cond_b
:goto_9
monitor-exit p0
return-void
:cond_b
:try_start_b
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v1, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelHeight:I
add-int/2addr v1, p2
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelHeight:I
const/4 v0, 0x2
new-instance v1, Lcom/pinguo/camera360/gallery/data/BitmapPool;
add-int v2, p1, v0
add-int v3, p2, v0
const/16 v4, 0x10
const-string/jumbo v5, "AlbumLabelPool"
invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/BitmapPool;-><init>(IIILjava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
:try_end_25
.catchall {:try_start_b .. :try_end_25} :catchall_26
goto :goto_9
:catchall_26
move-exception v1
monitor-exit p0
throw v1
.end method
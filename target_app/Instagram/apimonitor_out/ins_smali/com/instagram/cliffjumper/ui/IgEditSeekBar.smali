.class public Lcom/instagram/cliffjumper/ui/IgEditSeekBar;
.super Landroid/widget/FrameLayout;
.source "IgEditSeekBar.java"
.implements Lcom/facebook/f/a/c;
.implements Lcom/facebook/f/a/d;
.implements Lcom/facebook/f/a/f;
.field private a:Lcom/facebook/f/a/a;
.field private b:Landroid/graphics/Paint;
.field private c:Landroid/graphics/Paint;
.field private d:Landroid/graphics/Paint;
.field private e:Landroid/graphics/drawable/Drawable;
.field private f:Landroid/graphics/drawable/Drawable;
.field private g:I
.field private h:I
.field private i:I
.field private j:I
.field private k:F
.field private l:F
.field private m:I
.field private n:Lcom/instagram/cliffjumper/ui/a;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/16 v0, 0x64
iput v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->m:I
new-instance v0, Lcom/facebook/f/a/a;
invoke-direct {v0, p1}, Lcom/facebook/f/a/a;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;
const/4 v1, 0x2
new-array v1, v1, [Lcom/facebook/f/a/h;
const/4 v2, 0x0
sget-object v3, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;
aput-object v3, v1, v2
const/4 v2, 0x1
sget-object v3, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/facebook/f/a/a;->a([Lcom/facebook/f/a/h;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;
invoke-virtual {v0, p0}, Lcom/facebook/f/a/a;->a(Lcom/facebook/f/a/d;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;
invoke-virtual {v0, p0}, Lcom/facebook/f/a/a;->a(Lcom/facebook/f/a/c;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;
invoke-virtual {v0, p0}, Lcom/facebook/f/a/a;->a(Lcom/facebook/f/a/f;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
iput-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->b:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->b:Landroid/graphics/Paint;
sget v2, Lcom/facebook/as;->seek_bar_inactive_color:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->b:Landroid/graphics/Paint;
sget v2, Lcom/facebook/at;->seek_bar_width:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
int-to-float v2, v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
iput-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c:Landroid/graphics/Paint;
sget v2, Lcom/facebook/as;->seek_bar_active_color:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c:Landroid/graphics/Paint;
sget v2, Lcom/facebook/at;->seek_bar_width:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
int-to-float v2, v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
iput-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;
sget v2, Lcom/facebook/as;->seek_bar_active_color:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;
sget v2, Lcom/facebook/at;->seek_bar_text_size:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
int-to-float v2, v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V
iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;
const/16 v2, 0x7f
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
sget v1, Lcom/facebook/at;->seek_bar_root_size:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iput v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->g:I
sget v1, Lcom/facebook/at;->seek_bar_knob_size:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iput v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->h:I
sget v1, Lcom/facebook/at;->seek_bar_tappable_height:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iput v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->i:I
sget v1, Lcom/facebook/at;->seek_bar_default_gap:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iput v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->j:I
sget v1, Lcom/facebook/au;->seek_bar_root:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->e:Landroid/graphics/drawable/Drawable;
sget v1, Lcom/facebook/au;->seek_bar_knob:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->f:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method private a(I)F
.registers 5
if-lez p1, :cond_14
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I
move-result v0
:goto_6
add-int/2addr v0, p1
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v1
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I
move-result v2
if-gt v1, v2, :cond_1a
iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F
:goto_13
return v0
:cond_14
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I
move-result v0
neg-int v0, v0
goto :goto_6
:cond_1a
int-to-float v0, v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getSeekerBarSegmentSize()I
move-result v1
int-to-float v1, v1
div-float/2addr v0, v1
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F
add-float/2addr v0, v1
goto :goto_13
.end method
.method private static a(Landroid/graphics/drawable/Drawable;III)V
.registers 8
div-int/lit8 v0, p1, 0x2
sub-int v0, p2, v0
div-int/lit8 v1, p1, 0x2
sub-int v1, p3, v1
div-int/lit8 v2, p1, 0x2
add-int/2addr v2, p2
div-int/lit8 v3, p1, 0x2
add-int/2addr v3, p3
invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
return-void
.end method
.method private c(F)V
.registers 3
iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->l:F
add-float/2addr v0, p1
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentPositionWithBounds(F)V
return-void
.end method
.method private c(FF)Z
.registers 4
invoke-direct {p0, p2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d(F)Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getWidth()I
move-result v0
div-int/lit8 v0, v0, 0x3
int-to-float v0, v0
cmpg-float v0, p1, v0
if-gez v0, :cond_27
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V
:goto_1c
:cond_1c
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
invoke-interface {v0}, Lcom/instagram/cliffjumper/ui/a;->b()V
:cond_25
const/4 v0, 0x1
goto :goto_7
:cond_27
invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getWidth()I
move-result v0
mul-int/lit8 v0, v0, 0x2
div-int/lit8 v0, v0, 0x3
int-to-float v0, v0
cmpl-float v0, p1, v0
if-lez v0, :cond_1c
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V
goto :goto_1c
.end method
.method private d(F)Z
.registers 4
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I
move-result v0
int-to-float v0, v0
sub-float v0, p1, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->i:I
int-to-float v1, v1
cmpg-float v0, v0, v1
if-gtz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method private getCenterY()I
.registers 2
invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getHeight()I
move-result v0
div-int/lit8 v0, v0, 0x2
return v0
.end method
.method private getCurrentPositionAsValue()I
.registers 4
iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->l:F
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F
sub-float/2addr v0, v1
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getSeekerBarSegmentSize()I
move-result v1
int-to-float v1, v1
mul-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v1
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I
move-result v2
if-gt v0, v2, :cond_1b
const/4 v0, 0x0
:goto_1a
return v0
:cond_1b
if-lez v1, :cond_24
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I
move-result v0
:goto_21
sub-int v0, v1, v0
goto :goto_1a
:cond_24
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I
move-result v0
neg-int v0, v0
goto :goto_21
.end method
.method private getFatZeroExtraSegmentSize()I
.registers 3
iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-eqz v0, :cond_f
iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F
const/high16 v1, 0x3f80
cmpl-float v0, v0, v1
if-nez v0, :cond_14
:cond_f
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I
move-result v0
:goto_13
return v0
:cond_14
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I
move-result v0
mul-int/lit8 v0, v0, 0x2
goto :goto_13
.end method
.method private getFatZeroRadiusSegmentSize()I
.registers 3
iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->m:I
mul-int/lit8 v0, v0, 0x1
int-to-float v0, v0
const/high16 v1, 0x42c8
div-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
return v0
.end method
.method private getKnobCenterX()I
.registers 4
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I
move-result v0
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->l:F
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLengthPx()I
move-result v2
int-to-float v2, v2
mul-float/2addr v1, v2
float-to-int v1, v1
add-int/2addr v0, v1
return v0
.end method
.method private getLeftBound()I
.registers 3
iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->h:I
div-int/lit8 v0, v0, 0x2
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->j:I
add-int/2addr v0, v1
return v0
.end method
.method private getLengthPx()I
.registers 3
invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getWidth()I
move-result v0
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->h:I
div-int/lit8 v1, v1, 0x2
sub-int/2addr v0, v1
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->j:I
sub-int/2addr v0, v1
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method private getRootCenterX()I
.registers 4
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I
move-result v0
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLengthPx()I
move-result v2
int-to-float v2, v2
mul-float/2addr v1, v2
float-to-int v1, v1
add-int/2addr v0, v1
return v0
.end method
.method private getSeekerBarSegmentSize()I
.registers 3
iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->m:I
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroExtraSegmentSize()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private setCurrentPositionWithBounds(F)V
.registers 4
const/high16 v0, 0x3f80
const/4 v1, 0x0
invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
iput v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->l:F
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I
move-result v1
invoke-interface {v0, v1}, Lcom/instagram/cliffjumper/ui/a;->a(I)V
:cond_1a
invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->invalidate()V
return-void
.end method
.method public final a()Z
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
invoke-interface {v0}, Lcom/instagram/cliffjumper/ui/a;->a()V
:cond_9
const/4 v0, 0x1
return v0
.end method
.method public final a(F)Z
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d(F)Z
move-result v0
return v0
.end method
.method public final a(FF)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c(FF)Z
move-result v0
return v0
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
invoke-interface {v0}, Lcom/instagram/cliffjumper/ui/a;->b()V
:cond_9
return-void
.end method
.method public final b(F)V
.registers 3
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLengthPx()I
move-result v0
int-to-float v0, v0
div-float v0, p1, v0
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c(F)V
return-void
.end method
.method public final b(FF)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c(FF)Z
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
invoke-interface {v0}, Lcom/instagram/cliffjumper/ui/a;->b()V
:cond_9
return-void
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 8
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I
move-result v0
int-to-float v1, v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I
move-result v0
int-to-float v2, v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I
move-result v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLengthPx()I
move-result v3
add-int/2addr v0, v3
int-to-float v3, v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I
move-result v0
int-to-float v4, v0
iget-object v5, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->b:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getRootCenterX()I
move-result v0
int-to-float v1, v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I
move-result v0
int-to-float v2, v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getKnobCenterX()I
move-result v0
int-to-float v3, v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I
move-result v0
int-to-float v4, v0
iget-object v5, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->e:Landroid/graphics/drawable/Drawable;
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->g:I
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getRootCenterX()I
move-result v2
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I
move-result v3
invoke-static {v0, v1, v2, v3}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a(Landroid/graphics/drawable/Drawable;III)V
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->f:Landroid/graphics/drawable/Drawable;
iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->h:I
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getKnobCenterX()I
move-result v2
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I
move-result v3
invoke-static {v0, v1, v2, v3}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a(Landroid/graphics/drawable/Drawable;III)V
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I
move-result v0
if-eqz v0, :cond_86
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getKnobCenterX()I
move-result v1
int-to-float v1, v1
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I
move-result v2
int-to-float v2, v2
const/high16 v3, 0x4000
div-float/2addr v2, v3
iget-object v3, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;
invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;
move-result-object v3
iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F
add-float/2addr v2, v3
iget-object v3, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
:cond_86
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;
invoke-virtual {v0, p1}, Lcom/facebook/f/a/a;->a(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;
invoke-virtual {v0, p1}, Lcom/facebook/f/a/a;->b(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public setCurrentValue(I)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a(I)F
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentPositionWithBounds(F)V
return-void
.end method
.method public setOnSeekBarChangeListener(Lcom/instagram/cliffjumper/ui/a;)V
.registers 4
iput-object p1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;
invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I
move-result v1
invoke-interface {v0, v1}, Lcom/instagram/cliffjumper/ui/a;->a(I)V
:cond_f
return-void
.end method
.method public setRootPosition(F)V
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F
return-void
.end method
.method public setValueRangeSize(I)V
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->m:I
return-void
.end method
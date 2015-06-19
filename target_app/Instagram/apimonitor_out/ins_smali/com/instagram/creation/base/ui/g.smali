.class public final Lcom/instagram/creation/base/ui/g;
.super Landroid/widget/RadioButton;
.source "FilterTile.java"
.field private static final a:Landroid/graphics/PorterDuffXfermode;
.field private final b:Lcom/instagram/creation/base/ui/h;
.field private final c:Landroid/graphics/drawable/Drawable;
.field private final d:Ljava/lang/String;
.field private final e:Landroid/graphics/Paint;
.field private final f:Landroid/graphics/Paint;
.field private final g:Landroid/graphics/Paint$FontMetrics;
.field private final h:F
.field private final i:F
.field private final j:F
.field private final k:Z
.field private final l:Landroid/graphics/Rect;
.field private final m:Landroid/graphics/RectF;
.field private final n:Landroid/graphics/RectF;
.field private final o:Landroid/graphics/RectF;
.field private final p:Landroid/graphics/RectF;
.field private q:F
.field private r:F
.field private final s:F
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/graphics/PorterDuffXfermode;
sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
sput-object v0, Lcom/instagram/creation/base/ui/g;->a:Landroid/graphics/PorterDuffXfermode;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/base/ui/h;)V
.registers 8
const/16 v1, 0xc
const/4 v4, 0x1
invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->f:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint$FontMetrics;
invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->m:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->n:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->p:Landroid/graphics/RectF;
invoke-virtual {p0, v4}, Lcom/instagram/creation/base/ui/g;->setClickable(Z)V
invoke-virtual {p0, v4}, Lcom/instagram/creation/base/ui/g;->setFocusable(Z)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v0, v2, :cond_46
invoke-direct {p0}, Lcom/instagram/creation/base/ui/g;->a()V
:cond_46
iput-object p2, p0, Lcom/instagram/creation/base/ui/g;->b:Lcom/instagram/creation/base/ui/h;
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->b:Lcom/instagram/creation/base/ui/h;
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/h;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->b:Lcom/instagram/creation/base/ui/h;
invoke-virtual {v0}, Lcom/instagram/creation/base/ui/h;->c()I
move-result v0
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v2
sget-object v3, Lcom/instagram/creation/base/ui/g;->a:Landroid/graphics/PorterDuffXfermode;
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
const/4 v2, 0x2
invoke-static {v0, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v2
iput v2, p0, Lcom/instagram/creation/base/ui/g;->i:F
const/high16 v2, 0x3fc0
invoke-static {v0, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;F)F
move-result v2
iput v2, p0, Lcom/instagram/creation/base/ui/g;->j:F
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v0
iput v0, p0, Lcom/instagram/creation/base/ui/g;->s:F
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z
if-eqz v0, :cond_ec
move v0, v1
:goto_cd
invoke-static {v3, v0}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v0
invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->f:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;
iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;
iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F
sub-float/2addr v0, v1
iput v0, p0, Lcom/instagram/creation/base/ui/g;->h:F
return-void
:cond_ec
const/16 v0, 0xa
goto :goto_cd
.end method
.method private a()V
.registers 3
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/base/ui/g;->setLayerType(ILandroid/graphics/Paint;)V
return-void
.end method
.method public final getFilter()Lcom/instagram/creation/base/ui/h;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->b:Lcom/instagram/creation/base/ui/h;
return-object v0
.end method
.method protected final onDraw(Landroid/graphics/Canvas;)V
.registers 6
const/high16 v2, 0x4080
const/4 v0, 0x0
invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
const v1, -0xbdbdbe
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->n:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->c:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z
if-nez v0, :cond_39
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->m:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->f:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
:cond_39
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->isChecked()Z
move-result v0
if-eqz v0, :cond_ac
iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z
if-eqz v0, :cond_ac
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v2, Lcom/facebook/as;->accent_blue_medium:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
:goto_4f
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->d:Ljava/lang/String;
iget v1, p0, Lcom/instagram/creation/base/ui/g;->q:F
iget v2, p0, Lcom/instagram/creation/base/ui/g;->r:F
iget-object v3, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->isChecked()Z
move-result v0
if-eqz v0, :cond_ab
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
sget-object v1, Lcom/instagram/creation/base/ui/g;->a:Landroid/graphics/PorterDuffXfermode;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
iget v1, p0, Lcom/instagram/creation/base/ui/g;->i:F
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/as;->accent_blue_medium:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
iget v1, p0, Lcom/instagram/creation/base/ui/g;->j:F
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/as;->black:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->p:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
:cond_ab
return-void
:cond_ac
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v2, Lcom/facebook/as;->white:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
goto :goto_4f
.end method
.method protected final onMeasure(II)V
.registers 14
const/4 v1, 0x0
const/high16 v10, 0x4000
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
int-to-float v0, v0
iget-boolean v2, p0, Lcom/instagram/creation/base/ui/g;->k:Z
if-eqz v2, :cond_12
iget v2, p0, Lcom/instagram/creation/base/ui/g;->s:F
iget v3, p0, Lcom/instagram/creation/base/ui/g;->h:F
add-float/2addr v2, v3
sub-float/2addr v0, v2
:cond_12
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
const/16 v3, 0x58
invoke-static {v2, v3}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F
move-result v8
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I
move-result v0
int-to-float v0, v0
add-float/2addr v0, v8
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingRight()I
move-result v2
int-to-float v2, v2
add-float/2addr v2, v0
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I
move-result v0
int-to-float v0, v0
add-float/2addr v0, v8
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingBottom()I
move-result v3
int-to-float v3, v3
add-float/2addr v0, v3
iget-boolean v3, p0, Lcom/instagram/creation/base/ui/g;->k:Z
if-eqz v3, :cond_46
iget v3, p0, Lcom/instagram/creation/base/ui/g;->s:F
iget v4, p0, Lcom/instagram/creation/base/ui/g;->h:F
add-float/2addr v3, v4
add-float/2addr v0, v3
:cond_46
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
invoke-virtual {p0, v2, v0}, Lcom/instagram/creation/base/ui/g;->setMeasuredDimension(II)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I
move-result v2
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I
move-result v3
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I
move-result v4
invoke-static {v8}, Ljava/lang/Math;->round(F)I
move-result v5
add-int/2addr v4, v5
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I
move-result v5
invoke-static {v8}, Ljava/lang/Math;->round(F)I
move-result v6
add-int/2addr v5, v6
invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->n:Landroid/graphics/RectF;
iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;
invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;
iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->n:Landroid/graphics/RectF;
invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
iget v0, p0, Lcom/instagram/creation/base/ui/g;->i:F
div-float/2addr v0, v10
iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;
invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->p:Landroid/graphics/RectF;
iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;
invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
iget v0, p0, Lcom/instagram/creation/base/ui/g;->j:F
iget v2, p0, Lcom/instagram/creation/base/ui/g;->i:F
add-float/2addr v0, v2
div-float/2addr v0, v10
iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->p:Landroid/graphics/RectF;
invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V
iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z
if-nez v0, :cond_d9
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->m:Landroid/graphics/RectF;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I
move-result v2
int-to-float v2, v2
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I
move-result v3
int-to-float v3, v3
div-float v4, v8, v10
add-float/2addr v3, v4
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I
move-result v4
int-to-float v4, v4
add-float/2addr v4, v8
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I
move-result v5
int-to-float v5, v5
add-float/2addr v5, v8
invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V
iget-object v9, p0, Lcom/instagram/creation/base/ui/g;->f:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/LinearGradient;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I
move-result v2
int-to-float v2, v2
div-float v3, v8, v10
add-float/2addr v2, v3
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I
move-result v3
int-to-float v3, v3
add-float v4, v3, v8
const/4 v5, 0x0
const/high16 v6, -0x7800
sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
move v3, v1
invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V
invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
:cond_d9
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I
move-result v0
int-to-float v0, v0
div-float v1, v8, v10
add-float/2addr v0, v1
iput v0, p0, Lcom/instagram/creation/base/ui/g;->q:F
iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
int-to-float v0, v0
iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;
iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F
sub-float/2addr v0, v1
iput v0, p0, Lcom/instagram/creation/base/ui/g;->r:F
iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z
if-eqz v0, :cond_fe
iget v0, p0, Lcom/instagram/creation/base/ui/g;->r:F
iget v1, p0, Lcom/instagram/creation/base/ui/g;->s:F
iget v2, p0, Lcom/instagram/creation/base/ui/g;->h:F
add-float/2addr v1, v2
add-float/2addr v0, v1
iput v0, p0, Lcom/instagram/creation/base/ui/g;->r:F
:goto_fd
return-void
:cond_fe
iget v0, p0, Lcom/instagram/creation/base/ui/g;->r:F
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
const/4 v2, 0x2
invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v1
sub-float/2addr v0, v1
iput v0, p0, Lcom/instagram/creation/base/ui/g;->r:F
goto :goto_fd
.end method
.class final Lcom/spotify/mobile/android/util/bk;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field private static final a:Landroid/graphics/Paint;
.field private b:Landroid/graphics/drawable/Drawable;
.field private final c:Landroid/graphics/drawable/Drawable;
.field private d:J
.field private e:Z
.field private f:I
.field private final g:Z
.field private final h:F
.field private final i:Lcom/squareup/picasso/Picasso$LoadedFrom;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/bk;->a:Landroid/graphics/Paint;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$LoadedFrom;Z)V
.registers 8
const/4 v1, 0x1
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
const/16 v0, 0xff
iput v0, p0, Lcom/spotify/mobile/android/util/bk;->f:I
iput-object p2, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
iput-boolean p5, p0, Lcom/spotify/mobile/android/util/bk;->g:Z
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
iput v0, p0, Lcom/spotify/mobile/android/util/bk;->h:F
iput-object p4, p0, Lcom/spotify/mobile/android/util/bk;->i:Lcom/squareup/picasso/Picasso$LoadedFrom;
sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;
if-eq p4, v0, :cond_2c
move v0, v1
:goto_1f
if-eqz v0, :cond_2b
iput-object p3, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
iput-boolean v1, p0, Lcom/spotify/mobile/android/util/bk;->e:Z
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/util/bk;->d:J
:cond_2b
return-void
:cond_2c
const/4 v0, 0x0
goto :goto_1f
.end method
.method private static a(Landroid/graphics/Point;I)Landroid/graphics/Path;
.registers 7
new-instance v0, Landroid/graphics/Point;
iget v1, p0, Landroid/graphics/Point;->x:I
add-int/2addr v1, p1
iget v2, p0, Landroid/graphics/Point;->y:I
invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V
new-instance v1, Landroid/graphics/Point;
iget v2, p0, Landroid/graphics/Point;->x:I
iget v3, p0, Landroid/graphics/Point;->y:I
add-int/2addr v3, p1
invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V
new-instance v2, Landroid/graphics/Path;
invoke-direct {v2}, Landroid/graphics/Path;-><init>()V
iget v3, p0, Landroid/graphics/Point;->x:I
int-to-float v3, v3
iget v4, p0, Landroid/graphics/Point;->y:I
int-to-float v4, v4
invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V
iget v3, v0, Landroid/graphics/Point;->x:I
int-to-float v3, v3
iget v0, v0, Landroid/graphics/Point;->y:I
int-to-float v0, v0
invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V
iget v0, v1, Landroid/graphics/Point;->x:I
int-to-float v0, v0
iget v1, v1, Landroid/graphics/Point;->y:I
int-to-float v1, v1
invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V
return-object v2
.end method
.method static a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;
if-eqz v0, :cond_14
invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
:cond_14
return-void
.end method
.method static a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$LoadedFrom;Z)V
.registers 10
invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v3
instance-of v0, v3, Landroid/graphics/drawable/AnimationDrawable;
if-eqz v0, :cond_e
move-object v0, v3
check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
:cond_e
new-instance v0, Lcom/spotify/mobile/android/util/bk;
invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
move-result-object v1
move-object v2, p1
move-object v4, p2
move v5, p3
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/bk;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$LoadedFrom;Z)V
invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 7
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/bk;->e:Z
if-nez v0, :cond_3f
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:goto_a
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/bk;->g:Z
if-eqz v0, :cond_ad
sget-object v0, Lcom/spotify/mobile/android/util/bk;->a:Landroid/graphics/Paint;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V
const/high16 v1, 0x4180
iget v2, p0, Lcom/spotify/mobile/android/util/bk;->h:F
mul-float/2addr v1, v2
float-to-int v1, v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bk;->a(Landroid/graphics/Point;I)Landroid/graphics/Path;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/bk;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
sget-object v1, Lcom/spotify/mobile/android/util/bk;->a:Landroid/graphics/Paint;
sget-object v0, Lcom/spotify/mobile/android/util/bk$1;->a:[I
iget-object v2, p0, Lcom/spotify/mobile/android/util/bk;->i:Lcom/squareup/picasso/Picasso$LoadedFrom;
invoke-virtual {v2}, Lcom/squareup/picasso/Picasso$LoadedFrom;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_b6
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Unknown LoadedFrom type."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3f
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/spotify/mobile/android/util/bk;->d:J
sub-long/2addr v0, v2
long-to-float v0, v0
const/high16 v1, 0x4348
div-float/2addr v0, v1
const/high16 v1, 0x3f80
cmpl-float v1, v0, v1
if-ltz v1, :cond_5b
iput-boolean v4, p0, Lcom/spotify/mobile/android/util/bk;->e:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_a
:cond_5b
iget-object v1, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_79
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/bk;->getBounds()Landroid/graphics/Rect;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v2
if-eq v1, v2, :cond_74
iget-object v1, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/bk;->getBounds()Landroid/graphics/Rect;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
:cond_74
iget-object v1, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_79
iget v1, p0, Lcom/spotify/mobile/android/util/bk;->f:I
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
iget-object v1, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
iget v1, p0, Lcom/spotify/mobile/android/util/bk;->f:I
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/bk;->invalidateSelf()V
goto/16 :goto_a
:pswitch_94
const/16 v0, -0x100
:goto_96
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V
const/high16 v1, 0x4170
iget v2, p0, Lcom/spotify/mobile/android/util/bk;->h:F
mul-float/2addr v1, v2
float-to-int v1, v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bk;->a(Landroid/graphics/Point;I)Landroid/graphics/Path;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/bk;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
:cond_ad
return-void
:pswitch_ae
const/high16 v0, -0x1
goto :goto_96
:pswitch_b1
const v0, -0xff0100
goto :goto_96
nop
:pswitch_data_b6
.packed-switch 0x1
:pswitch_94
:pswitch_ae
:pswitch_b1
.end packed-switch
.end method
.method public final getIntrinsicHeight()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
return v0
.end method
.method public final getOpacity()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
return v0
.end method
.method protected final onBoundsChange(Landroid/graphics/Rect;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V
return-void
.end method
.method public final setAlpha(I)V
.registers 3
iput p1, p0, Lcom/spotify/mobile/android/util/bk;->f:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/util/bk;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
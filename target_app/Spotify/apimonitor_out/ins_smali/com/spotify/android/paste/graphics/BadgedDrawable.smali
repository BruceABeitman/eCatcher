.class public final Lcom/spotify/android/paste/graphics/BadgedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field public static final a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.field private final b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.field private final c:I
.field private final d:I
.field private final e:Landroid/graphics/drawable/Drawable;
.field private final f:Landroid/graphics/drawable/Drawable;
.field private final g:Z
.field private final h:Landroid/graphics/Rect;
.field private final i:Landroid/graphics/Matrix;
.field private final j:Landroid/graphics/Matrix;
.field private final k:Landroid/graphics/RectF;
.field private final l:Landroid/graphics/RectF;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->d:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
sput-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
return-void
.end method
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/spotify/android/paste/graphics/c;)V
.registers 9
const/4 v4, 0x0
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->i:Landroid/graphics/Matrix;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->j:Landroid/graphics/Matrix;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->k:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->l:Landroid/graphics/RectF;
if-nez p1, :cond_2a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "null drawable"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2a
if-nez p3, :cond_34
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "null badge params"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_34
iget-object v0, p3, Lcom/spotify/android/paste/graphics/c;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
if-nez v0, :cond_40
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "null position"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_40
iput-object p1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->e:Landroid/graphics/drawable/Drawable;
iput-object p2, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->f:Landroid/graphics/drawable/Drawable;
iget-object v0, p3, Lcom/spotify/android/paste/graphics/c;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
iput-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
iget v0, p3, Lcom/spotify/android/paste/graphics/c;->e:I
iput v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->d:I
iget v0, p3, Lcom/spotify/android/paste/graphics/c;->d:I
iput v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->c:I
new-instance v0, Landroid/graphics/Rect;
iget v1, p3, Lcom/spotify/android/paste/graphics/c;->b:I
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a(II)I
move-result v1
iget v2, p3, Lcom/spotify/android/paste/graphics/c;->c:I
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v3
invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a(II)I
move-result v2
invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->h:Landroid/graphics/Rect;
iget-boolean v0, p3, Lcom/spotify/android/paste/graphics/c;->f:Z
iput-boolean v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->g:Z
return-void
.end method
.method private static a(II)I
.registers 4
if-gez p0, :cond_c
if-gez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The drawable has no intrinsic measures, set them manually."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
move p1, p0
:cond_d
return p1
.end method
.method public static a()Lcom/spotify/android/paste/graphics/c;
.registers 1
new-instance v0, Lcom/spotify/android/paste/graphics/c;
invoke-direct {v0}, Lcom/spotify/android/paste/graphics/c;-><init>()V
return-object v0
.end method
.method private static a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
.registers 4
invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z
move-result v0
if-nez v0, :cond_14
invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I
move-result v0
invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
:goto_13
return-void
:cond_14
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_13
.end method
.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z)V
.registers 9
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V
if-nez p4, :cond_36
if-ltz v0, :cond_36
if-ltz v1, :cond_36
invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v2, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->k:Landroid/graphics/RectF;
int-to-float v1, v1
int-to-float v0, v0
invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->l:Landroid/graphics/RectF;
invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->k:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->l:Landroid/graphics/RectF;
invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_35
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->k:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->l:Landroid/graphics/RectF;
sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;
invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
:cond_35
:goto_35
return-void
:cond_36
invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
goto :goto_35
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->e:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->i:Landroid/graphics/Matrix;
invoke-static {p1, v0, v1}, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->f:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->j:Landroid/graphics/Matrix;
invoke-static {p1, v0, v1}, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
return-void
.end method
.method public final getIntrinsicHeight()I
.registers 2
iget-boolean v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->g:Z
if-eqz v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
goto :goto_5
.end method
.method public final getIntrinsicWidth()I
.registers 2
iget-boolean v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->g:Z
if-eqz v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
goto :goto_5
.end method
.method public final getOpacity()I
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
iget-object v1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/BadgedDrawable;->resolveOpacity(II)I
move-result v0
return v0
.end method
.method protected final onBoundsChange(Landroid/graphics/Rect;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->e:Landroid/graphics/drawable/Drawable;
iget-object v4, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->i:Landroid/graphics/Matrix;
iget-boolean v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->g:Z
if-nez v0, :cond_3f
move v0, v1
:goto_b
invoke-direct {p0, v3, p1, v4, v0}, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
sget-object v3, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->c:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
if-eq v0, v3, :cond_1a
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
sget-object v3, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
if-ne v0, v3, :cond_41
:cond_1a
move v0, v1
:goto_1b
iget-object v3, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
sget-object v4, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
if-eq v3, v4, :cond_27
iget-object v3, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
sget-object v4, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
if-ne v3, v4, :cond_43
:goto_27
:cond_27
iget-object v4, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->h:Landroid/graphics/Rect;
if-eqz v0, :cond_45
iget v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->d:I
move v3, v0
:goto_2e
if-eqz v1, :cond_53
iget v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->c:I
:goto_32
invoke-virtual {v4, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->f:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->h:Landroid/graphics/Rect;
iget-object v3, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->j:Landroid/graphics/Matrix;
invoke-direct {p0, v0, v1, v3, v2}, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z)V
return-void
:cond_3f
move v0, v2
goto :goto_b
:cond_41
move v0, v2
goto :goto_1b
:cond_43
move v1, v2
goto :goto_27
:cond_45
iget v0, p1, Landroid/graphics/Rect;->right:I
iget v3, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->d:I
sub-int/2addr v0, v3
iget-object v3, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->h:Landroid/graphics/Rect;
invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
move-result v3
sub-int/2addr v0, v3
move v3, v0
goto :goto_2e
:cond_53
iget v0, p1, Landroid/graphics/Rect;->bottom:I
iget v1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->c:I
sub-int/2addr v0, v1
iget-object v1, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->h:Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v1
sub-int/2addr v0, v1
goto :goto_32
.end method
.method public final setAlpha(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/BadgedDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
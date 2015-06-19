.class public final Lcom/instagram/android/maps/ui/ah;
.super Lcom/google/android/maps/Overlay;
.source "PhotoOverlay.java"
.field public static f:Z
.field private static n:Landroid/graphics/Bitmap;
.field private static o:Landroid/graphics/Bitmap;
.field private static p:Landroid/graphics/Bitmap;
.field public a:J
.field  b:D
.field  c:J
.field public d:Lcom/instagram/android/maps/b/h;
.field  e:Landroid/view/GestureDetector;
.field private g:Lcom/instagram/android/maps/b/f;
.field private h:Landroid/content/Context;
.field private i:Lcom/instagram/android/maps/ui/a/c;
.field private j:Lcom/instagram/android/maps/ui/a/a;
.field private k:Landroid/graphics/Bitmap;
.field private l:Lcom/instagram/android/maps/ui/i;
.field private m:Lcom/instagram/common/ui/widget/imageview/IgImageView;
.field private q:Landroid/graphics/drawable/NinePatchDrawable;
.field private r:Landroid/graphics/Point;
.field private s:Z
.field private t:Z
.field private u:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/instagram/android/maps/ui/ah;->n:Landroid/graphics/Bitmap;
sput-object v0, Lcom/instagram/android/maps/ui/ah;->o:Landroid/graphics/Bitmap;
sput-object v0, Lcom/instagram/android/maps/ui/ah;->p:Landroid/graphics/Bitmap;
const/4 v0, 0x0
sput-boolean v0, Lcom/instagram/android/maps/ui/ah;->f:Z
return-void
.end method
.method public constructor <init>(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/i;Landroid/content/Context;)V
.registers 10
const-wide/16 v4, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V
iput-wide v4, p0, Lcom/instagram/android/maps/ui/ah;->a:J
const-wide/high16 v0, 0x4079
iput-wide v0, p0, Lcom/instagram/android/maps/ui/ah;->b:D
iput-wide v4, p0, Lcom/instagram/android/maps/ui/ah;->c:J
iput-object v3, p0, Lcom/instagram/android/maps/ui/ah;->d:Lcom/instagram/android/maps/b/h;
iput-object v3, p0, Lcom/instagram/android/maps/ui/ah;->q:Landroid/graphics/drawable/NinePatchDrawable;
new-instance v0, Landroid/view/GestureDetector;
new-instance v1, Lcom/instagram/android/maps/ui/ak;
invoke-direct {v1, p0, v2}, Lcom/instagram/android/maps/ui/ak;-><init>(Lcom/instagram/android/maps/ui/ah;B)V
invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/instagram/android/maps/ui/ah;->e:Landroid/view/GestureDetector;
iput-boolean v2, p0, Lcom/instagram/android/maps/ui/ah;->s:Z
iput-boolean v2, p0, Lcom/instagram/android/maps/ui/ah;->t:Z
iput-object p3, p0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
new-instance v0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
iget-object v1, p0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/maps/ui/ah;->m:Lcom/instagram/common/ui/widget/imageview/IgImageView;
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->m:Lcom/instagram/common/ui/widget/imageview/IgImageView;
iget-object v1, p0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->map_photo_overlay:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->m:Lcom/instagram/common/ui/widget/imageview/IgImageView;
new-instance v1, Lcom/instagram/android/maps/ui/ai;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/ai;-><init>(Lcom/instagram/android/maps/ui/ah;)V
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V
invoke-virtual {p0, p1}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/b/f;)V
invoke-direct {p0}, Lcom/instagram/android/maps/ui/ah;->j()I
move-result v0
iput v0, p0, Lcom/instagram/android/maps/ui/ah;->u:I
return-void
.end method
.method static synthetic a(Lcom/instagram/android/maps/ui/ah;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/ah;->k:Landroid/graphics/Bitmap;
return-object p1
.end method
.method private a(Landroid/graphics/Point;)Landroid/graphics/Rect;
.registers 8
new-instance v0, Landroid/graphics/Rect;
iget v1, p1, Landroid/graphics/Point;->x:I
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iget v2, p1, Landroid/graphics/Point;->y:I
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v3
div-int/lit8 v3, v3, 0x2
sub-int/2addr v2, v3
iget v3, p1, Landroid/graphics/Point;->x:I
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v4
div-int/lit8 v4, v4, 0x2
add-int/2addr v3, v4
iget v4, p1, Landroid/graphics/Point;->y:I
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v5
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
return-object v0
.end method
.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.registers 8
invoke-direct {p0}, Lcom/instagram/android/maps/ui/ah;->k()I
move-result v0
new-instance v1, Landroid/graphics/Rect;
iget v2, p1, Landroid/graphics/Rect;->left:I
sub-int/2addr v2, v0
iget v3, p1, Landroid/graphics/Rect;->top:I
sub-int/2addr v3, v0
iget v4, p1, Landroid/graphics/Rect;->right:I
add-int/2addr v4, v0
iget v5, p1, Landroid/graphics/Rect;->bottom:I
add-int/2addr v0, v5
invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V
return-object v1
.end method
.method static synthetic a(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/ui/i;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/maps/ui/ah;)Z
.registers 2
invoke-direct {p0}, Lcom/instagram/android/maps/ui/ah;->l()Z
move-result v0
return v0
.end method
.method static synthetic c(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/ui/a/c;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->i:Lcom/instagram/android/maps/ui/a/c;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/b/f;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->g:Lcom/instagram/android/maps/b/f;
return-object v0
.end method
.method static synthetic e(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/ui/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->j:Lcom/instagram/android/maps/ui/a/a;
return-object v0
.end method
.method public static declared-synchronized h()V
.registers 2
const-class v0, Lcom/instagram/android/maps/ui/ah;
monitor-enter v0
const/4 v1, 0x0
:try_start_4
sput-boolean v1, Lcom/instagram/android/maps/ui/ah;->f:Z
:try_end_6
.catchall {:try_start_4 .. :try_end_6} :catchall_8
monitor-exit v0
return-void
:catchall_8
move-exception v1
monitor-exit v0
throw v1
.end method
.method private i()I
.registers 2
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-eqz v0, :cond_d
iget v0, p0, Lcom/instagram/android/maps/ui/ah;->u:I
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->g:Lcom/instagram/android/maps/b/f;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
goto :goto_c
.end method
.method private j()I
.registers 3
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-eqz v0, :cond_1d
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/ui/ah;->g:Lcom/instagram/android/maps/b/f;
invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->d(Ljava/util/Collection;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method private k()I
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->maps_pile_rect_size:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
return v0
.end method
.method private declared-synchronized l()Z
.registers 5
const/4 v0, 0x1
monitor-enter p0
:try_start_2
sget-boolean v1, Lcom/instagram/android/maps/ui/ah;->f:Z
:try_end_4
.catchall {:try_start_2 .. :try_end_4} :catchall_1d
if-eqz v1, :cond_8
:goto_6
monitor-exit p0
return v0
:cond_8
const/4 v0, 0x1
:try_start_9
sput-boolean v0, Lcom/instagram/android/maps/ui/ah;->f:Z
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getHandler()Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/ui/aj;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/aj;-><init>(Lcom/instagram/android/maps/ui/ah;)V
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:try_end_1b
.catchall {:try_start_9 .. :try_end_1b} :catchall_1d
const/4 v0, 0x0
goto :goto_6
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a()Lcom/instagram/android/maps/b/f;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->g:Lcom/instagram/android/maps/b/f;
return-object v0
.end method
.method public final a(Lcom/instagram/android/maps/b/f;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/maps/ui/ah;->g:Lcom/instagram/android/maps/b/f;
invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/b/a;
iget-object v1, p0, Lcom/instagram/android/maps/ui/ah;->m:Lcom/instagram/common/ui/widget/imageview/IgImageView;
invoke-interface {v0}, Lcom/instagram/android/maps/b/a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/instagram/android/maps/ui/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/ah;->j:Lcom/instagram/android/maps/ui/a/a;
return-void
.end method
.method public final a(Lcom/instagram/android/maps/ui/a/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/ah;->i:Lcom/instagram/android/maps/ui/a/c;
return-void
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/maps/ui/ah;->s:Z
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->invalidate()V
return-void
.end method
.method public final c()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/maps/ui/ah;->s:Z
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->invalidate()V
return-void
.end method
.method public final d()V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/maps/ui/ah;->j()I
move-result v0
iput v0, p0, Lcom/instagram/android/maps/ui/ah;->u:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/maps/ui/ah;->q:Landroid/graphics/drawable/NinePatchDrawable;
return-void
.end method
.method public final draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
.registers 20
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/instagram/android/maps/ui/ah;->s:Z
if-eqz v1, :cond_a
invoke-super/range {p0 .. p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
:goto_9
return-void
:cond_a
if-eqz p3, :cond_259
invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;
move-result-object v4
new-instance v1, Landroid/graphics/Point;
invoke-direct {v1}, Landroid/graphics/Point;-><init>()V
move-object/from16 v0, p0
iput-object v1, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->g:Lcom/instagram/android/maps/b/f;
invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
invoke-interface {v4, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
const/4 v3, 0x0
const-wide/16 v1, 0x0
move-object/from16 v0, p0
iget-wide v5, v0, Lcom/instagram/android/maps/ui/ah;->c:J
const-wide/16 v7, 0x0
cmp-long v5, v5, v7
if-nez v5, :cond_25e
move-object/from16 v0, p0
iget-object v4, v0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v4}, Lcom/instagram/android/maps/ui/i;->b()V
new-instance v4, Ljava/util/Date;
invoke-direct {v4}, Ljava/util/Date;-><init>()V
invoke-virtual {v4}, Ljava/util/Date;->getTime()J
move-result-wide v4
move-object/from16 v0, p0
iput-wide v4, v0, Lcom/instagram/android/maps/ui/ah;->c:J
:goto_4d
:cond_4d
move-object/from16 v0, p0
iget-object v4, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
sget v5, Lcom/facebook/at;->maps_font_size:I
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v4
invoke-direct/range {p0 .. p0}, Lcom/instagram/android/maps/ui/ah;->i()I
move-result v5
invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
new-instance v6, Landroid/graphics/Paint;
invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V
int-to-float v7, v4
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V
sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
const/4 v7, 0x1
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v7
invoke-virtual {v7}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v7
if-eqz v7, :cond_2c9
invoke-direct/range {p0 .. p0}, Lcom/instagram/android/maps/ui/ah;->i()I
move-result v7
if-nez v7, :cond_2c9
move-object/from16 v0, p0
iget-object v7, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
sget v8, Lcom/facebook/as;->photo_map_disabled_text:I
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I
move-result v7
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V
:goto_96
invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
move-result v7
float-to-int v7, v7
move-object/from16 v0, p0
iget-object v8, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v8
sget v9, Lcom/facebook/at;->maps_bubble_padding_x:I
invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v8
move-object/from16 v0, p0
iget-object v9, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
sget v10, Lcom/facebook/at;->maps_bubble_padding_y:I
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v9
mul-int/lit8 v4, v4, 0x2
move-object/from16 v0, p0
iget-object v10, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
move-object/from16 v0, p0
invoke-direct {v0, v10}, Lcom/instagram/android/maps/ui/ah;->a(Landroid/graphics/Point;)Landroid/graphics/Rect;
move-result-object v10
new-instance v11, Landroid/graphics/Rect;
move-object/from16 v0, p0
iget-object v12, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
iget v12, v12, Landroid/graphics/Point;->x:I
invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v13
div-int/lit8 v13, v13, 0x2
add-int/2addr v12, v13
add-int v13, v7, v8
div-int/lit8 v13, v13, 0x2
sub-int/2addr v12, v13
move-object/from16 v0, p0
iget-object v13, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
iget v13, v13, Landroid/graphics/Point;->y:I
invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v14
div-int/lit8 v14, v14, 0x2
sub-int/2addr v13, v14
div-int/lit8 v14, v4, 0x2
sub-int/2addr v13, v14
move-object/from16 v0, p0
iget-object v14, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
iget v14, v14, Landroid/graphics/Point;->x:I
invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v15
div-int/lit8 v15, v15, 0x2
add-int/2addr v14, v15
add-int/2addr v8, v7
div-int/lit8 v8, v8, 0x2
add-int/2addr v8, v14
move-object/from16 v0, p0
iget-object v14, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
iget v14, v14, Landroid/graphics/Point;->y:I
invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v15
div-int/lit8 v15, v15, 0x2
sub-int/2addr v14, v15
div-int/lit8 v4, v4, 0x2
add-int/2addr v4, v14
add-int/2addr v4, v9
invoke-direct {v11, v12, v13, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V
if-eqz v3, :cond_146
iget v4, v10, Landroid/graphics/Rect;->left:I
iget v8, v3, Landroid/graphics/Point;->x:I
add-int/2addr v4, v8
iput v4, v10, Landroid/graphics/Rect;->left:I
iget v4, v10, Landroid/graphics/Rect;->right:I
iget v8, v3, Landroid/graphics/Point;->x:I
add-int/2addr v4, v8
iput v4, v10, Landroid/graphics/Rect;->right:I
iget v4, v10, Landroid/graphics/Rect;->top:I
iget v8, v3, Landroid/graphics/Point;->y:I
add-int/2addr v4, v8
iput v4, v10, Landroid/graphics/Rect;->top:I
iget v4, v10, Landroid/graphics/Rect;->bottom:I
iget v8, v3, Landroid/graphics/Point;->y:I
add-int/2addr v4, v8
iput v4, v10, Landroid/graphics/Rect;->bottom:I
iget v4, v11, Landroid/graphics/Rect;->left:I
iget v8, v3, Landroid/graphics/Point;->x:I
add-int/2addr v4, v8
iput v4, v11, Landroid/graphics/Rect;->left:I
iget v4, v11, Landroid/graphics/Rect;->right:I
iget v8, v3, Landroid/graphics/Point;->x:I
add-int/2addr v4, v8
iput v4, v11, Landroid/graphics/Rect;->right:I
iget v4, v11, Landroid/graphics/Rect;->top:I
iget v8, v3, Landroid/graphics/Point;->y:I
add-int/2addr v4, v8
iput v4, v11, Landroid/graphics/Rect;->top:I
iget v4, v11, Landroid/graphics/Rect;->bottom:I
iget v3, v3, Landroid/graphics/Point;->y:I
add-int/2addr v3, v4
iput v3, v11, Landroid/graphics/Rect;->bottom:I
:cond_146
new-instance v3, Landroid/graphics/Paint;
invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V
const-wide v8, 0x406fe00000000000L
mul-double/2addr v1, v8
double-to-int v1, v1
invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V
invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I
move-result v1
invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->q:Landroid/graphics/drawable/NinePatchDrawable;
if-nez v1, :cond_180
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v1
if-eqz v1, :cond_2dc
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->map_counter_bubble_green:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;
move-object/from16 v0, p0
iput-object v1, v0, Lcom/instagram/android/maps/ui/ah;->q:Landroid/graphics/drawable/NinePatchDrawable;
:cond_180
:goto_180
sget-object v1, Lcom/instagram/android/maps/ui/ah;->n:Landroid/graphics/Bitmap;
if-eqz v1, :cond_18c
sget-object v1, Lcom/instagram/android/maps/ui/ah;->o:Landroid/graphics/Bitmap;
if-eqz v1, :cond_18c
sget-object v1, Lcom/instagram/android/maps/ui/ah;->p:Landroid/graphics/Bitmap;
if-nez v1, :cond_1bc
:cond_18c
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->map_photo_overlay_1:I
invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
sput-object v1, Lcom/instagram/android/maps/ui/ah;->n:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->map_photo_overlay_2:I
invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
sput-object v1, Lcom/instagram/android/maps/ui/ah;->o:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->map_photo_overlay_3:I
invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
sput-object v1, Lcom/instagram/android/maps/ui/ah;->p:Landroid/graphics/Bitmap;
:cond_1bc
invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
move-object/from16 v0, p0
invoke-direct {v0, v10}, Lcom/instagram/android/maps/ui/ah;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v2
const/4 v4, 0x1
if-ne v1, v4, :cond_2f2
sget-object v1, Lcom/instagram/android/maps/ui/ah;->n:Landroid/graphics/Bitmap;
const/4 v4, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:goto_1d9
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->k:Landroid/graphics/Bitmap;
if-eqz v1, :cond_309
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->k:Landroid/graphics/Bitmap;
const/4 v2, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:goto_1e9
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v1
if-nez v1, :cond_1fa
invoke-direct/range {p0 .. p0}, Lcom/instagram/android/maps/ui/ah;->i()I
move-result v1
const/4 v2, 0x1
if-le v1, v2, :cond_259
:cond_1fa
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->q:Landroid/graphics/drawable/NinePatchDrawable;
iget v2, v11, Landroid/graphics/Rect;->left:I
iget v4, v11, Landroid/graphics/Rect;->top:I
iget v8, v11, Landroid/graphics/Rect;->right:I
iget v9, v11, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v1, v2, v4, v8, v9}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->q:Landroid/graphics/drawable/NinePatchDrawable;
invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I
move-result v2
invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->q:Landroid/graphics/drawable/NinePatchDrawable;
move-object/from16 v0, p1
invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/at;->maps_pile_text_top_offset:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iget v2, v11, Landroid/graphics/Rect;->top:I
invoke-virtual {v11}, Landroid/graphics/Rect;->height()I
move-result v3
div-int/lit8 v3, v3, 0x2
add-int/2addr v2, v3
int-to-float v2, v2
invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F
move-result v3
invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F
move-result v4
add-float/2addr v3, v4
const/high16 v4, 0x4000
div-float/2addr v3, v4
sub-float/2addr v2, v3
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
sub-float v1, v2, v1
iget v2, v11, Landroid/graphics/Rect;->left:I
invoke-virtual {v11}, Landroid/graphics/Rect;->width()I
move-result v3
div-int/lit8 v3, v3, 0x2
add-int/2addr v2, v3
div-int/lit8 v3, v7, 0x2
sub-int/2addr v2, v3
int-to-float v2, v2
move-object/from16 v0, p1
invoke-virtual {v0, v5, v2, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
:cond_259
invoke-super/range {p0 .. p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
goto/16 :goto_9
:cond_25e
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v1
move-object/from16 v0, p0
iget-wide v5, v0, Lcom/instagram/android/maps/ui/ah;->c:J
sub-long/2addr v1, v5
long-to-double v5, v1
move-object/from16 v0, p0
iget-wide v7, v0, Lcom/instagram/android/maps/ui/ah;->b:D
cmpg-double v5, v5, v7
if-gez v5, :cond_2b3
long-to-double v1, v1
move-object/from16 v0, p0
iget-wide v5, v0, Lcom/instagram/android/maps/ui/ah;->b:D
div-double/2addr v1, v5
move-object/from16 v0, p0
iget-object v5, v0, Lcom/instagram/android/maps/ui/ah;->d:Lcom/instagram/android/maps/b/h;
if-eqz v5, :cond_4d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/instagram/android/maps/ui/ah;->d:Lcom/instagram/android/maps/b/h;
invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;
move-result-object v3
const/4 v5, 0x0
invoke-interface {v4, v3, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v4
new-instance v3, Landroid/graphics/Point;
iget v5, v4, Landroid/graphics/Point;->x:I
move-object/from16 v0, p0
iget-object v6, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
iget v6, v6, Landroid/graphics/Point;->x:I
sub-int/2addr v5, v6
int-to-double v5, v5
const-wide/high16 v7, 0x3ff0
sub-double/2addr v7, v1
mul-double/2addr v5, v7
double-to-int v5, v5
iget v4, v4, Landroid/graphics/Point;->y:I
move-object/from16 v0, p0
iget-object v6, v0, Lcom/instagram/android/maps/ui/ah;->r:Landroid/graphics/Point;
iget v6, v6, Landroid/graphics/Point;->y:I
sub-int/2addr v4, v6
int-to-double v6, v4
const-wide/high16 v8, 0x3ff0
sub-double/2addr v8, v1
mul-double/2addr v6, v8
double-to-int v4, v6
invoke-direct {v3, v5, v4}, Landroid/graphics/Point;-><init>(II)V
goto/16 :goto_4d
:cond_2b3
const-wide/high16 v1, 0x3ff0
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/instagram/android/maps/ui/ah;->t:Z
if-nez v4, :cond_4d
move-object/from16 v0, p0
iget-object v4, v0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v4}, Lcom/instagram/android/maps/ui/i;->c()V
const/4 v4, 0x1
move-object/from16 v0, p0
iput-boolean v4, v0, Lcom/instagram/android/maps/ui/ah;->t:Z
goto/16 :goto_4d
:cond_2c9
move-object/from16 v0, p0
iget-object v7, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
sget v8, Lcom/facebook/as;->white:I
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I
move-result v7
invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V
goto/16 :goto_96
:cond_2dc
move-object/from16 v0, p0
iget-object v1, v0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->map_counter_bubble_blue:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;
move-object/from16 v0, p0
iput-object v1, v0, Lcom/instagram/android/maps/ui/ah;->q:Landroid/graphics/drawable/NinePatchDrawable;
goto/16 :goto_180
:cond_2f2
const/4 v4, 0x2
if-ne v1, v4, :cond_2ff
sget-object v1, Lcom/instagram/android/maps/ui/ah;->o:Landroid/graphics/Bitmap;
const/4 v4, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto/16 :goto_1d9
:cond_2ff
sget-object v1, Lcom/instagram/android/maps/ui/ah;->p:Landroid/graphics/Bitmap;
const/4 v4, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto/16 :goto_1d9
:cond_309
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
const v2, -0x555556
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
move-object/from16 v0, p1
invoke-virtual {v0, v10, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto/16 :goto_1e9
.end method
.method public final e()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->d()V
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->invalidate()V
return-void
.end method
.method public final f()I
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->h:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->maps_square_height:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
return v0
.end method
.method protected final finalize()V
.registers 1
invoke-super {p0}, Ljava/lang/Object;->finalize()V
return-void
.end method
.method public final g()Landroid/graphics/Point;
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getProjection()Lcom/google/android/maps/Projection;
move-result-object v0
new-instance v1, Landroid/graphics/Point;
invoke-direct {v1}, Landroid/graphics/Point;-><init>()V
iget-object v2, p0, Lcom/instagram/android/maps/ui/ah;->g:Lcom/instagram/android/maps/b/f;
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;
move-result-object v2
invoke-interface {v0, v2, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/ah;->a(Landroid/graphics/Point;)Landroid/graphics/Rect;
move-result-object v0
new-instance v1, Landroid/graphics/Point;
invoke-direct {v1}, Landroid/graphics/Point;-><init>()V
iget v2, v0, Landroid/graphics/Rect;->left:I
iput v2, v1, Landroid/graphics/Point;->x:I
iget v0, v0, Landroid/graphics/Rect;->top:I
iput v0, v1, Landroid/graphics/Point;->y:I
return-object v1
.end method
.method public final onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
.registers 10
const/4 v0, 0x0
sget-boolean v1, Lcom/instagram/android/maps/ui/ah;->f:Z
if-nez v1, :cond_9
sget v1, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I
if-lez v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
iget-object v1, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getProjection()Lcom/google/android/maps/Projection;
move-result-object v1
new-instance v2, Landroid/graphics/Point;
invoke-direct {v2}, Landroid/graphics/Point;-><init>()V
iget-object v3, p0, Lcom/instagram/android/maps/ui/ah;->g:Lcom/instagram/android/maps/b/f;
invoke-virtual {v3}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;
move-result-object v3
invoke-interface {v1, v3, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
new-instance v1, Landroid/graphics/Rect;
iget v3, v2, Landroid/graphics/Point;->x:I
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v4
div-int/lit8 v4, v4, 0x2
sub-int/2addr v3, v4
iget v4, v2, Landroid/graphics/Point;->y:I
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v5
div-int/lit8 v5, v5, 0x2
sub-int/2addr v4, v5
iget v5, v2, Landroid/graphics/Point;->x:I
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int/2addr v5, v6
iget v2, v2, Landroid/graphics/Point;->y:I
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/ah;->f()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int/2addr v2, v6
invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
float-to-int v2, v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
float-to-int v3, v3
invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z
move-result v1
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/instagram/android/maps/ui/ah;->l:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->a()V
iget-object v1, p0, Lcom/instagram/android/maps/ui/ah;->e:Landroid/view/GestureDetector;
invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v1
if-nez v1, :cond_6e
invoke-super {p0, p1, p2}, Lcom/google/android/maps/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
move-result v1
if-eqz v1, :cond_9
:cond_6e
const/4 v0, 0x1
goto :goto_9
.end method
.class public final Lcom/google/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"
.field private static final b:[I
.field  a:Ljava/util/List;
.field private c:Lcom/google/zxing/client/android/a/e;
.field private final d:Landroid/graphics/Paint;
.field private e:Landroid/graphics/Bitmap;
.field private final f:I
.field private final g:I
.field private final h:I
.field private final i:I
.field private j:I
.field private k:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x8
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lcom/google/zxing/client/android/ViewfinderView;->b:[I
return-void
:array_a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x40t 0x0t 0x0t 0x0t
0x80t 0x0t 0x0t 0x0t
0xc0t 0x0t 0x0t 0x0t
0xfft 0x0t 0x0t 0x0t
0xc0t 0x0t 0x0t 0x0t
0x80t 0x0t 0x0t 0x0t
0x40t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/google/zxing/client/android/u;->viewfinder_mask:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->f:I
sget v1, Lcom/google/zxing/client/android/u;->result_view:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->g:I
sget v1, Lcom/google/zxing/client/android/u;->viewfinder_laser:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->h:I
sget v1, Lcom/google/zxing/client/android/u;->possible_result_points:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->j:I
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x5
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->a:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->k:Ljava/util/List;
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:Landroid/graphics/Bitmap;
const/4 v1, 0x0
iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:Landroid/graphics/Bitmap;
if-eqz v0, :cond_a
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_a
invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V
return-void
.end method
.method public final onDraw(Landroid/graphics/Canvas;)V
.registers 15
const/4 v12, 0x0
const/16 v11, 0xa0
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Lcom/google/zxing/client/android/a/e;
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/e;->e()Landroid/graphics/Rect;
move-result-object v8
if-eqz v8, :cond_8
invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I
move-result v9
invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I
move-result v10
iget-object v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:Landroid/graphics/Bitmap;
if-eqz v0, :cond_72
iget v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->g:I
:goto_21
invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V
int-to-float v3, v9
iget v0, v8, Landroid/graphics/Rect;->top:I
int-to-float v4, v0
iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget v0, v8, Landroid/graphics/Rect;->top:I
int-to-float v2, v0
iget v0, v8, Landroid/graphics/Rect;->left:I
int-to-float v3, v0
iget v0, v8, Landroid/graphics/Rect;->bottom:I
add-int/lit8 v0, v0, 0x1
int-to-float v4, v0
iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget v0, v8, Landroid/graphics/Rect;->right:I
add-int/lit8 v0, v0, 0x1
int-to-float v3, v0
iget v0, v8, Landroid/graphics/Rect;->top:I
int-to-float v4, v0
int-to-float v5, v9
iget v0, v8, Landroid/graphics/Rect;->bottom:I
add-int/lit8 v0, v0, 0x1
int-to-float v6, v0
iget-object v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
move-object v2, p1
invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget v0, v8, Landroid/graphics/Rect;->bottom:I
add-int/lit8 v0, v0, 0x1
int-to-float v2, v0
int-to-float v3, v9
int-to-float v4, v10
iget-object v5, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:Landroid/graphics/Bitmap;
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->e:Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v12, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_8
:cond_72
iget v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->f:I
goto :goto_21
:cond_75
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/e;->f()Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {v8}, Landroid/graphics/Rect;->width()I
move-result v1
int-to-float v1, v1
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
invoke-virtual {v8}, Landroid/graphics/Rect;->height()I
move-result v2
int-to-float v2, v2
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
int-to-float v0, v0
div-float/2addr v2, v0
iget-object v3, p0, Lcom/google/zxing/client/android/ViewfinderView;->a:Ljava/util/List;
iget-object v4, p0, Lcom/google/zxing/client/android/ViewfinderView;->k:Ljava/util/List;
iget v5, v8, Landroid/graphics/Rect;->left:I
iget v6, v8, Landroid/graphics/Rect;->top:I
invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_d9
iput-object v12, p0, Lcom/google/zxing/client/android/ViewfinderView;->k:Ljava/util/List;
:goto_a1
if-eqz v4, :cond_11a
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
const/16 v3, 0x50
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
iget v3, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:I
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V
monitor-enter v4
:try_start_b2
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_b6
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_119
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/o;
iget v7, v0, Lcom/google/zxing/o;->a:F
mul-float/2addr v7, v1
float-to-int v7, v7
add-int/2addr v7, v5
int-to-float v7, v7
iget v0, v0, Lcom/google/zxing/o;->b:F
mul-float/2addr v0, v2
float-to-int v0, v0
add-int/2addr v0, v6
int-to-float v0, v0
const/high16 v9, 0x4040
iget-object v10, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
invoke-virtual {p1, v7, v0, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
:try_end_d5
.catchall {:try_start_b2 .. :try_end_d5} :catchall_d6
goto :goto_b6
:catchall_d6
move-exception v0
monitor-exit v4
throw v0
:cond_d9
new-instance v0, Ljava/util/ArrayList;
const/4 v7, 0x5
invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->a:Ljava/util/List;
iput-object v3, p0, Lcom/google/zxing/client/android/ViewfinderView;->k:Ljava/util/List;
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
iget v7, p0, Lcom/google/zxing/client/android/ViewfinderView;->i:I
invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V
monitor-enter v3
:try_start_f0
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_f4
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_117
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/o;
iget v9, v0, Lcom/google/zxing/o;->a:F
mul-float/2addr v9, v1
float-to-int v9, v9
add-int/2addr v9, v5
int-to-float v9, v9
iget v0, v0, Lcom/google/zxing/o;->b:F
mul-float/2addr v0, v2
float-to-int v0, v0
add-int/2addr v0, v6
int-to-float v0, v0
const/high16 v10, 0x40c0
iget-object v11, p0, Lcom/google/zxing/client/android/ViewfinderView;->d:Landroid/graphics/Paint;
invoke-virtual {p1, v9, v0, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
:try_end_113
.catchall {:try_start_f0 .. :try_end_113} :catchall_114
goto :goto_f4
:catchall_114
move-exception v0
monitor-exit v3
throw v0
:try_start_117
:cond_117
monitor-exit v3
:try_end_118
.catchall {:try_start_117 .. :try_end_118} :catchall_114
goto :goto_a1
:try_start_119
:cond_119
monitor-exit v4
:cond_11a
:try_end_11a
.catchall {:try_start_119 .. :try_end_11a} :catchall_d6
const-wide/16 v1, 0x50
iget v0, v8, Landroid/graphics/Rect;->left:I
add-int/lit8 v3, v0, -0x6
iget v0, v8, Landroid/graphics/Rect;->top:I
add-int/lit8 v4, v0, -0x6
iget v0, v8, Landroid/graphics/Rect;->right:I
add-int/lit8 v5, v0, 0x6
iget v0, v8, Landroid/graphics/Rect;->bottom:I
add-int/lit8 v6, v0, 0x6
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/google/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V
goto/16 :goto_8
.end method
.method public final setCameraManager(Lcom/google/zxing/client/android/a/e;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->c:Lcom/google/zxing/client/android/a/e;
return-void
.end method
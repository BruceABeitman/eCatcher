.class public final Lcom/google/android/gms/internal/dd;
.super Landroid/os/AsyncTask;
.field final synthetic a:Lcom/google/android/gms/internal/dc;
.field private final b:Landroid/webkit/WebView;
.field private c:Landroid/graphics/Bitmap;
.method public constructor <init>(Lcom/google/android/gms/internal/dc;Landroid/webkit/WebView;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/dd;->b:Landroid/webkit/WebView;
return-void
.end method
.method private varargs declared-synchronized a()Ljava/lang/Boolean;
.registers 9
const/4 v1, 0x0
monitor-enter p0
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->c:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->c:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
if-eqz v4, :cond_12
if-nez v5, :cond_19
:cond_12
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_16
.catchall {:try_start_2 .. :try_end_16} :catchall_4a
move-result-object v0
:goto_17
monitor-exit p0
return-object v0
:cond_19
move v3, v1
move v0, v1
:goto_1b
if-ge v3, v4, :cond_31
move v2, v1
:goto_1e
if-ge v2, v5, :cond_2d
:try_start_20
iget-object v6, p0, Lcom/google/android/gms/internal/dd;->c:Landroid/graphics/Bitmap;
invoke-virtual {v6, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I
move-result v6
if-eqz v6, :cond_2a
add-int/lit8 v0, v0, 0x1
:cond_2a
add-int/lit8 v2, v2, 0xa
goto :goto_1e
:cond_2d
add-int/lit8 v2, v3, 0xa
move v3, v2
goto :goto_1b
:cond_31
int-to-double v2, v0
mul-int v0, v4, v5
int-to-double v4, v0
const-wide/high16 v6, 0x4059
div-double/2addr v4, v6
div-double/2addr v2, v4
const-wide v4, 0x3fb999999999999aL
cmpl-double v0, v2, v4
if-lez v0, :cond_48
const/4 v0, 0x1
:goto_43
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_46
.catchall {:try_start_20 .. :try_end_46} :catchall_4a
move-result-object v0
goto :goto_17
:cond_48
move v0, v1
goto :goto_43
:catchall_4a
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/dd;->a()Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 6
const-wide/16 v2, 0x0
check-cast p1, Ljava/lang/Boolean;
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v0}, Lcom/google/android/gms/internal/dc;->c(Lcom/google/android/gms/internal/dc;)J
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->c()Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v0}, Lcom/google/android/gms/internal/dc;->d(Lcom/google/android/gms/internal/dc;)J
move-result-wide v0
cmp-long v0, v0, v2
if-gtz v0, :cond_37
:cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
iput-boolean v1, v0, Lcom/google/android/gms/internal/dc;->c:Z
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v0}, Lcom/google/android/gms/internal/dc;->e(Lcom/google/android/gms/internal/dc;)Lcom/google/android/gms/internal/ev;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
iget-object v1, v1, Lcom/google/android/gms/internal/dc;->a:Lcom/google/android/gms/internal/er;
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/er;)V
:cond_36
:goto_36
return-void
:cond_37
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v0}, Lcom/google/android/gms/internal/dc;->d(Lcom/google/android/gms/internal/dc;)J
move-result-wide v0
cmp-long v0, v0, v2
if-lez v0, :cond_36
const/4 v0, 0x2
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(I)Z
move-result v0
if-eqz v0, :cond_4d
const-string v0, "Ad not detected, scheduling another run."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
:cond_4d
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v0}, Lcom/google/android/gms/internal/dc;->g(Lcom/google/android/gms/internal/dc;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
iget-object v2, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v2}, Lcom/google/android/gms/internal/dc;->f(Lcom/google/android/gms/internal/dc;)J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_36
.end method
.method protected final declared-synchronized onPreExecute()V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v0}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/internal/dc;)I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v1}, Lcom/google/android/gms/internal/dc;->b(Lcom/google/android/gms/internal/dc;)I
move-result v1
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/dd;->c:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->b:Landroid/webkit/WebView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->b:Landroid/webkit/WebView;
iget-object v1, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v1}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/internal/dc;)I
move-result v1
const/4 v2, 0x0
invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
iget-object v2, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v2}, Lcom/google/android/gms/internal/dc;->b(Lcom/google/android/gms/internal/dc;)I
move-result v2
const/4 v3, 0x0
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->measure(II)V
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->b:Landroid/webkit/WebView;
const/4 v1, 0x0
const/4 v2, 0x0
iget-object v3, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v3}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/internal/dc;)I
move-result v3
iget-object v4, p0, Lcom/google/android/gms/internal/dd;->a:Lcom/google/android/gms/internal/dc;
invoke-static {v4}, Lcom/google/android/gms/internal/dc;->b(Lcom/google/android/gms/internal/dc;)I
move-result v4
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->layout(IIII)V
new-instance v0, Landroid/graphics/Canvas;
iget-object v1, p0, Lcom/google/android/gms/internal/dd;->c:Landroid/graphics/Bitmap;
invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/google/android/gms/internal/dd;->b:Landroid/webkit/WebView;
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/google/android/gms/internal/dd;->b:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V
:try_end_5a
.catchall {:try_start_1 .. :try_end_5a} :catchall_5c
monitor-exit p0
return-void
:catchall_5c
move-exception v0
monitor-exit p0
throw v0
.end method
.class final Lcom/google/ads/mediation/jsadapter/a;
.super Landroid/os/AsyncTask;
.field final synthetic a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
.field private final b:I
.field private final c:I
.field private final d:Landroid/webkit/WebView;
.field private e:Landroid/graphics/Bitmap;
.method public constructor <init>(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;IILandroid/webkit/WebView;)V
.registers 5
iput-object p1, p0, Lcom/google/ads/mediation/jsadapter/a;->a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput p3, p0, Lcom/google/ads/mediation/jsadapter/a;->b:I
iput p2, p0, Lcom/google/ads/mediation/jsadapter/a;->c:I
iput-object p4, p0, Lcom/google/ads/mediation/jsadapter/a;->d:Landroid/webkit/WebView;
return-void
.end method
.method protected varargs declared-synchronized a([Ljava/lang/Void;)Ljava/lang/Boolean;
.registers 10
const/4 v1, 0x0
monitor-enter p0
:try_start_2
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->e:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->e:Landroid/graphics/Bitmap;
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
iget-object v6, p0, Lcom/google/ads/mediation/jsadapter/a;->e:Landroid/graphics/Bitmap;
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
.method protected a(Ljava/lang/Boolean;)V
.registers 6
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->a(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->b(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->sendAdReceivedUpdate()V
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->c(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_3f
const/4 v0, 0x2
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(I)Z
move-result v0
if-eqz v0, :cond_2d
const-string v0, "Ad not detected, scheduling another run."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
:cond_2d
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->e(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/google/ads/mediation/jsadapter/a;->a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
iget-object v2, p0, Lcom/google/ads/mediation/jsadapter/a;->a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
invoke-static {v2}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->d(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_14
:cond_3f
const-string v0, "Ad not detected, Not scheduling anymore runs."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->a:Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
invoke-static {v0}, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->b(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->sendAdNotReceivedUpdate()V
goto :goto_14
.end method
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/google/ads/mediation/jsadapter/a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/google/ads/mediation/jsadapter/a;->a(Ljava/lang/Boolean;)V
return-void
.end method
.method protected declared-synchronized onPreExecute()V
.registers 6
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/google/ads/mediation/jsadapter/a;->c:I
iget v1, p0, Lcom/google/ads/mediation/jsadapter/a;->b:I
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->e:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->d:Landroid/webkit/WebView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->d:Landroid/webkit/WebView;
iget v1, p0, Lcom/google/ads/mediation/jsadapter/a;->c:I
const/4 v2, 0x0
invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
iget v2, p0, Lcom/google/ads/mediation/jsadapter/a;->b:I
const/4 v3, 0x0
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->measure(II)V
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->d:Landroid/webkit/WebView;
const/4 v1, 0x0
const/4 v2, 0x0
iget v3, p0, Lcom/google/ads/mediation/jsadapter/a;->c:I
iget v4, p0, Lcom/google/ads/mediation/jsadapter/a;->b:I
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->layout(IIII)V
new-instance v0, Landroid/graphics/Canvas;
iget-object v1, p0, Lcom/google/ads/mediation/jsadapter/a;->e:Landroid/graphics/Bitmap;
invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/google/ads/mediation/jsadapter/a;->d:Landroid/webkit/WebView;
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/a;->d:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V
:try_end_42
.catchall {:try_start_1 .. :try_end_42} :catchall_44
monitor-exit p0
return-void
:catchall_44
move-exception v0
monitor-exit p0
throw v0
.end method
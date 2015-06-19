.class final Lcom/bbm/ui/activities/jj;
.super Lcom/bbm/util/b;
.source "EphemeralImageActivity.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/bbm/ui/activities/EphemeralImageActivity;
.method constructor <init>(Lcom/bbm/ui/activities/EphemeralImageActivity;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/jj;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/ui/activities/jj;->b:Ljava/lang/String;
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
return-void
.end method
.method private varargs b()Landroid/graphics/Bitmap;
.registers 12
const/4 v1, 0x0
const/4 v9, 0x1
const/4 v8, 0x0
:try_start_3
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
iget-object v2, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/EphemeralImageActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
iget-object v2, p0, Lcom/bbm/ui/activities/jj;->a:Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-static {v2, v0, v3, v4, v5}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;ZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;
:try_end_1e
.catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_1e} :catch_4a
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_58
move-result-object v0
:try_start_1f
const-string v1, "EphemeralImageActivity %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const-string v4, "Bitmap size is (%dW x %dH)"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_49
:try_end_49
.catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_49} :catch_62
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_49} :catch_60
return-object v0
:catch_4a
move-exception v0
move-object v10, v0
move-object v0, v1
move-object v1, v10
:goto_4e
const-string v2, "BBM unable to load image - OOM"
new-array v3, v9, [Ljava/lang/Object;
aput-object v1, v3, v8
invoke-static {v2, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_49
:catch_58
move-exception v0
move-object v10, v0
move-object v0, v1
move-object v1, v10
:goto_5c
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_49
:catch_60
move-exception v1
goto :goto_5c
:catch_62
move-exception v1
goto :goto_4e
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/bbm/ui/activities/jj;->b()Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 6
const/4 v3, 0x0
check-cast p1, Landroid/graphics/Bitmap;
if-eqz p1, :cond_55
iget-object v0, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->a(Lcom/bbm/ui/activities/EphemeralImageActivity;)Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_55
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
iget-object v0, p0, Lcom/bbm/ui/activities/jj;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/a;->l(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->a(Lcom/bbm/ui/activities/EphemeralImageActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->c(Lcom/bbm/ui/activities/EphemeralImageActivity;)Landroid/widget/ProgressBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/EphemeralImageActivity;->b(Lcom/bbm/ui/activities/EphemeralImageActivity;)J
move-result-wide v1
long-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->c(Lcom/bbm/ui/activities/EphemeralImageActivity;)Landroid/widget/ProgressBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/EphemeralImageActivity;->b(Lcom/bbm/ui/activities/EphemeralImageActivity;)J
move-result-wide v1
long-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-object v2, p0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/EphemeralImageActivity;->c(Lcom/bbm/ui/activities/EphemeralImageActivity;)Landroid/widget/ProgressBar;
move-result-object v2
invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
new-instance v2, Lcom/bbm/ui/activities/jk;
invoke-direct {v2, p0, v0, v1}, Lcom/bbm/ui/activities/jk;-><init>(Lcom/bbm/ui/activities/jj;J)V
new-array v0, v3, [Ljava/lang/Void;
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/jk;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
:cond_55
return-void
.end method
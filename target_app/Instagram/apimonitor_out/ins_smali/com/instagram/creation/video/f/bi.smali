.class public final Lcom/instagram/creation/video/f/bi;
.super Lcom/instagram/creation/video/f/aw;
.source "VideoTrimFragment.java"
.implements Lcom/instagram/creation/video/d/c;
.implements Lcom/instagram/creation/video/ui/c;
.field  a:[D
.field private aa:Landroid/view/View;
.field private ab:Landroid/view/animation/Animation;
.field private ac:Landroid/view/animation/Animation;
.field private ad:I
.field private ae:Landroid/view/View;
.field private af:Z
.field private ag:I
.field private ah:D
.field private ai:D
.field private aj:Ljava/io/File;
.field private ak:J
.field private al:Landroid/media/MediaMetadataRetriever;
.field private am:Lcom/instagram/creation/b/a/b;
.field private an:Lcom/instagram/creation/b/a/a;
.field private ao:Ljava/util/concurrent/ThreadPoolExecutor;
.field private final ap:Landroid/os/Handler;
.field private b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
.field private c:Lcom/instagram/creation/video/l/h;
.field private d:Landroid/widget/LinearLayout;
.field private e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
.field private f:Landroid/view/View;
.field private g:Landroid/view/View;
.field private h:Landroid/widget/ProgressBar;
.field private i:Lcom/instagram/creation/video/ui/r;
.method public constructor <init>()V
.registers 8
const/4 v1, 0x1
invoke-direct {p0}, Lcom/instagram/creation/video/f/aw;-><init>()V
const/4 v0, 0x0
new-array v0, v0, [D
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->a:[D
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const-wide/16 v3, 0x0
sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
move v2, v1
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ap:Landroid/os/Handler;
return-void
.end method
.method private W()D
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->h(I)D
move-result-wide v0
return-wide v0
.end method
.method private Y()D
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I
move-result v0
iget v1, p0, Lcom/instagram/creation/video/f/bi;->ag:I
add-int/2addr v0, v1
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->h(I)D
move-result-wide v0
return-wide v0
.end method
.method private Z()D
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v0
int-to-double v0, v0
iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ai:D
mul-double/2addr v0, v2
return-wide v0
.end method
.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.registers 10
const/16 v5, 0x8
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-static {v2}, Lcom/instagram/creation/video/l/c;->b(Lcom/instagram/creation/b/a/a;)Z
move-result v2
if-nez v2, :cond_55
iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->c()I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_55
iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->c()I
move-result v2
invoke-static {v2}, Lcom/instagram/camera/h;->a(I)Landroid/hardware/Camera$CameraInfo;
move-result-object v3
iget v2, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I
iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I
if-ne v3, v0, :cond_40
:goto_25
move v1, v0
move v0, v2
:goto_27
iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ai:D
double-to-int v2, v2
iget-wide v3, p0, Lcom/instagram/creation/video/f/bi;->ah:D
double-to-int v3, v3
invoke-static {p1, v2, v3, v0, v1}, Lcom/instagram/n/c/a;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
move-result-object v1
if-nez p2, :cond_42
new-array v0, v5, [F
fill-array-data v0, :array_58
invoke-static {v1, v0}, Lcom/instagram/n/c/a;->a(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:goto_3f
return-object v0
:cond_40
move v0, v1
goto :goto_25
:cond_42
add-int/lit8 v0, p3, -0x1
if-ne p2, v0, :cond_53
new-array v0, v5, [F
fill-array-data v0, :array_6c
invoke-static {v1, v0}, Lcom/instagram/n/c/a;->a(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_3f
:cond_53
move-object v0, v1
goto :goto_3f
:cond_55
move v0, v1
goto :goto_27
nop
:array_58
.array-data 0x4
0x0t 0x0t 0x80t 0x40t
0x0t 0x0t 0x80t 0x40t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x40t
0x0t 0x0t 0x80t 0x40t
.end array-data
:array_6c
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x40t
0x0t 0x0t 0x80t 0x40t
0x0t 0x0t 0x80t 0x40t
0x0t 0x0t 0x80t 0x40t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/bi;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/bi;->am:Lcom/instagram/creation/b/a/b;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/l/h;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
return-object v0
.end method
.method private a(F)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0, p1}, Lcom/instagram/creation/b/a/a;->a(F)Lcom/instagram/creation/b/a/a;
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->g()V
return-void
.end method
.method private a(II)V
.registers 3
if-ge p1, p2, :cond_a
:goto_2
if-gt p1, p2, :cond_12
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->i(I)V
add-int/lit8 p1, p1, 0x1
goto :goto_2
:cond_a
:goto_a
if-lt p2, p1, :cond_12
invoke-direct {p0, p2}, Lcom/instagram/creation/video/f/bi;->i(I)V
add-int/lit8 p2, p2, -0x1
goto :goto_a
:cond_12
return-void
.end method
.method private a(Landroid/widget/ImageView;I)V
.registers 10
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v5
const-wide v0, 0x412e848000000000L
iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->a:[D
aget-wide v2, v2, p2
mul-double/2addr v0, v2
double-to-int v0, v0
int-to-long v0, v0
iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->al:Landroid/media/MediaMetadataRetriever;
const/4 v3, 0x2
invoke-virtual {v2, v0, v1, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_2e
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->a:[D
array-length v1, v1
invoke-direct {p0, v0, p2, v1}, Lcom/instagram/creation/video/f/bi;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v3
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
new-instance v0, Lcom/instagram/creation/video/f/bl;
move-object v1, p0
move-object v2, p1
move v4, p2
invoke-direct/range {v0 .. v6}, Lcom/instagram/creation/video/f/bl;-><init>(Lcom/instagram/creation/video/f/bi;Landroid/widget/ImageView;Landroid/graphics/Bitmap;IJ)V
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
:cond_2e
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/bi;F)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->a(F)V
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/bi;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->j(I)V
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/bi;Landroid/widget/ImageView;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/f/bi;->a(Landroid/widget/ImageView;I)V
return-void
.end method
.method private a(Lcom/instagram/creation/video/ui/s;II)V
.registers 8
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;
if-nez v0, :cond_f
new-instance v0, Lcom/instagram/creation/video/ui/r;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;
:cond_f
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->isShowing()Z
move-result v0
if-nez v0, :cond_3b
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->trim_root:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;
sget v2, Lcom/facebook/ba;->Tooltip_Popup:I
invoke-virtual {v1, v2}, Lcom/instagram/creation/video/ui/r;->setAnimationStyle(I)V
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;
const/16 v2, 0x53
invoke-virtual {v1, v0, v2, p2, p3}, Lcom/instagram/creation/video/ui/r;->showAtLocation(Landroid/view/View;III)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ap:Landroid/os/Handler;
new-instance v1, Lcom/instagram/creation/video/f/bn;
invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bn;-><init>(Lcom/instagram/creation/video/f/bi;)V
const-wide/16 v2, 0x7d0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_3b
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/bi;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/video/f/bi;->af:Z
return p1
.end method
.method private aa()D
.registers 5
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Z()D
move-result-wide v0
iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v2}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I
move-result v2
int-to-double v2, v2
sub-double/2addr v0, v2
return-wide v0
.end method
.method private ab()D
.registers 3
const/16 v0, 0xbb8
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->g(I)D
move-result-wide v0
return-wide v0
.end method
.method private ac()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->ac:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private ad()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->ab:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private ae()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;
:cond_c
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ap:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/creation/video/f/bi;I)D
.registers 4
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->g(I)D
move-result-wide v0
return-wide v0
.end method
.method static synthetic b(Lcom/instagram/creation/video/f/bi;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/f/bi;->af:Z
return v0
.end method
.method static synthetic c(Lcom/instagram/creation/video/f/bi;)D
.registers 3
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Y()D
move-result-wide v0
return-wide v0
.end method
.method static synthetic c(Lcom/instagram/creation/video/f/bi;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->l(I)V
return-void
.end method
.method static synthetic d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/creation/video/f/bi;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->k(I)V
return-void
.end method
.method static synthetic e(Lcom/instagram/creation/video/f/bi;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aj:Ljava/io/File;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/creation/video/f/bi;)J
.registers 3
iget-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ak:J
return-wide v0
.end method
.method private g(I)D
.registers 6
int-to-double v0, p1
iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ai:D
mul-double/2addr v0, v2
const-wide v2, 0x409f400000000000L
div-double/2addr v0, v2
return-wide v0
.end method
.method static synthetic g(Lcom/instagram/creation/video/f/bi;)D
.registers 3
iget-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ai:D
return-wide v0
.end method
.method private h(I)D
.registers 6
int-to-double v0, p1
const-wide/high16 v2, 0x4000
mul-double/2addr v0, v2
const-wide v2, 0x408f400000000000L
mul-double/2addr v0, v2
iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ai:D
div-double/2addr v0, v2
return-wide v0
.end method
.method static synthetic h(Lcom/instagram/creation/video/f/bi;)D
.registers 3
iget-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ah:D
return-wide v0
.end method
.method static synthetic i(Lcom/instagram/creation/video/f/bi;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;
return-object v0
.end method
.method private i(I)V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
if-eqz v0, :cond_1a
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-nez v1, :cond_1a
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;
new-instance v2, Lcom/instagram/creation/video/f/bm;
invoke-direct {v2, p0, v0, p1}, Lcom/instagram/creation/video/f/bm;-><init>(Lcom/instagram/creation/video/f/bi;Landroid/widget/ImageView;I)V
invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
:cond_1a
return-void
.end method
.method static synthetic j(Lcom/instagram/creation/video/f/bi;)D
.registers 3
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ab()D
move-result-wide v0
return-wide v0
.end method
.method private j(I)V
.registers 10
const/4 v6, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v1}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getWidth()I
move-result v1
int-to-double v1, v1
iget-wide v3, p0, Lcom/instagram/creation/video/f/bi;->ai:D
div-double/2addr v1, v3
double-to-int v1, v1
add-int/lit8 v1, v1, 0x1
iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v2}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I
move-result v2
int-to-double v2, v2
iget-wide v4, p0, Lcom/instagram/creation/video/f/bi;->ai:D
div-double/2addr v2, v4
double-to-int v2, v2
add-int v3, v2, v1
invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
move-result v3
add-int/lit8 v4, v2, -0x1
sub-int/2addr v4, v1
invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I
move-result v4
add-int/lit8 v5, v2, -0x1
invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I
move-result v5
add-int/lit8 v6, v3, 0x1
invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I
move-result v6
add-int/lit8 v7, v3, 0x1
add-int/2addr v1, v7
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-direct {p0, v2, v3}, Lcom/instagram/creation/video/f/bi;->a(II)V
sget v1, Lcom/instagram/creation/video/f/br;->b:I
if-ne p1, v1, :cond_56
invoke-direct {p0, v6, v0}, Lcom/instagram/creation/video/f/bi;->a(II)V
invoke-direct {p0, v5, v4}, Lcom/instagram/creation/video/f/bi;->a(II)V
:goto_55
return-void
:cond_56
invoke-direct {p0, v5, v4}, Lcom/instagram/creation/video/f/bi;->a(II)V
invoke-direct {p0, v6, v0}, Lcom/instagram/creation/video/f/bi;->a(II)V
goto :goto_55
.end method
.method static synthetic k(Lcom/instagram/creation/video/f/bi;)D
.registers 3
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Z()D
move-result-wide v0
return-wide v0
.end method
.method private k(I)V
.registers 8
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v0
invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I
move-result v1
iget v2, p0, Lcom/instagram/creation/video/f/bi;->ag:I
if-ge v2, v1, :cond_3a
sub-int v2, v0, v1
iget-object v3, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v3
div-int/lit8 v3, v3, 0x2
if-ge v2, v3, :cond_3a
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D
move-result-wide v1
int-to-double v3, v0
cmpg-double v1, v1, v3
if-gez v1, :cond_36
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D
move-result-wide v2
int-to-double v4, v0
sub-double/2addr v2, v4
double-to-int v2, v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->scrollBy(II)V
:goto_36
:cond_36
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->l(I)V
return-void
:cond_3a
move v0, v1
goto :goto_36
.end method
.method static synthetic l(Lcom/instagram/creation/video/f/bi;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;
return-object v0
.end method
.method private l(I)V
.registers 5
iput p1, p0, Lcom/instagram/creation/video/f/bi;->ag:I
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->h:Landroid/widget/ProgressBar;
iget v1, p0, Lcom/instagram/creation/video/f/bi;->ag:I
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget v1, p0, Lcom/instagram/creation/video/f/bi;->ag:I
iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v1}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getWidth()I
move-result v1
iget v2, p0, Lcom/instagram/creation/video/f/bi;->ag:I
sub-int/2addr v1, v2
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->invalidate()V
return-void
.end method
.method private m(I)I
.registers 6
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Z()D
move-result-wide v0
iget v2, p0, Lcom/instagram/creation/video/f/bi;->ad:I
mul-int/lit8 v2, v2, 0x2
int-to-double v2, v2
sub-double/2addr v0, v2
int-to-double v2, p1
mul-double/2addr v0, v2
iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ak:J
long-to-double v2, v2
div-double/2addr v0, v2
double-to-int v0, v0
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->n(I)V
return p1
.end method
.method static synthetic m(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/FilmstripScrollView;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
return-object v0
.end method
.method static synthetic n(Lcom/instagram/creation/video/f/bi;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;
return-object v0
.end method
.method private n(I)V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I
move-result v1
sub-int v1, p1, v1
iget v2, p0, Lcom/instagram/creation/video/f/bi;->ad:I
add-int/2addr v1, v2
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
return-void
.end method
.method static synthetic o(Lcom/instagram/creation/video/f/bi;)I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/f/bi;->ag:I
return v0
.end method
.method static synthetic p(Lcom/instagram/creation/video/f/bi;)D
.registers 3
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D
move-result-wide v0
return-wide v0
.end method
.method static synthetic q(Lcom/instagram/creation/video/f/bi;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ae()V
return-void
.end method
.method static synthetic r(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
return-object v0
.end method
.method public final A_()V
.registers 2
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ad()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->m(I)I
return-void
.end method
.method public final E()V
.registers 5
invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->E()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->c()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->e()V
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Z()D
move-result-wide v0
const-wide/16 v2, 0x0
cmpl-double v0, v0, v2
if-lez v0, :cond_1c
sget v0, Lcom/instagram/creation/video/f/br;->b:I
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->j(I)V
:cond_1c
return-void
.end method
.method public final F()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->d()V
invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->F()V
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ae()V
return-void
.end method
.method public final G()V
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->G()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
return-void
.end method
.method public final U()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->j()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->n(I)V
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ad()V
return-void
.end method
.method public final V()V
.registers 6
sget-object v0, Lcom/instagram/creation/video/ui/s;->c:Lcom/instagram/creation/video/ui/s;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
const/16 v2, 0xe
invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v1
float-to-int v1, v1
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->D()Landroid/view/View;
move-result-object v2
sget v3, Lcom/facebook/av;->creation_main_actions:I
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getHeight()I
move-result v2
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ab()D
move-result-wide v3
double-to-int v3, v3
sub-int v1, v3, v1
invoke-direct {p0, v0, v1, v2}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/ui/s;II)V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
const/4 v5, 0x0
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->o()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z
move-result v1
if-eqz v1, :cond_118
sget v0, Lcom/facebook/aw;->fragment_video_trim:I
:goto_d
invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V
new-instance v0, Lcom/instagram/creation/video/ui/a/a;
invoke-direct {v0}, Lcom/instagram/creation/video/ui/a/a;-><init>()V
sget v3, Lcom/facebook/av;->play_button:I
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/instagram/creation/video/ui/a/a;->a(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;
move-result-object v0
sget v3, Lcom/facebook/av;->seek_frame_indicator:I
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/instagram/creation/video/ui/a/a;->b(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;
move-result-object v3
sget v0, Lcom/facebook/av;->textureview:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
new-instance v0, Lcom/instagram/creation/video/l/h;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v4
invoke-direct {v0, v4, v3, v5}, Lcom/instagram/creation/video/l/h;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/a/a;Z)V
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
iget-object v3, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0, v3}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setDelegate(Lcom/instagram/creation/video/ui/d;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
iget-object v3, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0, v3}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/b/a/a;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
iget-object v3, p0, Lcom/instagram/creation/video/f/bi;->am:Lcom/instagram/creation/b/a/b;
invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->d()I
move-result v3
invoke-virtual {v0, v3}, Lcom/instagram/creation/video/l/h;->a(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0, p0}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/d/c;)V
sget v0, Lcom/facebook/av;->filmstrip_keyframes_holder:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;
sget v0, Lcom/facebook/av;->filmstrip_scrollview:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/ui/FilmstripScrollView;
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v0, p0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a(Lcom/instagram/creation/video/ui/c;)V
sget v0, Lcom/facebook/av;->trim_handle:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;
sget v0, Lcom/facebook/av;->filmstrip_dimmer:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;
sget v0, Lcom/facebook/av;->filmstrip_play_indicator:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
sget v0, Lcom/facebook/av;->filmstrip_scrollview_container:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;
sget v0, Lcom/facebook/av;->trim_length_bar:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->h:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->h:Landroid/widget/ProgressBar;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V
if-nez v1, :cond_c9
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->o()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
const/16 v3, 0x42
invoke-static {v1, v3}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v1
float-to-int v1, v1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_c9
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v0
int-to-double v0, v0
const-wide/high16 v3, 0x401e
div-double/2addr v0, v3
iput-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ai:D
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
int-to-double v0, v0
iput-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ah:D
new-instance v0, Landroid/view/GestureDetector;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v1
new-instance v3, Lcom/instagram/creation/video/f/bs;
invoke-direct {v3, p0, v5}, Lcom/instagram/creation/video/f/bs;-><init>(Lcom/instagram/creation/video/f/bi;B)V
invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
new-instance v1, Lcom/instagram/creation/video/f/bj;
invoke-direct {v1, p0, v0}, Lcom/instagram/creation/video/f/bj;-><init>(Lcom/instagram/creation/video/f/bi;Landroid/view/GestureDetector;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new-instance v0, Landroid/view/GestureDetector;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v1
new-instance v3, Lcom/instagram/creation/video/f/bo;
invoke-direct {v3, p0, v5}, Lcom/instagram/creation/video/f/bo;-><init>(Lcom/instagram/creation/video/f/bi;B)V
invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
new-instance v3, Lcom/instagram/creation/video/f/bk;
invoke-direct {v3, p0, v0}, Lcom/instagram/creation/video/f/bk;-><init>(Lcom/instagram/creation/video/f/bi;Landroid/view/GestureDetector;)V
invoke-virtual {v1, v3}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-object v2
:cond_118
sget v0, Lcom/facebook/aw;->fragment_video_trim_small:I
goto/16 :goto_d
.end method
.method public final a(I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->m(I)I
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lcom/instagram/creation/video/f/aw;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->X()Lcom/instagram/creation/b/a/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->am:Lcom/instagram/creation/b/a/b;
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->am:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->aj:Ljava/io/File;
new-instance v0, Landroid/media/MediaMetadataRetriever;
invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->al:Landroid/media/MediaMetadataRetriever;
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->al:Landroid/media/MediaMetadataRetriever;
iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->aj:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->h()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ak:J
iget-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ak:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gez v0, :cond_4f
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->al:Landroid/media/MediaMetadataRetriever;
invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Landroid/media/MediaMetadataRetriever;)J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ak:J
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
iget-wide v1, p0, Lcom/instagram/creation/video/f/bi;->ak:J
invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/b/a/a;->a(J)Lcom/instagram/creation/b/a/a;
:cond_4f
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->import_play_fade_in:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ab:Landroid/view/animation/Animation;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->import_play_fade_out:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ac:Landroid/view/animation/Animation;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->o()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->trim_play_indicator_min_padding:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/f/bi;->ad:I
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 6
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/f/aw;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->creation_main_actions:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->seek_frame_indicator:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
sget-object v0, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/av;)V
new-instance v0, Lcom/instagram/creation/video/f/bp;
invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/f/bp;-><init>(Lcom/instagram/creation/video/f/bi;B)V
new-array v1, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/bp;->b([Ljava/lang/Object;)Lcom/instagram/common/b/a;
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->k()V
return-void
.end method
.method public final c()V
.registers 1
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ac()V
return-void
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 2
return-void
.end method
.method public final d()V
.registers 1
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ac()V
return-void
.end method
.method public final f(I)V
.registers 7
if-ltz p1, :cond_5d
sget v0, Lcom/instagram/creation/video/f/br;->b:I
:goto_4
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->j(I)V
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D
move-result-wide v0
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ab()D
move-result-wide v2
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v4
invoke-virtual {v4}, Lcom/instagram/k/b/a;->p()Z
move-result v4
if-nez v4, :cond_20
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v4
invoke-virtual {v4}, Lcom/instagram/k/b/a;->q()Z
:cond_20
cmpl-double v0, v0, v2
if-lez v0, :cond_60
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->W()D
move-result-wide v1
double-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;
:goto_2e
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I
move-result v0
int-to-long v0, v0
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Z()D
move-result-wide v2
long-to-double v0, v0
sub-double v0, v2, v0
double-to-int v0, v0
iget v1, p0, Lcom/instagram/creation/video/f/bi;->ag:I
if-le v1, v0, :cond_44
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->l(I)V
:cond_44
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Y()D
move-result-wide v1
double-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;
invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->h()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->n(I)V
return-void
:cond_5d
sget v0, Lcom/instagram/creation/video/f/br;->a:I
goto :goto_4
:cond_60
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;
invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Y()D
move-result-wide v1
double-to-int v1, v1
add-int/lit16 v1, v1, -0xbb8
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;
invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->V()V
goto :goto_2e
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "video_trim"
return-object v0
.end method
.method public final l_()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->l_()V
iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a()V
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;
iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->h:Landroid/widget/ProgressBar;
return-void
.end method
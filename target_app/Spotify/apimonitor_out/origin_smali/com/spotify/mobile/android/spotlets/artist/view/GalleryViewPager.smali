.class public Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/spotlets/artist/view/c;

.field private b:Lcom/spotify/mobile/android/spotlets/artist/view/b;

.field private c:Lcom/spotify/mobile/android/util/TouchLifecycle;

.field private d:F

.field private final e:Lcom/spotify/mobile/android/util/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->e:Lcom/spotify/mobile/android/util/dq;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->e:Lcom/spotify/mobile/android/util/dq;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->f()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)F
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->d:F

    return v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)Lcom/spotify/mobile/android/spotlets/artist/view/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->d:F

    new-instance v0, Lcom/spotify/mobile/android/util/TouchLifecycle;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->e:Lcom/spotify/mobile/android/util/dq;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle;-><init>(Lcom/spotify/mobile/android/util/dq;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->c:Lcom/spotify/mobile/android/util/TouchLifecycle;

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b:Lcom/spotify/mobile/android/spotlets/artist/view/b;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b:Lcom/spotify/mobile/android/spotlets/artist/view/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b:Lcom/spotify/mobile/android/spotlets/artist/view/b;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/b;->a()V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->c:Lcom/spotify/mobile/android/util/TouchLifecycle;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

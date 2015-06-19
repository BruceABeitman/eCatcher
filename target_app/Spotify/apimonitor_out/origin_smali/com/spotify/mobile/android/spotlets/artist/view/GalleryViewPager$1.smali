.class final Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final a(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final b(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)Lcom/spotify/mobile/android/spotlets/artist/view/c;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)Lcom/spotify/mobile/android/spotlets/artist/view/c;

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)Lcom/spotify/mobile/android/spotlets/artist/view/c;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)Lcom/spotify/mobile/android/spotlets/artist/view/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c;->a()V

    :cond_11
    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)Lcom/spotify/mobile/android/spotlets/artist/view/c;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b(Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;)Lcom/spotify/mobile/android/spotlets/artist/view/c;

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

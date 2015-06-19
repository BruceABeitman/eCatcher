.class final Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->c(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(Z)V

    return-void
.end method

.method public final a(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->b(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final b(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->b(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(Z)V

    return-void
.end method

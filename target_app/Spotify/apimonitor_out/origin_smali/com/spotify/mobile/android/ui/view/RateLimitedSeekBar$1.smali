.class final Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(Lcom/spotify/mobile/android/ui/view/s;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->b(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_46

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->c(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)I

    move-result v2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->d(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)I

    move-result v3

    if-lt v2, v3, :cond_46

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;J)J

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;I)I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->e(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)Lcom/spotify/mobile/android/ui/view/s;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->c()F

    move-result v1

    invoke-interface {v0, v1, p3}, Lcom/spotify/mobile/android/ui/view/s;->a(FZ)V

    :cond_46
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->e(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)Lcom/spotify/mobile/android/ui/view/s;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/s;->a()V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->e(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)Lcom/spotify/mobile/android/ui/view/s;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar$1;->a:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/s;->a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)V

    return-void
.end method

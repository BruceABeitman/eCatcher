.class final Lcom/bbm/ui/h;
.super Ljava/lang/Object;
.source "AudioProgressBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/AudioProgressBar;


# direct methods
.method constructor <init>(Lcom/bbm/ui/AudioProgressBar;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/h;->a:Lcom/bbm/ui/AudioProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    if-eqz p3, :cond_20

    iget-object v0, p0, Lcom/bbm/ui/h;->a:Lcom/bbm/ui/AudioProgressBar;

    invoke-static {v0}, Lcom/bbm/ui/AudioProgressBar;->a(Lcom/bbm/ui/AudioProgressBar;)Lcom/bbm/ui/k;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bbm/ui/h;->a:Lcom/bbm/ui/AudioProgressBar;

    invoke-static {v0}, Lcom/bbm/ui/AudioProgressBar;->a(Lcom/bbm/ui/AudioProgressBar;)Lcom/bbm/ui/k;

    move-result-object v0

    int-to-float v1, p2

    iget-object v2, p0, Lcom/bbm/ui/h;->a:Lcom/bbm/ui/AudioProgressBar;

    invoke-static {v2}, Lcom/bbm/ui/AudioProgressBar;->b(Lcom/bbm/ui/AudioProgressBar;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/bbm/ui/k;->a(F)V

    :cond_20
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.class Lcom/millennialmedia/android/h;
.super Lcom/millennialmedia/android/cj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/millennialmedia/android/h;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/cj;-><init>(Lcom/millennialmedia/android/ch;Landroid/content/Context;)V

    new-instance v0, Lcom/millennialmedia/android/o;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/o;-><init>(Lcom/millennialmedia/android/bp;)V

    iput-object v0, p0, Lcom/millennialmedia/android/h;->p:Lcom/millennialmedia/android/cv;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/h;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Lcom/millennialmedia/android/AdViewOverlayView;)V

    return-void
.end method

.method b()Z
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/h;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/millennialmedia/android/h;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->e()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method c()Lcom/millennialmedia/android/cu;
    .registers 5

    const-string v0, "AdViewOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning a client for user: OverlayWebViewClient, adimpl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/h;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v2, v2, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/h;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;

    iget-wide v0, v0, Lcom/millennialmedia/android/bp;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/millennialmedia/android/h;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->d()Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_32
    new-instance v0, Lcom/millennialmedia/android/q;

    iget-object v1, p0, Lcom/millennialmedia/android/h;->p:Lcom/millennialmedia/android/cv;

    new-instance v2, Lcom/millennialmedia/android/n;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/n;-><init>(Lcom/millennialmedia/android/bp;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/q;-><init>(Lcom/millennialmedia/android/cv;Lcom/millennialmedia/android/az;)V

    iput-object v0, p0, Lcom/millennialmedia/android/h;->o:Lcom/millennialmedia/android/cu;

    :goto_40
    return-object v0

    :cond_41
    new-instance v0, Lcom/millennialmedia/android/bm;

    iget-object v1, p0, Lcom/millennialmedia/android/h;->p:Lcom/millennialmedia/android/cv;

    new-instance v2, Lcom/millennialmedia/android/n;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/n;-><init>(Lcom/millennialmedia/android/bp;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/bm;-><init>(Lcom/millennialmedia/android/cv;Lcom/millennialmedia/android/az;)V

    iput-object v0, p0, Lcom/millennialmedia/android/h;->o:Lcom/millennialmedia/android/cu;

    goto :goto_40
.end method

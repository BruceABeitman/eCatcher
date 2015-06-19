.class public abstract Lcom/instagram/creation/video/f/ad;
.super Lcom/instagram/creation/video/f/aw;
.source "VideoCoverFragmentBase.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/instagram/creation/video/gl/y;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field protected a:Lcom/instagram/creation/b/a/a;

.field private aa:Landroid/view/View;

.field private ab:Lcom/instagram/creation/video/widget/c;

.field private ac:Landroid/widget/SeekBar;

.field private ad:Z

.field private ae:Landroid/os/Handler;

.field protected b:Z

.field protected c:Z

.field protected volatile d:Z

.field protected final e:Ljava/lang/Object;

.field private final f:Landroid/content/IntentFilter;

.field private final g:Lcom/instagram/creation/video/f/ag;

.field private h:I

.field private i:Lcom/instagram/creation/video/widget/PreviewTextureView;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/f/aw;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "VideoCoverFragmentBase.INTENT_ACTION_SAVE_COVER_FRAME"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->f:Landroid/content/IntentFilter;

    new-instance v0, Lcom/instagram/creation/video/f/ag;

    invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/f/ag;-><init>(Lcom/instagram/creation/video/f/ad;B)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->g:Lcom/instagram/creation/video/f/ag;

    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->b:Z

    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->c:Z

    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->e:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/instagram/creation/video/f/ae;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/ae;-><init>(Lcom/instagram/creation/video/f/ad;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    return-void
.end method

.method protected static varargs V()V
    .registers 0

    return-void
.end method

.method private Y()V
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->U()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    if-eqz v0, :cond_1a

    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->ad:Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/ad;->b:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->U()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ah;->k()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iput-boolean v2, p0, Lcom/instagram/creation/video/f/ad;->c:Z

    goto :goto_1a
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ad;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->aa:Landroid/view/View;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->U()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->U()Lcom/instagram/creation/video/f/ah;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/f/ad;->h:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/ah;->a(I)V

    :cond_21
    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/ad;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ad;->Y()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/ad;)I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    return v0
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/ad;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/f/ad;->ad:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/creation/video/f/ad;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/creation/video/f/ad;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/PreviewTextureView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    return-object v0
.end method


# virtual methods
.method public final E()V
    .registers 4

    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->E()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->setDependent(Lcom/instagram/creation/video/gl/y;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->c()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoCoverFragmentBase.SAVE_AND_FINISH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->g:Lcom/instagram/creation/video/f/ag;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->f:Landroid/content/IntentFilter;

    invoke-static {v0, v1}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_21
    return-void
.end method

.method public final F()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->F()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->b()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->g:Lcom/instagram/creation/video/f/ag;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public G()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->G()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract U()Lcom/instagram/creation/video/f/ah;
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->X()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoCoverFragmentBase.COVER_FRAME_TIME_MS"

    iget-object v2, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    iget v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v1

    if-ge v0, v1, :cond_45

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget v0, Lcom/facebook/aw;->fragment_video_cover:I

    :goto_3f
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_45
    iget v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v1

    if-le v0, v1, :cond_33

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    goto :goto_33

    :cond_58
    sget v0, Lcom/facebook/aw;->fragment_video_cover_small:I

    goto :goto_3f
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/f/aw;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v2, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lcom/facebook/av;->scrubber_preview_texture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/widget/PreviewTextureView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->setDependent(Lcom/instagram/creation/video/gl/y;)V

    sget v0, Lcom/facebook/av;->scrubber_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->aa:Landroid/view/View;

    sget v0, Lcom/facebook/av;->scrubber_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v0

    if-lez v0, :cond_95

    iget v0, p0, Lcom/instagram/creation/video/f/ad;->h:I

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v1

    div-int/2addr v0, v1

    :goto_5a
    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v0, Lcom/instagram/creation/video/widget/c;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/widget/c;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    invoke-virtual {v1, v0, v0}, Lcom/instagram/creation/video/widget/c;->a(II)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/f/af;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/af;-><init>(Lcom/instagram/creation/video/f/ad;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/f/ad;->a(Lcom/instagram/creation/video/f/av;)V

    invoke-static {p1}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    return-void

    :cond_95
    move v0, v1

    goto :goto_5a
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method protected final c()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "VideoCoverFragmentBase.COVER_FRAME_TIME_MS"

    iget v1, p0, Lcom/instagram/creation/video/f/ad;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected final d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/ad;->ae:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "video_scrubber"

    return-object v0
.end method

.method public final l_()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->l_()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ab:Lcom/instagram/creation/video/widget/c;

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->aa:Landroid/view/View;

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->i:Lcom/instagram/creation/video/widget/PreviewTextureView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/ad;->ac:Landroid/widget/SeekBar;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    if-eqz p3, :cond_5

    invoke-direct {p0, p2}, Lcom/instagram/creation/video/f/ad;->a(I)V

    :cond_5
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.class Lcom/millennialmedia/android/dn;
.super Lcom/millennialmedia/android/bz;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final a:Ljava/lang/String; = "endVideo"

.field private static final b:Ljava/lang/String; = "restartVideo"

.field protected static final d:I = 0x3

.field protected static final e:I = 0x2

.field protected static final f:I = 0x1

.field protected static final g:I = 0x4

.field protected static final h:I = 0x5

.field private static final v:I = 0x4fe0613

.field private static final z:Ljava/lang/String; = "VideoPlayerActivity"


# instance fields
.field protected i:Z

.field protected j:I

.field protected k:Z

.field protected l:Landroid/widget/VideoView;

.field m:Lcom/millennialmedia/android/az;

.field n:Ljava/lang/String;

.field o:Landroid/widget/RelativeLayout;

.field p:Landroid/widget/ProgressBar;

.field q:Landroid/widget/Button;

.field r:Landroid/view/View;

.field s:Lcom/millennialmedia/android/do;

.field t:Z

.field u:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/millennialmedia/android/bz;-><init>()V

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->y:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->i:Z

    iput v1, p0, Lcom/millennialmedia/android/dn;->j:I

    new-instance v0, Lcom/millennialmedia/android/do;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/do;-><init>(Lcom/millennialmedia/android/dn;)V

    iput-object v0, p0, Lcom/millennialmedia/android/dn;->s:Lcom/millennialmedia/android/do;

    iput-boolean v1, p0, Lcom/millennialmedia/android/dn;->u:Z

    return-void
.end method

.method private A()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .registers 10

    const/4 v7, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x4fe0613

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x1080025

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_a0

    iget-object v4, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    const v5, 0x1080023

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_4e
    const v4, 0x1080038

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xe

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0xb

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/millennialmedia/android/dn$2;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/dn$2;-><init>(Lcom/millennialmedia/android/dn;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    new-instance v4, Lcom/millennialmedia/android/dn$3;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/dn$3;-><init>(Lcom/millennialmedia/android/dn;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/millennialmedia/android/dn$4;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/dn$4;-><init>(Lcom/millennialmedia/android/dn;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a0
    iget-object v4, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    const v5, 0x1080024

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4e
.end method

.method private a(Landroid/net/Uri;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mmsdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/dn;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :goto_18
    return v0

    :cond_19
    const-string v2, "VideoPlayerActivity"

    const-string v3, "Unrecognized mmsdk:// URI %s."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    move v0, v1

    goto :goto_18
.end method

.method static synthetic a(Lcom/millennialmedia/android/dn;Landroid/net/Uri;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/dn;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/dn;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/millennialmedia/android/dn;->y:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_14

    const-string v0, "restartVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "endVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private f(I)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_27
    iget-object v0, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_33
    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-direct {p0}, Lcom/millennialmedia/android/dn;->z()V

    :cond_3b
    return-void
.end method

.method private x()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->e(I)Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->q()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->q()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private y()V
    .registers 2

    new-instance v0, Lcom/millennialmedia/android/dp;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/dp;-><init>(Lcom/millennialmedia/android/dn;)V

    iput-object v0, p0, Lcom/millennialmedia/android/dn;->m:Lcom/millennialmedia/android/az;

    return-void
.end method

.method private z()V
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->s:Lcom/millennialmedia/android/do;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/do;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->s:Lcom/millennialmedia/android/do;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/do;->sendEmptyMessage(I)Z

    :cond_e
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->u:Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->o()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    const-string v2, "playVideo path: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-nez v1, :cond_32

    :cond_2c
    const-string v0, "no name or null videoview"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->a(Ljava/lang/String;)V

    :goto_31
    return-void

    :cond_32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/dn;->k:Z

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->y:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_46
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/dn;->f(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_4a

    goto :goto_31

    :catch_4a
    move-exception v0

    const-string v1, "VideoPlayerActivity"

    const-string v2, "playVideo error: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->a(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->d(I)V

    invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->a(Landroid/os/Bundle;)V

    const-string v0, "VideoPlayerActivity"

    const-string v1, "Setting up the video player"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/millennialmedia/android/dn;->x()V

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/dn;->d(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/millennialmedia/android/dn;->y()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->a(Landroid/view/View;)V

    return-void
.end method

.method a(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->s:Lcom/millennialmedia/android/do;

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/do;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    :cond_2a
    iget-object v0, p0, Lcom/millennialmedia/android/dn;->s:Lcom/millennialmedia/android/do;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Lcom/millennialmedia/android/do;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    :pswitch_32
    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6

    nop

    :pswitch_data_52
    .packed-switch 0x4
        :pswitch_7
        :pswitch_32
    .end packed-switch
.end method

.method protected a(Landroid/widget/ImageButton;F)V
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected a(Lcom/millennialmedia/android/VideoImage;)V
    .registers 4

    const-string v0, "VideoPlayerActivity"

    const-string v1, "Cached video button event logged"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    const-string v1, "Sorry. There was a problem playing the video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_15
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/millennialmedia/android/dn;->w:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/bz;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method protected b()Landroid/widget/RelativeLayout;
    .registers 10

    const/16 v8, 0xd

    const/4 v7, -0x2

    const/high16 v6, -0x100

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/dn;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->o:Landroid/widget/RelativeLayout;

    const/16 v2, 0x19a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    const/16 v4, 0x19b

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setId(I)V

    iget-object v3, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v3, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v3, v6}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/millennialmedia/android/dn;->A()V

    iget-object v3, p0, Lcom/millennialmedia/android/dn;->o:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/dn;->r:Landroid/view/View;

    iget-object v2, p0, Lcom/millennialmedia/android/dn;->r:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/millennialmedia/android/dn;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->i:Z

    if-eqz v1, :cond_90

    const/4 v1, 0x2

    const v3, 0x4fe0613

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/dn;->a(Landroid/widget/RelativeLayout;)V

    :cond_90
    iget-object v1, p0, Lcom/millennialmedia/android/dn;->r:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/millennialmedia/android/dn;->p:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "currentVideoPosition"

    iget v1, p0, Lcom/millennialmedia/android/dn;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isVideoCompleted"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isVideoCompletedOnce"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "hasBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "shouldSetUri"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isUserPausing"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isPaused"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->b(Z)V

    iput-boolean p1, p0, Lcom/millennialmedia/android/dn;->x:Z

    iget-boolean v0, p0, Lcom/millennialmedia/android/dn;->t:Z

    if-nez v0, :cond_12

    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/millennialmedia/android/dn;->u:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->j()V

    :cond_12
    return-void
.end method

.method protected c()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/dn;->j:I

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video paused"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "currentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/dn;->j:I

    const-string v0, "isVideoCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->k:Z

    const-string v0, "isVideoCompletedOnce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->w:Z

    const-string v0, "hasBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->i:Z

    const-string v0, "shouldSetUri"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->y:Z

    const-string v0, "isUserPausing"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->u:Z

    const-string v0, "isPaused"

    iget-boolean v1, p0, Lcom/millennialmedia/android/dn;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->t:Z

    invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method protected d(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_2a

    const-string v0, "videoCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->k:Z

    const-string v0, "videoCompletedOnce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->w:Z

    const-string v0, "videoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/dn;->j:I

    const-string v0, "hasBottomBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->i:Z

    const-string v0, "shouldSetUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->y:Z

    :cond_2a
    return-void
.end method

.method protected e()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/millennialmedia/android/bz;->e()V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/millennialmedia/android/dn;->t:Z

    const-string v0, "VideoPlayerActivity"

    const-string v1, "VideoPlayer - onResume"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/dn;->x:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/millennialmedia/android/dn;->u:Z

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->j()V

    :cond_22
    return-void
.end method

.method e(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/millennialmedia/android/dn$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/dn$1;-><init>(Lcom/millennialmedia/android/dn;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected f()V
    .registers 3

    invoke-super {p0}, Lcom/millennialmedia/android/bz;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->t:Z

    const-string v0, "VideoPlayerActivity"

    const-string v1, "VideoPlayer - onPause"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->c()V

    return-void
.end method

.method f(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Button Click with URL: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->m:Lcom/millennialmedia/android/az;

    iput-object p1, v0, Lcom/millennialmedia/android/az;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->m:Lcom/millennialmedia/android/az;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/millennialmedia/android/az;->b:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->m:Lcom/millennialmedia/android/az;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/az;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->m:Lcom/millennialmedia/android/az;

    invoke-static {v0}, Lcom/millennialmedia/android/ax;->a(Lcom/millennialmedia/android/az;)V

    goto :goto_2
.end method

.method public g()V
    .registers 1

    invoke-super {p0}, Lcom/millennialmedia/android/bz;->g()V

    return-void
.end method

.method protected j()V
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->w()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/millennialmedia/android/dn;->j:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->a(I)V

    :cond_b
    return-void
.end method

.method protected k()V
    .registers 3

    const-string v0, "VideoPlayerActivity"

    const-string v1, "Restart Video."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dn;->a(I)V

    :cond_f
    return-void
.end method

.method protected l()V
    .registers 1

    return-void
.end method

.method protected m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/millennialmedia/android/dn;->k:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->w:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->k:Z

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_19
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video player on complete"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video Prepared"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected t()V
    .registers 3

    const-string v0, "VideoPlayerActivity"

    const-string v1, "End Video."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->y:Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->u()V

    :cond_11
    return-void
.end method

.method protected u()V
    .registers 3

    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video ad player closed"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    :cond_1b
    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->d()V

    return-void
.end method

.method protected v()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/dn;->u:Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/dn;->c()V

    return-void
.end method

.method protected w()Z
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/millennialmedia/android/dn;->k:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

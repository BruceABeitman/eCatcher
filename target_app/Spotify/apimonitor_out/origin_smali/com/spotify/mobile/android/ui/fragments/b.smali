.class public final Lcom/spotify/mobile/android/ui/fragments/b;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/j;
.implements Lcom/spotify/mobile/android/ui/activity/s;
.implements Lcom/spotify/mobile/android/ui/fragments/e;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Z

.field private aa:F

.field private ab:Z

.field private ac:Lcom/spotify/mobile/android/util/dj;

.field private ad:J

.field private ae:Z

.field private af:Landroid/os/Handler;

.field private ag:Lcom/spotify/mobile/android/ui/actions/a;

.field private ah:Z

.field private ai:I

.field private aj:Z

.field private ak:Lcom/spotify/mobile/android/service/connections/b;

.field private al:Z

.field private am:Lcom/spotify/mobile/android/util/dk;

.field private an:Lcom/spotify/mobile/android/ui/view/s;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/spotify/mobile/android/ui/adapter/f;

.field private i:Lcom/spotify/mobile/android/util/dw;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "volume"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Z:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aa:F

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ab:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ad:J

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ag:Lcom/spotify/mobile/android/ui/actions/a;

    iput v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ai:I

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aj:Z

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->al:Z

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/b$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/b$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->an:Lcom/spotify/mobile/android/ui/view/s;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/b;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ai:I

    return p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Y:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/b;Lcom/spotify/mobile/android/service/ConnectDevice;)V
    .registers 6

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/ConnectDevice;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->E:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    :goto_8
    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ap:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/ConnectDevice;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ag:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->aS:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v2, v3, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void

    :cond_26
    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/ConnectDevice;->h()Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->C:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    goto :goto_8

    :cond_2f
    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/ConnectDevice;->i()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->B:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    goto :goto_8

    :cond_38
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->D:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    goto :goto_8
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/b;Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->al:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/connections/b;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/b;Ljava/util/List;)V
    .registers 9

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->d()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->g()Z

    move-result v5

    if-eqz v5, :cond_21

    move v1, v3

    :cond_21
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_2e
    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ab:Z

    if-eqz v0, :cond_4f

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v5, "audio"

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v5, v0

    invoke-virtual {v4, v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(F)V

    :cond_4f
    if-eqz v1, :cond_71

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Z:Z

    if-nez v0, :cond_70

    new-instance v0, Lcom/spotify/mobile/android/util/bs;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/bs;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/bs;->b(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/bs;->a(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v3, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Z:Z

    :cond_70
    :goto_70
    return-void

    :cond_71
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Z:Z

    if-eqz v0, :cond_70

    new-instance v0, Lcom/spotify/mobile/android/util/bs;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/bs;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/bs;->b(I)V

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/bs;->a(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Z:Z

    goto :goto_70

    :cond_91
    move v0, v2

    goto :goto_2e
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ab:Z

    return v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/b;F)Z
    .registers 6

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->c()F

    move-result v2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v1, v0, :cond_2b

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aj:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/b;F)F
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aa:F

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/b;)Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/b;I)V
    .registers 6

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "device-count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ag:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->aS:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method public static c()Lcom/spotify/mobile/android/ui/fragments/b;
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/b;-><init>()V

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/b;F)V
    .registers 6

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ab:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aa:F

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->al:Z

    if-eqz v0, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ad:J

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aa:F

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/connections/b;->a(F)V

    goto :goto_21
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->al:Z

    return v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/b;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/b;)Lcom/spotify/mobile/android/ui/adapter/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->h:Lcom/spotify/mobile/android/ui/adapter/f;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/b;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ai:I

    return v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/b;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/b;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/b;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ah:Z

    return v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/ui/fragments/b;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ah:Z

    return v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    const v0, 0x7f030068

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a01fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f0163

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a02a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->e:Landroid/widget/ListView;

    const v0, 0x7f030082

    invoke-virtual {p1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v2, 0x7f0a02e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->c:Landroid/view/View;

    const v2, 0x7f0a02e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->d:Landroid/view/View;

    const v0, 0x7f0a0223

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/j;->j(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/b$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/b$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/f;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/adapter/f;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->h:Lcom/spotify/mobile/android/ui/adapter/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->h:Lcom/spotify/mobile/android/ui/adapter/f;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/b$4;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/b$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a02a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    iget v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aa:F

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->an:Lcom/spotify/mobile/android/ui/view/s;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(Lcom/spotify/mobile/android/ui/view/s;)V

    const v0, 0x7f0a02a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/b$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/b$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->am:Lcom/spotify/mobile/android/util/dk;

    return-object v1
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f0163

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)V
    .registers 6

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ab:Z

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ad:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aj:Z

    if-nez v0, :cond_1f

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aa:F

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->f:Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(F)V

    :cond_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->af:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aS:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->i:Lcom/spotify/mobile/android/util/dw;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Z)V

    if-eqz p1, :cond_35

    const-string v0, "key_is_volume_visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Z:Z

    const-string v0, "key_volume_level"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aa:F

    const-string v0, "key_is_self_active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ab:Z

    :cond_35
    new-instance v0, Lcom/spotify/mobile/android/util/dj;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b;->af:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/dj;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ac:Lcom/spotify/mobile/android/util/dj;

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->j:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ae:Z

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 11

    const/4 v2, 0x0

    const/16 v6, 0x8

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ae:Z

    if-eqz v0, :cond_86

    const v0, 0x7f0f0161

    move v1, v2

    :goto_e
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->w()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f02016c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a028e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v0, "the parent view must have a view with ID \"not_available\""

    invoke-static {v3, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a01fb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V

    if-nez v4, :cond_94

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3d
    invoke-static {v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a02b4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0259

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V

    if-nez v5, :cond_9c

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_60
    iput-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/b;->b:Landroid/view/View;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ae:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6b
    if-eqz v1, :cond_72

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_72
    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Z:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_a4

    :goto_7e
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :cond_86
    const v1, 0x7f0f0162

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    move v7, v0

    move v0, v1

    move v1, v7

    goto/16 :goto_e

    :cond_94
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3d

    :cond_9c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_60

    :cond_a4
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v2, v1

    goto :goto_7e
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    const-string v0, "key_is_volume_visible"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->Z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_volume_level"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->aa:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "key_is_self_active"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ab:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final r_()V
    .registers 5

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r_()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ae:Z

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/j;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V

    :cond_1c
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/dj;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ac:Lcom/spotify/mobile/android/util/dj;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ac:Lcom/spotify/mobile/android/util/dj;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->am:Lcom/spotify/mobile/android/util/dk;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/dj;->a(Lcom/spotify/mobile/android/util/dk;)V

    return-void
.end method

.method public final s_()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s_()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ae:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->al:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V

    :cond_15
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ac:Lcom/spotify/mobile/android/util/dj;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ac:Lcom/spotify/mobile/android/util/dj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/dj;->a(Lcom/spotify/mobile/android/util/dk;)V

    return-void
.end method

.method public final u_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->al:Z

    return-void
.end method

.method public final v_()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->al:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/b$3;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/b$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/b;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/c;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->c()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ah:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->i:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ak:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->i()V

    :cond_14
    return-void
.end method

.method public final y()V
    .registers 5

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->i:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ai:I

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Z:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v2, "device-count"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b;->ag:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->aS:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0, v2, v3, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

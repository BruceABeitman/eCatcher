.class public Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/admarvel/android/ads/p$a;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field private static l:Landroid/app/Activity;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Landroid/widget/RelativeLayout;

.field private E:J

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Landroid/widget/ImageView;

.field private L:Lcom/admarvel/android/ads/p;

.field private M:Ljava/lang/ref/WeakReference;

.field private N:Landroid/os/Handler;

.field private O:Lcom/admarvel/android/ads/ab;

.field private P:Ljava/lang/String;

.field private Q:Ljava/util/Map;

.field private R:Ljava/util/List;

.field private S:Ljava/util/List;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/LinearLayout;

.field private V:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

.field private W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

.field private X:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

.field private Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

.field private Z:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

.field private aa:J

.field private ab:Z

.field private ac:Landroid/content/BroadcastReceiver;

.field private ad:I

.field private ae:Ljava/lang/Runnable;

.field private af:Ljava/lang/Runnable;

.field private ag:Ljava/lang/Runnable;

.field private ah:Ljava/lang/Runnable;

.field private ai:Ljava/lang/Runnable;

.field private aj:Landroid/view/View$OnTouchListener;

.field private ak:Landroid/view/View$OnTouchListener;

.field public d:Z

.field e:Lcom/admarvel/android/ads/AdMarvelXMLReader;

.field f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

.field g:Landroid/widget/LinearLayout;

.field h:Ljava/lang/ref/WeakReference;

.field public i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

.field public j:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

.field public k:I

.field private m:Ljava/lang/ref/WeakReference;

.field private n:Lcom/admarvel/android/ads/AdMarvelAd;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x19414

    sput v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a:I

    const v0, 0x1e0f4

    sput v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    const/16 v0, 0x5ac0

    sput v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->q:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->u:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->v:Z

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->w:I

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->A:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->B:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->C:Z

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->D:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->F:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->G:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->H:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->I:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->j:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->U:Landroid/widget/LinearLayout;

    iput v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ab:Z

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ad:I

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ae:Ljava/lang/Runnable;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->af:Ljava/lang/Runnable;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$5;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ag:Ljava/lang/Runnable;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$6;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ah:Ljava/lang/Runnable;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ai:Ljava/lang/Runnable;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$8;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$8;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->aj:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ak:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private a(J)I
    .registers 4

    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;J)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(J)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    return-object v0
.end method

.method private a(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->O:Lcom/admarvel/android/ads/ab;

    if-eqz v0, :cond_5

    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;

    iget v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;->a:I

    if-ne p1, v0, :cond_5

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->O:Lcom/admarvel/android/ads/ab;

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;)V

    goto :goto_30

    :cond_42
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a
.end method

.method private a(ILandroid/widget/TextView;)V
    .registers 10

    const/16 v6, 0xa

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v1, p1, 0x3c

    if-nez p1, :cond_2c

    const-string v0, " 00:00"

    :goto_10
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_28

    :cond_20
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_28
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    return-void

    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v0, v6, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v1, v6, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4c

    :cond_79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6b
.end method

.method private a(Landroid/widget/LinearLayout;Z)V
    .registers 8

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_2d

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2c
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .registers 6

    const/16 v3, 0xb

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->D:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->D:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->D:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;ILandroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(ILandroid/widget/TextView;)V

    return-void
.end method

.method private a(Lcom/admarvel/android/ads/AdMarvelXMLElement;Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V
    .registers 7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "pixel"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "pixel"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_29

    :cond_40
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->q:Z

    return p1
.end method

.method private b(Landroid/widget/RelativeLayout;)V
    .registers 7

    const/4 v1, -0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->y:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2e
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_68

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_49
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_4f
    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->y:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2e

    :cond_61
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_49

    :cond_68
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_49
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->A:Z

    return v0
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->C:Z

    return p1
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->q:Z

    return v0
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->F:Z

    return p1
.end method

.method private e(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 9

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v0, 0x50

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Lcom/admarvel/android/ads/ad;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->P:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/ad;-><init>(Lcom/admarvel/android/ads/p;Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v6
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Z:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    return-object v0
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->G:Z

    return p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return-object v1

    :cond_a
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v9, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "<videoTrackingEvents>"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "<toolbar > <item type=\"SystemItem\" ><action type=\"done\"/></item> <item type=\"Toggle\"> <subitem type=\"SystemItem\" > <action type=\"pause\"/> </subitem> <subitem type=\"SystemItem\" > <action type=\"resume\"/> </subitem> </item> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"Timer\"/> </toolbar>"

    const-string v11, "<toolbar > <item type=\"SystemItem\" ><action type=\"done\"/></item> <item type=\"Toggle\"> <subitem type=\"SystemItem\" > <action type=\"pause\"/> </subitem> <subitem type=\"SystemItem\" > <action type=\"resume\"/> </subitem> </item> <item type=\"SystemItem\" >%s<action type=\"open_url\">%s</action></item> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"Timer\"/> </toolbar>"

    const-string v12, "<customad type=\"video\"><video duration=\"%s\" forcequit=\"%s\">%s</video>%s%s%s</customad>"

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->a(Ljava/lang/String;)V

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_37
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;

    const-string v13, "xml"

    iget-object v14, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_57

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_57
    const-string v13, "video"

    iget-object v14, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_80

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    move-object/from16 v1, v16

    :goto_79
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_37

    :cond_80
    const-string v13, "duration"

    iget-object v14, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9d

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v6, v7

    move-object/from16 v16, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v2

    move-object/from16 v2, v16

    goto :goto_79

    :cond_9d
    const-string v13, "poster"

    iget-object v14, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ba

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v16, v2

    move-object v2, v3

    move-object v3, v1

    move-object/from16 v1, v16

    goto :goto_79

    :cond_ba
    const-string v13, "force_quit"

    iget-object v14, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d7

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto :goto_79

    :cond_d7
    const-string v13, "open_url"

    iget-object v14, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f4

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_79

    :cond_f4
    iget-object v13, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    const-string v14, "track_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1ec

    iget-object v13, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    const-string v14, "track_pr_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_172

    iget-object v13, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    const-string v14, "track_pr_"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<videoTracking event=\"progress\" offset=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\"><pixels>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_134
    :goto_134
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_165

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_134

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_134

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<pixel>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "</pixel>"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_134

    :cond_165
    const-string v1, "</pixels></videoTracking>"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_79

    :cond_172
    const-string v13, "track_open_url"

    iget-object v14, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_79

    :cond_18a
    iget-object v13, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;

    const-string v14, "track_"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<videoTracking event=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\" ><pixels>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1b6
    :goto_1b6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1b6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1b6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<pixel>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "</pixel>"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b6

    :cond_1e7
    const-string v1, "</pixels></videoTracking>"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1ec
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_79

    :cond_1f4
    const-string v1, "</videoTrackingEvents>"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_26a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<loadingimage>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</loadingimage>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_21b
    if-eqz v3, :cond_2bf

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2bf

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_273

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_273

    const-string v1, "<clickTracking><pixels>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_239
    :goto_239
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_239

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_239

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<pixel>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "</pixel>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_239

    :cond_26a
    const-string v1, ""

    move-object v4, v1

    goto :goto_21b

    :cond_26e
    const-string v1, "</pixels></clickTracking>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_273
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_2af

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_28a
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v6, :cond_2c1

    :goto_290
    aput-object v6, v2, v3

    const/4 v3, 0x1

    if-eqz v5, :cond_2c4

    :goto_295
    aput-object v5, v2, v3

    const/4 v3, 0x2

    if-eqz v7, :cond_2c7

    :goto_29a
    aput-object v7, v2, v3

    const/4 v3, 0x3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v1, 0x5

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v12, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_2af
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v8, ""

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_28a

    :cond_2bf
    move-object v1, v8

    goto :goto_28a

    :cond_2c1
    const-string v6, ""

    goto :goto_290

    :cond_2c4
    const-string v5, "NO"

    goto :goto_295

    :cond_2c7
    const-string v7, ""

    goto :goto_29a
.end method

.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    return v0
.end method

.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->X:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    return-object v0
.end method

.method static synthetic i(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->D:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o()V

    return-void
.end method

.method static synthetic k(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->C:Z

    return v0
.end method

.method static synthetic l(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)I
    .registers 2

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->w:I

    return v0
.end method

.method static synthetic m(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->E:J

    return-wide v0
.end method

.method static synthetic n(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->aa:J

    return-wide v0
.end method

.method private o()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method static synthetic p(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    return-object v0
.end method

.method private p()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private q()Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/ad;

    if-eqz v0, :cond_4e

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4e

    move v3, v4

    :goto_15
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_4e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ViewSwitcher;

    if-eqz v1, :cond_4f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/ad$d;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/ad$d;

    if-eqz v2, :cond_41

    iget-object v2, v2, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v6, "unmute"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    :cond_41
    if-eqz v1, :cond_6b

    iget-object v1, v1, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "unmute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_4d
    move v4, v5

    :cond_4e
    :goto_4e
    return v4

    :cond_4f
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/admarvel/android/ads/ad$d;

    if-eqz v1, :cond_6b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/ad$d;

    if-eqz v1, :cond_6b

    iget-object v1, v1, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "unmute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    move v4, v5

    goto :goto_4e

    :cond_6b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_15
.end method

.method static synthetic q(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->u:Z

    return v0
.end method

.method private r()V
    .registers 7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/ad;

    if-eqz v0, :cond_53

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_53

    const/4 v1, 0x0

    move v4, v1

    :goto_14
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_53

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ViewSwitcher;

    if-eqz v1, :cond_4f

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/ad$d;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/admarvel/android/ads/ad$d;

    if-eqz v2, :cond_4f

    iget-object v2, v2, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v5, "mute"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    if-eqz v3, :cond_4f

    iget-object v2, v3, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v3, "unmute"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_4f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_14

    :cond_53
    return-void
.end method

.method static synthetic r(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->t:Z

    return v0
.end method

.method private s()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_9
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->V:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->V:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_12
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_1b
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->X:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->X:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_24
    return-void
.end method

.method static synthetic s(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->H:Z

    return v0
.end method

.method static synthetic t(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->F:Z

    return v0
.end method

.method static synthetic u(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->G:Z

    return v0
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->O:Lcom/admarvel/android/ads/ab;

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->O:Lcom/admarvel/android/ads/ab;

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;)V

    goto :goto_17

    :cond_29
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    if-eq p1, v0, :cond_31

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    if-ne p1, v0, :cond_4

    :cond_31
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public a(Lcom/admarvel/android/ads/p;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/admarvel/android/ads/p;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v3}, Lcom/admarvel/android/ads/p;->setVisibility(I)V

    :cond_a
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_20
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    if-lez v0, :cond_91

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->A:Z

    if-nez v0, :cond_91

    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_65

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    if-nez v1, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TIMER_BUTTON_LAYOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->U:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->U:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    :cond_65
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$2;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7b
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-nez v0, :cond_99

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ae:Ljava/lang/Runnable;

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/admarvel/android/ads/p;->start()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    return-void

    :cond_99
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c()Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    goto :goto_91
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_23

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    const-string v1, "ADM__VIDEO_DIALOG"

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;

    if-eqz v0, :cond_34

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b()V

    goto :goto_22

    :cond_34
    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    goto :goto_22
.end method

.method public a(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->O:Lcom/admarvel/android/ads/ab;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->O:Lcom/admarvel/android/ads/ab;

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->pause()V

    if-eqz p1, :cond_17

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    goto :goto_4

    :cond_17
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    goto :goto_4
.end method

.method public b(Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelXMLReader;

    invoke-direct {v0}, Lcom/admarvel/android/ads/AdMarvelXMLReader;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e:Lcom/admarvel/android/ads/AdMarvelXMLReader;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e:Lcom/admarvel/android/ads/AdMarvelXMLReader;

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->parseXMLString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e:Lcom/admarvel/android/ads/AdMarvelXMLReader;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "forcequit"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5d

    const-string v4, "YES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->B:Z

    :cond_5d
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "duration"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_77

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_77

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    :cond_77
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "lockOrientation"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_90

    const-string v4, "LandscapeLeft"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13c

    invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->setRequestedOrientation(I)V

    :cond_90
    :goto_90
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "initialMute"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a8

    const-string v4, "YES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ab:Z

    :cond_a8
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "enableVideoPlayOnScreenLock"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c0

    const-string v4, "YES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->H:Z

    :cond_c0
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "quitVideoInBackground"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d8

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->I:Z

    :cond_d8
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "loadingimage"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "loadingimage"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v0, :cond_16f

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->y:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "displayEvent"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_16f

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16f

    array-length v0, v1

    if-lez v0, :cond_16f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    move v0, v3

    :goto_125
    array-length v4, v1

    if-ge v0, v4, :cond_16f

    aget-object v4, v1, v0

    const-string v5, "loading"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_156

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_139
    :goto_139
    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    :cond_13c
    const-string v4, "Portrait"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_149

    invoke-virtual {p0, v6}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->setRequestedOrientation(I)V

    goto/16 :goto_90

    :cond_149
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_90

    invoke-static {p0, v1}, Lcom/admarvel/android/ads/y;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_90

    :cond_156
    aget-object v4, v1, v0

    const-string v5, "complete"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_139

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_139

    :cond_16f
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "toolbar"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_216

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "toolbar"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-nez v0, :cond_2f5

    move-object v1, v2

    :goto_194
    if-eqz v1, :cond_1a0

    const-string v4, "YES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->t:Z

    :cond_1a0
    if-nez v0, :cond_303

    move-object v1, v2

    :goto_1a3
    if-eqz v1, :cond_1af

    const-string v4, "NO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1af

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->u:Z

    :cond_1af
    if-nez v0, :cond_311

    move-object v1, v2

    :goto_1b2
    if-eqz v1, :cond_1f4

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->v:Z

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->C:Z

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->w:I

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "showSkipMessage"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1d6

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->C:Z

    :cond_1d6
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "skipText"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1f4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f4

    const-string v2, "@seconds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->J:Ljava/lang/String;

    :cond_1f4
    if-eqz v0, :cond_216

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_216

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_216

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    :cond_216
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "videoTrackingEvents"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_539

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "videoTrackingEvents"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v0, :cond_539

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "videoTracking"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_539

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "videoTracking"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v4, v3

    :goto_261
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_539

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v5, "event"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "progress"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_334

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v5, "offset"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_32f

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31f

    const-string v5, "%"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x64

    move v5, v2

    :goto_2a9
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v1, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v6, "pixel"

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixel"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v6, v3

    :goto_2de
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_325

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2de

    :cond_2f5
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "initiallyVisible"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_194

    :cond_303
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "toggleToolbar"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_1a3

    :cond_311
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "delayDisplayDoneButton"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_1b2

    :cond_31f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v5, v2

    goto :goto_2a9

    :cond_325
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;

    invoke-direct {v2, p0, v5, v7}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32f
    :goto_32f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_261

    :cond_334
    const-string v5, "firstQuartile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39d

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    if-lez v5, :cond_39d

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    div-int/lit8 v6, v2, 0x4

    if-lez v6, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v1, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v5, "pixel"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixel"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v5, v3

    :goto_37b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_392

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_37b

    :cond_392
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;

    invoke-direct {v2, p0, v6, v7}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32f

    :cond_39d
    const-string v5, "midpoint"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_407

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    if-lez v5, :cond_407

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    div-int/lit8 v6, v2, 0x2

    if-lez v6, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v1, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v5, "pixel"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixel"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v5, v3

    :goto_3e4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_3fb

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3e4

    :cond_3fb
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;

    invoke-direct {v2, p0, v6, v7}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32f

    :cond_407
    const-string v5, "thirdQuartile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_473

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    if-lez v5, :cond_473

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v6, v2, 0x3

    if-lez v6, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v1, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v5, "pixel"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixel"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v5, v3

    :goto_450
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_467

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_450

    :cond_467
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;

    invoke-direct {v2, p0, v6, v7}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32f

    :cond_473
    const-string v5, "start"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_494

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelXMLElement;Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    goto/16 :goto_32f

    :cond_494
    const-string v5, "complete"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b5

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelXMLElement;Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    goto/16 :goto_32f

    :cond_4b5
    const-string v5, "pause"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d6

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelXMLElement;Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    goto/16 :goto_32f

    :cond_4d6
    const-string v5, "resume"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f7

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelXMLElement;Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    goto/16 :goto_32f

    :cond_4f7
    const-string v5, "close"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_518

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelXMLElement;Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    goto/16 :goto_32f

    :cond_518
    const-string v5, "stop"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "pixels"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelXMLElement;Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    goto/16 :goto_32f

    :cond_539
    return-void
.end method

.method public b(Z)V
    .registers 4

    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_40

    if-eqz p1, :cond_3f

    invoke-direct {p0, v0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Landroid/widget/LinearLayout;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->aa:J

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    if-nez p1, :cond_3f

    invoke-direct {p0, v0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Landroid/widget/LinearLayout;Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3f
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->r:Z

    return v0
.end method

.method public c()V
    .registers 3

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_19
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2a
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/i;->b()Z

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ad:I

    :cond_44
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ad:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_4d

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V

    :goto_4c
    return-void

    :cond_4d
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V

    goto :goto_4c

    :cond_51
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V

    goto :goto_4c
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->a()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    :cond_17
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0, v3}, Lcom/admarvel/android/ads/p;->setVisibility(I)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->requestFocus()Z

    :cond_29
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_91

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5d
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_97

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7b
    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    if-eq v0, v2, :cond_7b

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    :cond_91
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4c

    :cond_97
    const-string v0, "Loading Next Video..."

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->B:Z

    if-eqz v0, :cond_a2

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->B:Z

    :cond_a2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->A:Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_af
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/p;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->requestFocus()Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    goto/16 :goto_5
.end method

.method public c(Z)V
    .registers 8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/ad;

    if-eqz v0, :cond_a1

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a1

    const/4 v1, 0x0

    move v3, v1

    :goto_14
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_a1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ViewSwitcher;

    if-eqz v1, :cond_45

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/ad$d;

    if-nez p1, :cond_4d

    if-eqz v2, :cond_4d

    iget-object v4, v2, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v5, "pause"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_45
    :goto_45
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_14

    :cond_49
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_45

    :cond_4d
    if-nez p1, :cond_69

    if-eqz v2, :cond_69

    iget-object v4, v2, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v5, "stop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_65

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_45

    :cond_65
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_45

    :cond_69
    if-eqz p1, :cond_85

    if-eqz v2, :cond_85

    iget-object v4, v2, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v5, "replay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_81

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_45

    :cond_81
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_45

    :cond_85
    if-eqz p1, :cond_45

    if-eqz v2, :cond_45

    iget-object v2, v2, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v4, "resume"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_9d

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_45

    :cond_9d
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_45

    :cond_a1
    return-void
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6e

    move-object v1, p1

    :goto_9
    :try_start_9
    new-instance v2, Lcom/admarvel/android/ads/ab;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    invoke-direct {v2, p0, v0}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "User-Agent"

    invoke-virtual {v2}, Lcom/admarvel/android/ads/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_5c

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_65

    :cond_5c
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_61} :catch_64

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    :catch_64
    move-exception v0

    :cond_65
    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6e

    move-object p1, v1

    :cond_6e
    return-object p1
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->a()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    goto :goto_4
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_20

    :cond_11
    const-string v0, "Resuming Video..."

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->e()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    goto :goto_4

    :cond_20
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_4

    :cond_2c
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f()V

    goto :goto_4
.end method

.method public f()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_5

    :cond_1e
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_33

    :cond_2a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->a()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    :cond_33
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0, v3}, Lcom/admarvel/android/ads/p;->setVisibility(I)V

    :cond_40
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_74

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_74
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_ae

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_92
    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    if-eq v0, v2, :cond_92

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Q:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    :cond_a8
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_63

    :cond_ae
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->B:Z

    if-eqz v0, :cond_b4

    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->B:Z

    :cond_b4
    const-string v0, "Replaying Video..."

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/p;->a(Landroid/net/Uri;)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    :cond_d4
    iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->A:Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->requestFocus()Z

    goto/16 :goto_5
.end method

.method public g()V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$e;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->n:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v1, v2, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$e;-><init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public h()V
    .registers 2

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    return-void
.end method

.method public i()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_f
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_18
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/p;->setVisibility(I)V

    :cond_45
    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v1, :cond_66

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Landroid/widget/LinearLayout;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_66
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    if-lez v0, :cond_7b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(ILandroid/widget/TextView;)V

    :cond_7b
    invoke-virtual {p0, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c(Z)V

    return-void

    :cond_7f
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3b
.end method

.method public j()V
    .registers 2

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    return-void
.end method

.method public k()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->A:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    :cond_24
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3a
    return-void
.end method

.method public l()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    const-string v0, "Network Connection Unavailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public m()V
    .registers 1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c()V

    return-void
.end method

.method public n()V
    .registers 1

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s()V

    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "Video onCompletion is called"

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    if-eqz v2, :cond_a1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->S:Ljava/util/List;

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/p;->setVisibility(I)V

    :cond_48
    iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v2, :cond_60

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_60

    invoke-direct {p0, v0, v4}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Landroid/widget/LinearLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_60
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    if-lez v0, :cond_75

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->T:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(ILandroid/widget/TextView;)V

    :cond_75
    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/ad;

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Lcom/admarvel/android/ads/ad;->b()Z

    move-result v0

    :goto_8a
    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v1, :cond_94

    if-eqz v0, :cond_94

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->B:Z

    if-eqz v0, :cond_a0

    :cond_94
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0, v4}, Lcom/admarvel/android/ads/p;->a(Z)V

    :cond_9d
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c()V

    :cond_a0
    return-void

    :cond_a1
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    :cond_a7
    move v0, v1

    goto :goto_8a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->l:Landroid/app/Activity;

    if-nez v0, :cond_26a

    sput-object p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->l:Landroid/app/Activity;

    :goto_c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Kindle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "Kindle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_273

    :cond_20
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_32
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_3d

    invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$f;->a(Landroid/app/Activity;)V

    :cond_3d
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8c

    const-string v0, "serialized_admarvelad"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_6e

    :try_start_4f
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAd;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->n:Lcom/admarvel/android/ads/AdMarvelAd;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->n:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->n:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->m:Ljava/lang/ref/WeakReference;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6e} :catch_280

    :cond_6e
    :goto_6e
    const-string v0, "isCustomUrl"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28a

    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->p:Ljava/lang/String;

    const-string v0, "GUID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->P:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->r:Z

    :cond_8c
    :goto_8c
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a:I

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->setContentView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x4120

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ak:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v0, -0x100

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Lcom/admarvel/android/ads/p;

    invoke-direct {v5, p0, p0}, Lcom/admarvel/android/ads/p;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v5, v4}, Lcom/admarvel/android/ads/p;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v4, p0}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p$a;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    new-instance v0, Lcom/admarvel/android/ads/ab;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->O:Lcom/admarvel/android/ads/ab;

    :try_start_105
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b(Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10a} :catch_2bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_105 .. :try_end_10a} :catch_2c1
    .catch Lorg/xml/sax/SAXException; {:try_start_105 .. :try_end_10a} :catch_2ea
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10a} :catch_2f8

    :goto_10a
    :try_start_10a
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11d
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_2f3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_129
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10a .. :try_end_129} :catch_2c1
    .catch Lorg/xml/sax/SAXException; {:try_start_10a .. :try_end_129} :catch_2ea
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_129} :catch_2f8

    move-result v0

    if-lez v0, :cond_2f3

    :try_start_12c
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->x:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/p;->a(Landroid/net/Uri;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_137} :catch_2ca
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12c .. :try_end_137} :catch_2c1
    .catch Lorg/xml/sax/SAXException; {:try_start_12c .. :try_end_137} :catch_2ea
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_137} :catch_2f8

    :goto_137
    :try_start_137
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/p;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/p;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/p;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->requestFocus()Z

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->r:Z

    if-ne v0, v6, :cond_15c

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_15c

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/i;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    :cond_15c
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->z:Z

    if-eqz v0, :cond_16f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_16f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16f

    invoke-direct {p0, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b(Landroid/widget/RelativeLayout;)V

    :cond_16f
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_17c
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1f2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/ad;

    if-eqz v0, :cond_1f2

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x14

    const/16 v7, 0x14

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/ad;->a()Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_1f2

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/ad;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    const-string v2, "ADM_VIDEO_CUSTOM_DONE_BUTTON"

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$1;

    invoke-direct {v2, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$1;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1f2
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->C:Z

    if-eqz v0, :cond_1fc

    invoke-direct {p0, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Landroid/widget/RelativeLayout;)V

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->p()V

    :cond_1fc
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->v:Z

    if-eqz v0, :cond_353

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->w:I

    if-lez v0, :cond_353

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_353

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/ad;

    if-eqz v0, :cond_353

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_353

    if-eqz v0, :cond_353

    iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v2, :cond_353

    move v2, v1

    :goto_21d
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_31e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/admarvel/android/ads/ad$d;

    if-eqz v1, :cond_266

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/ad$d;

    if-eqz v1, :cond_266

    iget-object v4, v1, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v5, "done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_266

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/admarvel/android/ads/ad$d;->setClickable(Z)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/admarvel/android/ads/ad$d;->setEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/admarvel/android/ads/ad$d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_266

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/admarvel/android/ads/ad$d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_301

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_301

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v4, 0x19

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_266
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_137 .. :try_end_266} :catch_2c1
    .catch Lorg/xml/sax/SAXException; {:try_start_137 .. :try_end_266} :catch_2ea
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_266} :catch_2f8

    :cond_266
    :goto_266
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_21d

    :cond_26a
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sput-object p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->l:Landroid/app/Activity;

    goto/16 :goto_c

    :cond_273
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x200

    const/16 v3, 0x200

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_32

    :catch_280
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_6e

    :cond_28a
    const-string v0, "html"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    const-string v0, "html"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->p:Ljava/lang/String;

    const-string v0, "GUID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_2b2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b2

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->r:Z

    goto/16 :goto_8c

    :cond_2b2
    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->r:Z

    goto/16 :goto_8c

    :cond_2b6
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V

    goto/16 :goto_8c

    :catch_2bb
    move-exception v0

    :try_start_2bc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2bf
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2bc .. :try_end_2bf} :catch_2c1
    .catch Lorg/xml/sax/SAXException; {:try_start_2bc .. :try_end_2bf} :catch_2ea
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2bf} :catch_2f8

    goto/16 :goto_10a

    :catch_2c1
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :goto_2c9
    return-void

    :catch_2ca
    move-exception v0

    :try_start_2cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting URI on videoView "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V
    :try_end_2e8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2cb .. :try_end_2e8} :catch_2c1
    .catch Lorg/xml/sax/SAXException; {:try_start_2cb .. :try_end_2e8} :catch_2ea
    .catch Ljava/io/IOException; {:try_start_2cb .. :try_end_2e8} :catch_2f8

    goto/16 :goto_137

    :catch_2ea
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_2c9

    :cond_2f3
    :try_start_2f3
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V
    :try_end_2f6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2f3 .. :try_end_2f6} :catch_2c1
    .catch Lorg/xml/sax/SAXException; {:try_start_2f3 .. :try_end_2f6} :catch_2ea
    .catch Ljava/io/IOException; {:try_start_2f3 .. :try_end_2f6} :catch_2f8

    goto/16 :goto_137

    :catch_2f8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_2c9

    :cond_301
    if-eqz v1, :cond_266

    :try_start_303
    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Z:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-nez v4, :cond_266

    new-instance v4, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;

    invoke-direct {v4, p0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/widget/ImageView;)V

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-direct {v1, v5, v4, v6}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Z:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Z:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    goto/16 :goto_266

    :cond_31e
    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->af:Ljava/lang/Runnable;

    iget v4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->w:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {v0, v1, v2, v4}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->V:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->V:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->C:Z

    if-eqz v0, :cond_353

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->X:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-nez v0, :cond_353

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->E:J

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ah:Ljava/lang/Runnable;

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;IZ)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->X:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->X:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    :cond_353
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->aj:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "Loading Video..."

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ac:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ac:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_375
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_303 .. :try_end_375} :catch_2c1
    .catch Lorg/xml/sax/SAXException; {:try_start_303 .. :try_end_375} :catch_2ea
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_375} :catch_2f8

    goto/16 :goto_2c9
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ac:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ac:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ac:Landroid/content/BroadcastReceiver;

    :cond_12
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c(Z)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Landroid/widget/LinearLayout;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_23
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_2b
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    packed-switch p1, :pswitch_data_32

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_d
    return v0

    :pswitch_e
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/ad;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/admarvel/android/ads/ad;->b()Z

    move-result v0

    :goto_21
    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v1, :cond_2b

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->v:Z

    if-nez v0, :cond_2e

    :cond_2b
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c()V

    :cond_2e
    const/4 v0, 0x1

    goto :goto_d

    :cond_30
    move v0, v1

    goto :goto_21

    :pswitch_data_32
    .packed-switch 0x4
        :pswitch_e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_31

    :try_start_a
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->start()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_7b

    :goto_13
    const-string v0, "Video Activity onPause is called"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->H:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->d()V

    iput-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->F:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->g:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_42
    return-void

    :cond_43
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->I:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->d()V

    iput-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->G:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->g:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    goto :goto_31

    :cond_53
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->pause()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    goto :goto_31

    :cond_5d
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_69

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_31

    :cond_69
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/p;->a(Z)V

    goto :goto_31

    :catch_7b
    move-exception v0

    goto :goto_13
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7

    const/4 v4, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->d()V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_85

    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->u:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-nez v0, :cond_30

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->N:Landroid/os/Handler;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ai:Ljava/lang/Runnable;

    const/16 v3, 0xc1c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;IZ)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    :cond_30
    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v1, :cond_4f

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->aa:J

    :cond_4f
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->j:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->b()V

    :cond_5a
    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ab:Z

    if-eqz v0, :cond_73

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->b()V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->j:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->r()V

    :cond_70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->ab:Z

    :cond_73
    invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/p;)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    :cond_84
    return-void

    :catch_85
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_4
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->start()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_3d

    :goto_d
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->g:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_38

    :cond_25
    const-string v0, "Resuming Video..."

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->e()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    :cond_38
    iput-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->F:Z

    iput-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d:Z

    return-void

    :catch_3d
    move-exception v0

    goto :goto_d
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_3
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->start()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method protected onStop()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_3
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->start()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_c6

    :goto_c
    const-string v0, "Video Activity onStop is called"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->g:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_2c

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->I:Z

    if-nez v0, :cond_2c

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;)V

    :cond_2c
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Activity onStop isScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_b2

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->F:Z

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->g:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v1, v2, :cond_b2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/p;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_b2

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_b2

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->F:Z

    :cond_7f
    :goto_7f
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v1, :cond_9a

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->H:Z

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->L:Lcom/admarvel/android/ads/p;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/p;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_9a

    :cond_95
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->W:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_9a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;

    :goto_a6
    if-eqz v0, :cond_ae

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->c()V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;)V

    :cond_ae
    return-void

    :cond_af
    const-string v1, "powermanager null"

    goto :goto_49

    :cond_b2
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7f

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->I:Z

    if-eqz v1, :cond_7f

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d:Z

    if-nez v1, :cond_7f

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c()V

    goto :goto_7f

    :cond_c4
    const/4 v0, 0x0

    goto :goto_a6

    :catch_c6
    move-exception v0

    goto/16 :goto_c
.end method

.method public onUserInteraction()V
    .registers 3

    sget v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s:Z

    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->aa:J

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->Y:Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a()V

    :cond_30
    :goto_30
    return-void

    :cond_31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b(Z)V

    goto :goto_30
.end method

.class public Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/actions/a;

.field private final b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

.field private final c:I

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;

.field private g:Lcom/spotify/mobile/android/util/ui/a;

.field private h:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->d:Z

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$4;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->g:Lcom/spotify/mobile/android/util/ui/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$5;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->h:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->c:I

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bA:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, p1, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->addView(Landroid/view/View;II)V

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(Z)V

    return-void
.end method

.method private static a(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a02fa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find tooltip container in the activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Landroid/view/View;)V
    .registers 5

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->c:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->setY(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    return-void
.end method

.method private a(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;

    if-eqz v1, :cond_14

    const-string v1, "type"

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    :cond_14
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->au:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method private static b(Landroid/view/View;)Landroid/graphics/Point;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Lcom/spotify/mobile/android/spotlets/tinkerbell/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Landroid/view/View$OnAttachStateChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->h:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->d:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->d:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$3;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$3;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/e;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->e()V

    goto :goto_4
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->offsetTopAndBottom(I)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;)V
    .registers 6

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->d:Z

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->h:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(Z)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$2;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$2;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aB:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->d:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(Z)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method protected final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->d()V

    return-void
.end method

.method public final d()Landroid/widget/AbsListView$OnScrollListener;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->g:Lcom/spotify/mobile/android/util/ui/a;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    add-int/2addr v2, p2

    add-int/2addr v1, v0

    invoke-virtual {v3, p2, v0, v2, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->layout(IIII)V

    return-void
.end method

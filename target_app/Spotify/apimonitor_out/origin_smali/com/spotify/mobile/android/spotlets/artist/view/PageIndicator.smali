.class public Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/br;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/view/br;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a031d

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->c:Landroid/widget/TextView;

    const v0, 0x7f0a031f

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->d:Landroid/widget/TextView;

    return-void
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ah;->b()I

    move-result v2

    :goto_1b
    if-nez v2, :cond_32

    :goto_1d
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->d:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_30
    move v2, v0

    goto :goto_1b

    :cond_32
    move v0, v1

    goto :goto_1d
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b:Landroid/support/v4/view/br;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b:Landroid/support/v4/view/br;

    invoke-interface {v0, p1}, Landroid/support/v4/view/br;->a(I)V

    :cond_9
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b()V

    return-void
.end method

.method public final a(IFI)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b:Landroid/support/v4/view/br;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b:Landroid/support/v4/view/br;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/br;->a(IFI)V

    :cond_9
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b()V

    return-void
.end method

.method public final a(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/br;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/br;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b()V

    return-void
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b:Landroid/support/v4/view/br;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b:Landroid/support/v4/view/br;

    invoke-interface {v0, p1}, Landroid/support/v4/view/br;->b(I)V

    :cond_9
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->b()V

    return-void
.end method

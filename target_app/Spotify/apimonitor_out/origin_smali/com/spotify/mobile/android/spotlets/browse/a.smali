.class public final Lcom/spotify/mobile/android/spotlets/browse/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.implements Lcom/spotify/mobile/android/util/cd;


# instance fields
.field private Y:Lcom/spotify/mobile/android/util/cc;

.field private Z:Lcom/spotify/mobile/android/spotlets/browse/a/a;

.field private a:Lcom/spotify/mobile/android/spotlets/browse/a/b;

.field private aa:Lcom/spotify/mobile/android/spotlets/browse/a/f;

.field private ab:Ljava/lang/String;

.field private ac:Landroid/widget/TextView;

.field private ad:Lcom/devsmart/android/ui/HorizontalListView;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private final ag:Lcom/spotify/mobile/android/spotlets/browse/b/e;

.field private final ah:Lcom/spotify/mobile/android/spotlets/browse/b/c;

.field private final ai:Lcom/spotify/mobile/android/spotlets/browse/b/b;

.field private aj:Z

.field private ak:Lcom/spotify/cosmos/android/Resolver;

.field private al:Z

.field private final am:Landroid/os/Handler;

.field private final an:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/a",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;"
        }
    .end annotation
.end field

.field private final ao:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/a",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/spotify/mobile/android/util/dw;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/spotify/mobile/android/util/tracking/n;

.field private i:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/e;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->T:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ag:Lcom/spotify/mobile/android/spotlets/browse/b/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/c;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->N:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/spotlets/browse/b/c;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;Z)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ah:Lcom/spotify/mobile/android/spotlets/browse/b/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/b;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->N:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/b;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ai:Lcom/spotify/mobile/android/spotlets/browse/b/b;

    iput-boolean v5, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->al:Z

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->am:Landroid/os/Handler;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/a$8;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/a$8;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->an:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/a$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ao:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;

    return-void
.end method

.method private a(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/e;
    .registers 10

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-array v1, v5, [I

    const v2, 0x7f01016a

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0101c3

    invoke-static {v2, v3, v4}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, p1}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v5}, Lcom/spotify/android/paste/widget/e;->d(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/a;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "country"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/a;

    invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/browse/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->al:Z

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/browse/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ae:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/browse/a;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->al:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aj:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ae:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ac:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->af:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->af:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ad:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/a;

    invoke-virtual {v0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/browse/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->af:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/browse/a;)V
    .registers 5

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->O:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->a:Lcom/spotify/mobile/android/spotlets/browse/a/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ad:Lcom/devsmart/android/ui/HorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0298

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0297

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->d()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    sget-object v2, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Landroid/view/View;Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;)V

    :cond_4b
    return-void
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aj:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aa:Lcom/spotify/mobile/android/spotlets/browse/a/f;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/b/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ag:Lcom/spotify/mobile/android/spotlets/browse/b/e;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/b/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ah:Lcom/spotify/mobile/android/spotlets/browse/b/c;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/b/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ai:Lcom/spotify/mobile/android/spotlets/browse/b/b;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/spotlets/browse/a;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ac:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->al:Z

    return v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/util/tracking/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->h:Lcom/spotify/mobile/android/util/tracking/n;

    return-object v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->a:Lcom/spotify/mobile/android/spotlets/browse/a/b;

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/spotify/mobile/android/spotlets/browse/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/spotify/mobile/android/spotlets/browse/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->af:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/spotify/mobile/android/spotlets/browse/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->am:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->c:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    return-object v0
.end method

.method public final F()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Y:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cc;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Y:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Y:Lcom/spotify/mobile/android/util/cc;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/a/a;-><init>(Lcom/spotify/mobile/android/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/a/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->P:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/a/f;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aa:Lcom/spotify/mobile/android/spotlets/browse/a/f;

    const v0, 0x7f030061

    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->b:Landroid/view/ViewGroup;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f030063

    invoke-virtual {p1, v1, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0249

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0a024a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->e:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v2, 0x7f0f00e5

    invoke-virtual {v4, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f030064

    invoke-virtual {v2, v6, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ac:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ac:Landroid/widget/TextView;

    const v5, 0x7f0a011e

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setId(I)V

    const-class v2, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v2

    check-cast v2, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/ao;->b()I

    move-result v2

    const/high16 v5, 0x4260

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-static {v2, v6, v5, v7}, Lcom/spotify/android/paste/widget/CardView;->a(IIII)I

    move-result v2

    new-instance v5, Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v11}, Lcom/devsmart/android/ui/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/devsmart/android/ui/HorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ad:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ad:Lcom/devsmart/android/ui/HorizontalListView;

    const v5, 0x7f0a011d

    invoke-virtual {v2, v5}, Lcom/devsmart/android/ui/HorizontalListView;->setId(I)V

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aj:Z

    if-eqz v2, :cond_1ad

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ad:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aa:Lcom/spotify/mobile/android/spotlets/browse/a/f;

    invoke-virtual {v2, v5}, Lcom/devsmart/android/ui/HorizontalListView;->a(Landroid/widget/ListAdapter;)V

    :goto_e0
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ad:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ad:Lcom/devsmart/android/ui/HorizontalListView;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/browse/a$3;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/browse/a$3;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;)V

    invoke-virtual {v2, v3}, Lcom/devsmart/android/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/spotify/android/paste/widget/SectionHeaderView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/SectionHeaderView;->b()Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f0f00eb

    invoke-virtual {v4, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020174

    new-instance v5, Lcom/spotify/mobile/android/spotlets/browse/a$4;

    invoke-direct {v5, p0, v4, v2}, Lcom/spotify/mobile/android/spotlets/browse/a$4;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0a0123

    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f0f00e7

    invoke-virtual {v4, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020172

    new-instance v5, Lcom/spotify/mobile/android/spotlets/browse/a$5;

    invoke-direct {v5, p0, v4, v2}, Lcom/spotify/mobile/android/spotlets/browse/a$5;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0a0120

    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->d:Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_1b6

    const v2, 0x7f0f00e6

    invoke-virtual {v4, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020178

    new-instance v5, Lcom/spotify/mobile/android/spotlets/browse/a$6;

    invoke-direct {v5, p0, v4, v2}, Lcom/spotify/mobile/android/spotlets/browse/a$6;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a011f

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_182
    :goto_182
    new-instance v2, Lcom/spotify/android/paste/widget/SectionHeaderView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f00e2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->b:Landroid/view/ViewGroup;

    return-object v0

    :cond_1ad
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ad:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/a;

    invoke-virtual {v2, v5}, Lcom/devsmart/android/ui/HorizontalListView;->a(Landroid/widget/ListAdapter;)V

    goto/16 :goto_e0

    :cond_1b6
    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v2

    if-eqz v2, :cond_182

    const v2, 0x7f0f01f0

    invoke-virtual {v4, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020173

    new-instance v5, Lcom/spotify/mobile/android/spotlets/browse/a$7;

    invoke-direct {v5, p0, v4, v2}, Lcom/spotify/mobile/android/spotlets/browse/a$7;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a011c

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_182
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->f:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const v0, 0x7f0f00ed

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->g:Ljava/lang/String;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->V:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aj:Z

    new-instance v1, Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/spotify/mobile/android/util/cc;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cd;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Y:Lcom/spotify/mobile/android/util/cc;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/a/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Y:Lcom/spotify/mobile/android/util/cc;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/a/b;-><init>(ILcom/spotify/mobile/android/a/b;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->a:Lcom/spotify/mobile/android/spotlets/browse/a/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->a:Lcom/spotify/mobile/android/spotlets/browse/a/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->a(Ljava/util/List;)V

    const-string v1, "spotify:app:browse"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->h:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->h:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->h:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->c:Lcom/spotify/mobile/android/util/dw;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aj:Z

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ak:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ak:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    :cond_88
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ab:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_98

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->aa:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_aa

    :cond_98
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_aa
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/util/a;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->d:Landroid/view/View;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v4, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    if-eqz p2, :cond_70

    const-string v0, "genres"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->an:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->b:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    const-string v0, "featuredPlaylistsLabel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ab:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ab:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ac:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_63
    const-string v0, "list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_70
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a015a

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->Y:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0159

    new-instance v3, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->a:Lcom/spotify/mobile/android/spotlets/browse/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/c/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    const-string v0, "genres"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->a:Lcom/spotify/mobile/android/spotlets/browse/a/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "list"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "featuredPlaylistsLabel"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->h:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Z)V
    .registers 10

    const/16 v1, 0x8

    const/4 v7, 0x0

    if-eqz p1, :cond_71

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ao:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v7, v1}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/a;->b(II)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->aj:Z

    if-eqz v0, :cond_5e

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;

    const-class v2, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;

    invoke-direct {v1, p0, v0, v2}, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;-><init>(Lcom/spotify/mobile/android/spotlets/browse/a;Landroid/os/Handler;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ak:Lcom/spotify/cosmos/android/Resolver;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/util/c/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "hm://sommelier-aggregator/v1/usertopplaylistrecs?timestamp=%s&language=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/spotify/mobile/android/util/an;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    :cond_5e
    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->an:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/b;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Landroid/content/res/Resources;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v7, v1}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/b;->b(II)V

    :goto_70
    return-void

    :cond_71
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_70
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->h:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->c:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->c:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ak:Lcom/spotify/cosmos/android/Resolver;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a;->ak:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    :cond_c
    return-void
.end method

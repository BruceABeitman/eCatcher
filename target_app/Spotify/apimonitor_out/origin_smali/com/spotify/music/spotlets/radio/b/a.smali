.class public final Lcom/spotify/music/spotlets/radio/b/a;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;


# instance fields
.field private Y:Lcom/spotify/mobile/android/util/tracking/n;

.field private Z:Lcom/spotify/android/paste/widget/EmptyView;

.field private aa:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

.field private final ac:Lcom/spotify/mobile/android/ui/stuff/d;

.field private ad:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Lcom/spotify/mobile/android/ui/adapter/o;

.field private af:Lcom/spotify/music/spotlets/radio/a/b;

.field private ag:Lcom/spotify/music/spotlets/radio/a/b;

.field private ah:Lcom/spotify/music/spotlets/radio/a/b;

.field private ai:Ljava/lang/String;

.field private aj:Lcom/spotify/mobile/android/util/dw;

.field private ak:Lcom/spotify/mobile/android/util/ClientInfo;

.field private al:Lcom/spotify/music/spotlets/radio/service/c;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->i:Z

    new-instance v0, Lcom/spotify/music/spotlets/radio/b/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/b/a$1;-><init>(Lcom/spotify/music/spotlets/radio/b/a;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ac:Lcom/spotify/mobile/android/ui/stuff/d;

    new-instance v0, Lcom/spotify/music/spotlets/radio/b/a$2;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/b/a$2;-><init>(Lcom/spotify/music/spotlets/radio/b/a;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ad:Landroid/support/v4/app/z;

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ak:Lcom/spotify/mobile/android/util/ClientInfo;

    return-void
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/mobile/android/util/ClientInfo;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ak:Lcom/spotify/mobile/android/util/ClientInfo;

    return-object v0
.end method

.method private a(Lcom/spotify/mobile/android/util/ViewUri$SubView;ZIIZ)Lcom/spotify/music/spotlets/radio/a/b;
    .registers 12

    new-instance v0, Lcom/spotify/music/spotlets/radio/a/b;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-object v3, p1

    move v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/spotify/music/spotlets/radio/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZZ)V

    const-class v1, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ao;->b()I

    move-result v1

    const/high16 v2, 0x4280

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->k()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->k()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/spotify/android/paste/widget/CardView;->a(IIII)I

    move-result v1

    new-instance v2, Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/devsmart/android/ui/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/devsmart/android/ui/HorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Lcom/devsmart/android/ui/HorizontalListView;->a(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v3, Lcom/spotify/mobile/android/ui/adapter/h;

    invoke-direct {v3, v2}, Lcom/spotify/mobile/android/ui/adapter/h;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    invoke-virtual {p0, p3}, Lcom/spotify/music/spotlets/radio/b/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p4}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/spotify/music/spotlets/radio/b/a;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/music/spotlets/radio/b/a;

    invoke-direct {v1}, Lcom/spotify/music/spotlets/radio/b/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/music/spotlets/radio/b/a;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/radio/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/music/spotlets/radio/b/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/android/paste/widget/EmptyView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->Z:Lcom/spotify/android/paste/widget/EmptyView;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/music/spotlets/radio/b/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/music/spotlets/radio/service/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->al:Lcom/spotify/music/spotlets/radio/service/c;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/mobile/android/util/tracking/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->Y:Lcom/spotify/mobile/android/util/tracking/n;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/music/spotlets/radio/b/a;)V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->i:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->aa:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->al:Lcom/spotify/music/spotlets/radio/service/c;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/c;->h()Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->af:Lcom/spotify/music/spotlets/radio/a/b;

    iget-object v2, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-virtual {v1, v2}, Lcom/spotify/music/spotlets/radio/a/b;->a([Lcom/spotify/music/spotlets/radio/model/a;)V

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->ag:Lcom/spotify/music/spotlets/radio/a/b;

    iget-object v2, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-virtual {v1, v2}, Lcom/spotify/music/spotlets/radio/a/b;->a([Lcom/spotify/music/spotlets/radio/model/a;)V

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->ah:Lcom/spotify/music/spotlets/radio/a/b;

    iget-object v0, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-virtual {v1, v0}, Lcom/spotify/music/spotlets/radio/a/b;->a([Lcom/spotify/music/spotlets/radio/model/a;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->b(Z)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    :cond_48
    return-void
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->h:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v7, 0x0

    const v0, 0x7f030072

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    const v0, 0x7f0a02bf

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->Z:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0f023e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->Z:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V

    new-instance v1, Lcom/spotify/music/spotlets/radio/b/a$4;

    invoke-direct {v1, p0}, Lcom/spotify/music/spotlets/radio/b/a$4;-><init>(Lcom/spotify/music/spotlets/radio/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v1, Lcom/spotify/music/spotlets/radio/b/a$5;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/spotify/music/spotlets/radio/b/a$5;-><init>(Lcom/spotify/music/spotlets/radio/b/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Lcom/spotify/mobile/android/ui/adapter/v;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/radio/b/a;->a(Landroid/widget/ListAdapter;)V

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->b:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    const v3, 0x7f0f0316

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/spotify/music/spotlets/radio/b/a;->a(Lcom/spotify/mobile/android/util/ViewUri$SubView;ZIIZ)Lcom/spotify/music/spotlets/radio/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->af:Lcom/spotify/music/spotlets/radio/a/b;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    const v3, 0x7f0f0315

    const/4 v4, 0x2

    move-object v0, p0

    move v2, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/spotify/music/spotlets/radio/b/a;->a(Lcom/spotify/mobile/android/util/ViewUri$SubView;ZIIZ)Lcom/spotify/music/spotlets/radio/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ag:Lcom/spotify/music/spotlets/radio/a/b;

    new-instance v0, Lcom/spotify/music/spotlets/radio/b/b;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/music/spotlets/radio/b/b;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ah:Lcom/spotify/music/spotlets/radio/a/b;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->ah:Lcom/spotify/music/spotlets/radio/a/b;

    const v2, 0x7f0f0314

    invoke-virtual {v0, v1, v2, v8}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ae:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v8, [I

    fill-array-data v1, :array_9a

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->aa:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->aa:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v6

    :array_9a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ai:Ljava/lang/String;

    if-nez v0, :cond_c

    const v0, 0x7f0f031a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ai:Ljava/lang/String;

    goto :goto_b
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ai:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/radio/b/a;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->Y:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->Y:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/music/spotlets/radio/service/c;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/spotify/music/spotlets/radio/b/a$3;

    invoke-direct {v2, p0}, Lcom/spotify/music/spotlets/radio/b/a$3;-><init>(Lcom/spotify/music/spotlets/radio/b/a;)V

    invoke-direct {v0, v1, v2}, Lcom/spotify/music/spotlets/radio/service/c;-><init>(Landroid/content/Context;Lcom/spotify/music/spotlets/radio/service/d;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->al:Lcom/spotify/music/spotlets/radio/service/c;

    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 4

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-boolean v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->i:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, p1, v1}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    :cond_10
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v1, Lcom/spotify/mobile/android/ui/stuff/c;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v0, 0x7f0a02bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->a()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/spotify/mobile/android/ui/stuff/c;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V

    const v0, 0x7f0f020b

    const v2, 0x7f0f0241

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->a(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    const v1, 0x7f0f0454

    const v2, 0x7f0f0453

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->b(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a;->ac:Lcom/spotify/mobile/android/ui/stuff/d;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/d;)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/b/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01a3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/music/spotlets/radio/b/a;->ad:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->Y:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final r_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->r_()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->Y:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->s_()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->Y:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->x()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->y()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->z()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a;->al:Lcom/spotify/music/spotlets/radio/service/c;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/c;->i()V

    return-void
.end method

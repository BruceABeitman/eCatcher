.class public final Lcom/spotify/mobile/android/spotlets/user/j;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;


# instance fields
.field private Y:Lcom/spotify/mobile/android/util/z;

.field private Z:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

.field private aa:Ljava/lang/String;

.field private ab:Z

.field private ac:Lcom/spotify/mobile/android/spotlets/user/i;

.field private ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

.field private i:Lcom/spotify/cosmos/android/Resolver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    return-void
.end method

.method private E()V
    .registers 6

    const-string v0, "hm://user-profile-view/v1/android/profile/%s/most-played-artists"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/j;->aa:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/j;->i:Lcom/spotify/cosmos/android/Resolver;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/user/TopArtistsFragment$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-class v4, Lcom/spotify/mobile/android/spotlets/user/TopArtistsListModel;

    invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/user/TopArtistsFragment$1;-><init>(Lcom/spotify/mobile/android/spotlets/user/j;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/j;)Lcom/spotify/mobile/android/spotlets/user/i;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ac:Lcom/spotify/mobile/android/spotlets/user/i;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/user/j;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user-uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/user/j;

    invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/user/j;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/user/j;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/user/j;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const v0, 0x7f030086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artists-json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artists-json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    array-length v0, v2

    if-ge v1, v0, :cond_2b

    aget-object v0, v2, v1

    check-cast v0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_2b
    iput-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/j;->Z:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user-uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "user-uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->aa:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->i:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->i:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ab:Z

    goto :goto_2d
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/user/i;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/user/i;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ac:Lcom/spotify/mobile/android/spotlets/user/i;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ac:Lcom/spotify/mobile/android/spotlets/user/i;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/j;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->Z:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ac:Lcom/spotify/mobile/android/spotlets/user/i;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/j;->Z:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/i;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    :goto_26
    return-void

    :cond_27
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ab:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->b:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    new-instance v0, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->Y:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01a1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/j;->Y:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->E()V

    goto :goto_26

    :cond_4e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->c:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    goto :goto_26
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/j;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final d(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Z)V

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->ab:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/j;->E()V

    :cond_e
    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->i:Lcom/spotify/cosmos/android/Resolver;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/j;->i:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    :cond_c
    return-void
.end method

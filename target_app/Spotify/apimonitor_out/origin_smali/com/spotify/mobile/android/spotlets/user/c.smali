.class public final Lcom/spotify/mobile/android/spotlets/user/c;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;


# instance fields
.field private Y:Lcom/spotify/mobile/android/spotlets/user/b;

.field private Z:Lcom/spotify/mobile/android/util/z;

.field private aa:Lcom/spotify/cosmos/android/Resolver;

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private i:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    return-void
.end method

.method public static a(Lcom/spotify/mobile/android/util/SpotifyLink;)Lcom/spotify/mobile/android/spotlets/user/c;
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/spotlets/user/c;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/user/c;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "username"

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/c;->c_(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->ab:Z

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/user/c;)Lcom/spotify/mobile/android/spotlets/user/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->Y:Lcom/spotify/mobile/android/spotlets/user/b;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/user/c;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->i:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

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

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/c;->i:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f030c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->ac:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->aa:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->aa:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/user/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->Y:Lcom/spotify/mobile/android/spotlets/user/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->Y:Lcom/spotify/mobile/android/spotlets/user/b;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/c;->a(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->Z:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a019b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/c;->Z:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->i:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->b:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "hm://user-profile-view/v1/android/profile/%s/invitationcodes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/c;->ac:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/c;->aa:Lcom/spotify/cosmos/android/Resolver;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/user/InvitationCodesFragment$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-class v4, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeListModel;

    invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodesFragment$1;-><init>(Lcom/spotify/mobile/android/spotlets/user/c;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/user/a;->a(Landroid/app/Activity;Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;)V

    return-void
.end method

.method public final d(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->i:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Z)V

    return-void
.end method

.method public final z()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->aa:Lcom/spotify/cosmos/android/Resolver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->aa:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/user/c;->ab:Z

    invoke-super {p0}, Landroid/support/v4/app/x;->z()V

    return-void
.end method

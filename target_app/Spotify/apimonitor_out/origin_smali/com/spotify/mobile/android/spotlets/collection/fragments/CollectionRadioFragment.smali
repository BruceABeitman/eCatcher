.class public final Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
.implements Lcom/spotify/mobile/android/ui/fragments/e;


# static fields
.field public static final Y:Ljava/lang/String;

.field static final i:[Ljava/lang/String;


# instance fields
.field private Z:Lcom/spotify/mobile/android/util/dw;

.field private aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private ab:Lcom/spotify/mobile/android/util/tracking/n;

.field private ac:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private ad:Lcom/spotify/cosmos/android/Resolver;

.field private ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/c;

.field private af:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

.field private ag:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;

.field private ah:Z

.field private final ai:Lcom/spotify/mobile/android/ui/stuff/d;

.field private aj:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->i:[Ljava/lang/String;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aO:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ag:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ah:Z

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ai:Lcom/spotify/mobile/android/ui/stuff/d;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->aj:Landroid/support/v4/app/z;

    return-void
.end method

.method public static E()Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->c_(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ag:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ag:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ah:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->af:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/ui/view/LoadingView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ac:Lcom/spotify/mobile/android/ui/view/LoadingView;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-class v2, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;

    invoke-direct {v0, p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$3;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;Landroid/os/Handler;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ad:Lcom/spotify/cosmos/android/Resolver;

    const-string v2, "hm://radio-apollo/v1/all"

    invoke-static {v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/spotlets/collection/adapter/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/c;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/util/tracking/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v0, 0x7f030072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ac:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ac:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/adapter/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/adapter/c;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/c;

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f0114

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aO:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->Z:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ad:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ad:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 4

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ah:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, p1, v1}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    :cond_10
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v1, Lcom/spotify/mobile/android/ui/stuff/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v0, 0x7f0a02bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/spotify/mobile/android/ui/stuff/c;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V

    const v0, 0x7f0f020b

    const v2, 0x7f0f0241

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->a(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v2, 0x7f0f0456

    const v3, 0x7f0f0455

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    const v1, 0x7f0f0240

    const v2, 0x7f0f023f

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->b(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ai:Lcom/spotify/mobile/android/ui/stuff/d;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/d;)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->af:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01a3

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->aj:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01a8

    new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method public final b(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/support/v4/app/x;->b(Z)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    invoke-super {p0}, Landroid/support/v4/app/x;->f()V

    return-void
.end method

.method public final h_()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->Z:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a(Z)V

    return-void
.end method

.method public final i_()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->Z:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a(Z)V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->ad:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    return-void
.end method

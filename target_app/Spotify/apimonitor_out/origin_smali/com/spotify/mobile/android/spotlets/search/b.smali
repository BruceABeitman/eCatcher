.class public final Lcom/spotify/mobile/android/spotlets/search/b;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/model/l;
.implements Lcom/spotify/mobile/android/spotlets/common/persistence/d;
.implements Lcom/spotify/mobile/android/spotlets/search/a;
.implements Lcom/spotify/mobile/android/spotlets/search/loader/d;
.implements Lcom/spotify/mobile/android/spotlets/search/view/f;
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/activity/o;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/ui/k;


# static fields
.field private static final aj:Ljava/lang/Object;


# instance fields
.field Y:I

.field Z:I

.field a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

.field aa:Z

.field ab:Z

.field ac:Z

.field ad:Z

.field ae:I

.field af:Lcom/spotify/mobile/android/spotlets/search/view/a;

.field ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

.field private ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

.field private ai:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private ak:Lcom/spotify/cosmos/android/Resolver;

.field private al:Lcom/spotify/mobile/android/spotlets/search/player/c;

.field private am:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

.field private an:Lcom/spotify/mobile/android/util/dw;

.field private ao:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

.field private av:I

.field private aw:Lcom/spotify/mobile/android/util/ui/ScrollPosition;

.field private final ax:Lcom/spotify/mobile/android/ui/actions/d;

.field private ay:Lcom/spotify/mobile/android/spotlets/search/view/e;

.field private az:Ljava/lang/Runnable;

.field b:Lcom/spotify/mobile/android/spotlets/search/a/c;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:I

.field h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

.field i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/b;->aj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ai:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ax:Lcom/spotify/mobile/android/ui/actions/d;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ay:Lcom/spotify/mobile/android/spotlets/search/view/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/b$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/b$2;-><init>(Lcom/spotify/mobile/android/spotlets/search/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->az:Ljava/lang/Runnable;

    return-void
.end method

.method private Q()V
    .registers 5

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ar:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->M()V

    const-string v0, "updateResults with results for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b()Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ae:I

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->j()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ae:I

    :cond_42
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->R()V

    goto :goto_4
.end method

.method private R()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "updateInfoViews with results for %s"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ac:Z

    if-eqz v3, :cond_31

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p()V

    move v0, v2

    move v3, v1

    :goto_26
    if-eqz v3, :cond_2b

    invoke-direct {p0, v2}, Lcom/spotify/mobile/android/spotlets/search/b;->e(Z)V

    :cond_2b
    if-eqz v0, :cond_30

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/search/b;->e(Z)V

    :cond_30
    return-void

    :cond_31
    iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ab:Z

    if-eqz v3, :cond_45

    if-nez v0, :cond_3d

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->T()Z

    move-result v3

    if-nez v3, :cond_45

    :cond_3d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->q()V

    move v0, v2

    move v3, v1

    goto :goto_26

    :cond_45
    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b()Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->S()Z

    move-result v0

    if-nez v0, :cond_5b

    move v0, v1

    :goto_59
    move v3, v1

    goto :goto_26

    :cond_5b
    move v0, v2

    goto :goto_59

    :cond_5d
    if-nez v0, :cond_70

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->T()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s()V

    move v0, v2

    move v3, v1

    goto :goto_26

    :cond_6d
    move v0, v2

    move v3, v2

    goto :goto_26

    :cond_70
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->t()V

    move v0, v2

    move v3, v1

    goto :goto_26

    :cond_80
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u()V

    move v0, v2

    move v3, v1

    goto :goto_26
.end method

.method private S()Z
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private T()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private U()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;)Lcom/spotify/mobile/android/spotlets/search/b;
    .registers 7

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/search/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_query"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "start_playback"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "start_radio"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/b;->c_(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;)V
    .registers 5

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Can\'t play track in MFT"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->al:Lcom/spotify/mobile/android/spotlets/search/player/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/spotify/mobile/android/spotlets/search/player/c;->a(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
    .registers 6

    if-nez p2, :cond_23

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getUri()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/a/c;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    :goto_d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ax:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/spotify/mobile/android/spotlets/search/a/c;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    goto :goto_d
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a(Z)V

    return-void
.end method

.method private c(I)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    if-ne v0, p1, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->U()V

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->g:I

    goto :goto_2

    :cond_1a
    iput p1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->g:I

    goto :goto_2
.end method

.method private d(Z)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ad:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/music/MainActivity;

    if-eqz p1, :cond_2f

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/search/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/spotify/music/MainActivity;->a(Lcom/spotify/mobile/android/ui/activity/o;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->M()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->d()V

    :cond_2a
    :goto_2a
    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->at:Z

    iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ad:Z

    return-void

    :cond_2f
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/music/MainActivity;->a(Lcom/spotify/mobile/android/ui/activity/o;)V

    goto :goto_2a
.end method

.method private e(Z)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    if-eqz p1, :cond_1a

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aa:Z

    if-nez v0, :cond_1a

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    if-eqz p1, :cond_1c

    iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aa:Z

    if-eqz v3, :cond_1c

    :goto_16
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Z)V

    return-void

    :cond_1a
    move v0, v2

    goto :goto_b

    :cond_1c
    move v1, v2

    goto :goto_16
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->b:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    return-object v0
.end method

.method final F()V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->o()Z

    move-result v0

    if-eqz v0, :cond_23

    const-class v0, Lcom/spotify/mobile/android/spotlets/common/persistence/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/persistence/g;

    const-string v2, "search"

    invoke-interface {v0, p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/common/persistence/g;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->am:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/b$4;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/b$4;-><init>(Lcom/spotify/mobile/android/spotlets/search/b;)V

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/b/a/c;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/e;)V

    goto :goto_23
.end method

.method public final G()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-eq v2, v3, :cond_43

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/b;->aj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->as:Z

    if-eqz v2, :cond_34

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->as:Z

    :goto_1a
    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->Q()V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aw:Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aw:Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Lcom/spotify/mobile/android/util/ui/ScrollPosition;)V

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aw:Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    :cond_2e
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/search/b;->b(Ljava/lang/String;)V

    :goto_33
    return v0

    :cond_34
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->au:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->av:I

    iput v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/b;->au:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->av:I

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aa:Z

    goto :goto_1a

    :cond_43
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-direct {p0, v4}, Lcom/spotify/mobile/android/spotlets/search/b;->b(Ljava/lang/String;)V

    goto :goto_33

    :cond_4f
    move v0, v1

    goto :goto_33
.end method

.method public final H()V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->d(Z)V

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method final I()V
    .registers 3

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/o;->a()Z

    move-result v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ab:Z

    if-ne v0, v1, :cond_10

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ab:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->R()V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final J()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->o()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a/c;->a()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->R()V

    return-void
.end method

.method public final K()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->l()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aa:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->e()Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v1

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->loadMoreURI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V

    goto :goto_19
.end method

.method public final L()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ap:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final M()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/b/f;->a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->at:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne v0, v2, :cond_2b

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a(Z)V

    goto :goto_4

    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method final N()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-nez v0, :cond_8

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aa:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V

    return-void
.end method

.method final O()V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->w()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method final P()V
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->c(I)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/view/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ap:Z

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/search/view/a;-><init>(Landroid/support/v7/app/ActionBarActivity;Z)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ay:Lcom/spotify/mobile/android/spotlets/search/view/e;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a(Lcom/spotify/mobile/android/spotlets/search/view/e;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->h()Lcom/spotify/mobile/android/spotlets/search/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/b/e;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    :goto_8
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "start_radio"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_23

    const v1, 0x7f0f0320

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    const-string v0, ""

    goto :goto_8

    :cond_23
    const v1, 0x7f0f0333

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public final a(ILjava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;)V
    .registers 10

    const/4 v1, 0x1

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    if-eq p1, v0, :cond_d

    move v0, v1

    :goto_a
    if-nez v0, :cond_f

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_a

    :cond_f
    iget-object v0, p4, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;->b:Ljava/lang/Throwable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Req#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_58

    :goto_37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/b/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->NO_RESULTS:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ac:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->Q()V

    goto :goto_c

    :cond_55
    const-string v0, "Req"

    goto :goto_2b

    :cond_58
    const-string p2, "raw"

    goto :goto_37
.end method

.method public final a(ILjava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    :cond_4
    :goto_4
    if-nez v0, :cond_8d

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    if-eq v2, v3, :cond_8a

    if-eqz p3, :cond_13

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne p3, v2, :cond_8a

    :cond_13
    if-nez p3, :cond_19

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aa:Z

    if-eqz v2, :cond_8a

    :cond_19
    iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    if-eq v2, p1, :cond_8a

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    if-eq v2, p1, :cond_4

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    :cond_35
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_51
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const-string v4, "Delta: %d (was: %d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lt v2, v3, :cond_4

    move v0, v1

    goto/16 :goto_4

    :cond_8a
    move v0, v1

    goto/16 :goto_4

    :cond_8d
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    if-ne p1, v0, :cond_96

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b()V

    :cond_96
    if-nez p3, :cond_9a

    if-nez p1, :cond_9c

    :cond_9a
    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    :cond_9c
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->as:Z

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->m()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->j()I

    move-result v0

    if-lez v0, :cond_b8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->i()Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aw:Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    :cond_b8
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->au:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->av:I

    :cond_c0
    if-nez p3, :cond_131

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aa:Z

    if-eqz v0, :cond_131

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_131

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v0, p4}, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->append(Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    :goto_d2
    iput p1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne p3, v0, :cond_dd

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->g:I

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->c(I)V

    :cond_dd
    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ac:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->Q()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aq:Z

    if-eqz v0, :cond_124

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aq:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "start_playback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_124

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ap:Z

    if-nez v0, :cond_124

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_124

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;)V

    :cond_124
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->as:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->as:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->g()V

    goto/16 :goto_6

    :cond_131
    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    goto :goto_d2
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/a/a;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/a/a;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "start_radio"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ap:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "start_playback"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aq:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    if-nez v0, :cond_42

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    :cond_42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ao:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->Y:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->Z:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ak:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ak:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/player/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ak:Lcom/spotify/cosmos/android/Resolver;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/player/a;-><init>(Lcom/spotify/cosmos/android/Resolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->al:Lcom/spotify/mobile/android/spotlets/search/player/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->al:Lcom/spotify/mobile/android/spotlets/search/player/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/player/c;->a()Landroid/database/Observable;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/b$3;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/b$3;-><init>(Lcom/spotify/mobile/android/spotlets/search/b;)V

    invoke-virtual {v0, v1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->e()Landroid/support/v4/app/y;

    move-result-object v2

    const v3, 0x7f0a01a9

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/common/b/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/y;I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->am:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ak:Lcom/spotify/cosmos/android/Resolver;

    invoke-direct {v0, v1, p0, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;-><init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/loader/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-direct {v0, p0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/view/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_9b

    const-string v0, "search_query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    const-string v0, "requested_search_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    const-string v0, "loading_indicator"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0, v4, v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(ZZ)V

    :goto_24
    const-string v0, "show_all_results_clicked"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->as:Z

    const-string v0, "search_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    const-string v0, "current_results"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "previous_results"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_60

    :try_start_44
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ai:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    const-string v0, "current_results_query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    const-string v0, "current_results_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    :cond_60
    if-eqz v1, :cond_80

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ai:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->au:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    const-string v0, "previous_results_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->av:I

    const-string v0, "scroll_pos"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aw:Lcom/spotify/mobile/android/util/ui/ScrollPosition;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_80} :catch_96

    :cond_80
    :goto_80
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->F()V

    iput-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ar:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/b$5;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/b$5;-><init>(Lcom/spotify/mobile/android/spotlets/search/b;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    :cond_90
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b(Z)V

    goto :goto_24

    :catch_96
    move-exception v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Exception;)V

    goto :goto_80

    :cond_9b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    goto :goto_80
.end method

.method final a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V
    .registers 11

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->I()V

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ab:Z

    if-eqz v1, :cond_3e

    if-nez v0, :cond_3e

    const-string v0, "No connection: %s not performed. Trying again after %d ms"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v4

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/b;->aj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/b$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/search/b$6;-><init>(Lcom/spotify/mobile/android/spotlets/search/b;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/b;->aj:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/search/b;->Y:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_3d
    return-void

    :cond_3e
    if-eqz p3, :cond_45

    if-nez v0, :cond_45

    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/spotlets/search/b;->e(Z)V

    :cond_45
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/b;->aj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne p1, v0, :cond_6f

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->Z:I

    :goto_54
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v2, p1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;)I

    move-result v2

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    const-string v0, "Performing %s"

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    :cond_6f
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ae:I

    goto :goto_54
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->O:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;II)V
    .registers 10

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->subView:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3, p4, p1}, Lcom/spotify/mobile/android/spotlets/search/a/c;->a(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/search/model/entity/b;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->O()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->U()V

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ap:Z

    if-eqz v1, :cond_1b

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    :goto_1a
    return-void

    :cond_1b
    instance-of v1, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;

    if-eqz v1, :cond_50

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;

    new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ad:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v2, v3, :cond_3c

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->b()I

    move-result v2

    if-le v2, v4, :cond_3c

    invoke-virtual {v1, v4}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_3c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->b(Ljava/lang/String;)V

    goto :goto_1a

    :cond_46
    const-string v0, "Invalid suggestion link"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_50
    instance-of v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    if-eqz v0, :cond_5a

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;)V

    goto :goto_1a

    :cond_5a
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Landroid/content/Intent;)V

    goto :goto_1a
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->O()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->searchType:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->M()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-interface {v0, v1, p2}, Lcom/spotify/mobile/android/spotlets/search/a/c;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->as:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->N()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->U()V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->O()V

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/a/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final b_(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "recent_searches"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a([Ljava/lang/String;)V

    const-string v1, "Loaded %d recent searches"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->R()V

    return-void
.end method

.method public final c()V
    .registers 2

    const-string v0, "feature state save"

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/f;->a(Lcom/spotify/mobile/android/ui/k;)V

    return-void
.end method

.method public final d()Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    const-string v0, "search_query"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_results_query"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scroll_pos"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->aw:Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "requested_search_id"

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loading_indicator"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->n()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "show_all_results_clicked"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->as:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "search_type"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :try_start_38
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_50

    const-string v0, "current_results"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ai:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ah:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_results_id"

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_50
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->au:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_68

    const-string v0, "previous_results"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ai:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->au:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "previous_results_id"

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->av:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_68
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_38 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    return-void

    :catch_69
    move-exception v0

    const-string v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_68
.end method

.method public final e()Lcom/spotify/mobile/android/spotlets/search/view/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    return-object v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "recent_searches"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ar:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ay:Lcom/spotify/mobile/android/spotlets/search/view/e;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/a;->b(Lcom/spotify/mobile/android/spotlets/search/view/e;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->af:Lcom/spotify/mobile/android/spotlets/search/view/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->e()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->v()V

    return-void
.end method

.method public final g()Lcom/spotify/mobile/android/spotlets/common/b/a/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->am:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    return-object v0
.end method

.method public final g_()Landroid/net/Uri;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/spotify/mobile/android/util/ViewUri$SubView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    :goto_6
    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/a/a;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;)Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    goto :goto_6
.end method

.method public final j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ap:Z

    if-eqz v1, :cond_27

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->C:Lcom/spotify/mobile/android/util/ea;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spotify:radio:create_station:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    const-string v0, ""

    goto :goto_a

    :cond_27
    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->A:Lcom/spotify/mobile/android/util/ea;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spotify:search:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    goto :goto_23
.end method

.method public final k_()Z
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    return v0
.end method

.method public final l_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ap:Z

    return v0
.end method

.method public final m_()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final n_()V
    .registers 2

    const-string v0, "feature state load"

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final o_()Lcom/spotify/mobile/android/spotlets/search/player/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->al:Lcom/spotify/mobile/android/spotlets/search/player/c;

    return-object v0
.end method

.method public final x()V
    .registers 5

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->an:Lcom/spotify/mobile/android/util/dw;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ao:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->an:Lcom/spotify/mobile/android/util/dw;

    :cond_13
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->an:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a/c;->c()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->d(Z)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->Q()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->T()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->S()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->N()V

    :cond_33
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->M()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->az:Ljava/lang/Runnable;

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/b;->Y:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final y()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->d(Z)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/b;->aj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b;->az:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->an:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->b:Lcom/spotify/mobile/android/spotlets/search/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a/c;->d()V

    return-void
.end method

.method public final z()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/k;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->ak:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->al:Lcom/spotify/mobile/android/spotlets/search/player/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/player/c;->c()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b;->am:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/b/a/c;->b()V

    return-void
.end method

.class public Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/ui/n;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final at:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;

.field private static final g:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Y:Lcom/spotify/mobile/android/util/cw;

.field private Z:Landroid/widget/ListView;

.field private aA:Landroid/widget/AdapterView$OnItemClickListener;

.field private aa:Lcom/spotify/android/paste/widget/EmptyView;

.field private ab:Landroid/os/Parcelable;

.field private ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

.field private ad:Lcom/spotify/mobile/android/util/av;

.field private ae:Lcom/spotify/mobile/android/util/dw;

.field private af:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private ag:Lcom/spotify/mobile/android/util/cx;

.field private ah:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

.field private ai:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

.field private aj:Lcom/spotify/mobile/android/ui/adapter/o;

.field private ak:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private al:Lcom/spotify/mobile/android/ui/adapter/i;

.field private am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

.field private an:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

.field private ao:Z

.field private ap:Lcom/spotify/mobile/android/ui/l;

.field private aq:Lcom/spotify/mobile/android/ui/actions/a;

.field private ar:Lcom/spotify/mobile/android/util/tracking/n;

.field private final as:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private au:Lcom/spotify/mobile/android/spotlets/common/b/a/e;

.field private av:Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;

.field private aw:Lcom/spotify/mobile/android/spotlets/collection/b/d;

.field private ax:Landroid/view/View$OnClickListener;

.field private ay:Lcom/spotify/mobile/android/ui/view/j;

.field private az:Lcom/spotify/mobile/android/util/aw;

.field protected b:Lcom/spotify/android/paste/widget/EmptyView;

.field protected c:Lcom/spotify/android/paste/widget/EmptyView;

.field protected d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

.field protected e:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;

.field protected f:Lcom/spotify/mobile/android/spotlets/collection/a/c;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aJ:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a:Ljava/lang/String;

    const-string v0, "albums_sort_order"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->g:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "albums_hide_incomplete_albums"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->h:Lcom/spotify/mobile/android/util/cz;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$5;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$5;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->at:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aq:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->as:Lcom/spotify/mobile/android/ui/contextmenu/f;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$6;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->au:Lcom/spotify/mobile/android/spotlets/common/b/a/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->e:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->av:Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->f:Lcom/spotify/mobile/android/spotlets/collection/a/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$10;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$10;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aw:Lcom/spotify/mobile/android/spotlets/collection/b/d;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$12;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ax:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ay:Lcom/spotify/mobile/android/ui/view/j;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$3;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->az:Lcom/spotify/mobile/android/util/aw;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$4;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aA:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic E()Lcom/spotify/mobile/android/util/cz;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->h:Lcom/spotify/mobile/android/util/cz;

    return-object v0
.end method

.method private F()V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->n()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1f

    instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/l;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/l;->a()Ljava/lang/String;

    move-result-object v1

    :cond_19
    check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a(Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f010d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V

    goto :goto_1e
.end method

.method public static a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "username"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "can_sync"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c_(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->af:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;IZ)V
    .registers 10

    const/4 v6, 0x2

    const/16 v1, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ak:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ad:Lcom/spotify/mobile/android/util/av;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/av;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    check-cast v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a()V

    :cond_2c
    if-nez p1, :cond_69

    if-nez p2, :cond_69

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/l;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v5, [I

    aput v5, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    :goto_4d
    if-eqz p1, :cond_e7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ad:Lcom/spotify/mobile/android/util/av;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/av;->a()Z

    move-result v0

    if-eqz v0, :cond_e7

    :cond_5f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V

    :goto_68
    return-void

    :cond_69
    if-eqz p2, :cond_a3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/l;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v5, [I

    aput v5, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aa:Lcom/spotify/android/paste/widget/EmptyView;

    const v1, 0x7f0f02ce

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V

    goto :goto_4d

    :cond_a3
    if-eqz p2, :cond_c3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/l;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v5, [I

    aput v5, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    goto :goto_4d

    :cond_c3
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/l;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v5, [I

    aput v5, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    goto/16 :goto_4d

    :cond_e7
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    goto/16 :goto_68
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/l;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ai:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ab:Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ab:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ab:Landroid/os/Parcelable;

    :cond_e
    return-void
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/tracking/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ar:Lcom/spotify/mobile/android/util/tracking/n;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/a/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ah:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/b/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/av;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ad:Lcom/spotify/mobile/android/util/av;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->o()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ad:Lcom/spotify/mobile/android/util/av;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/av;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a(ZZ)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->b()V

    :cond_1c
    return-void
.end method

.method static synthetic j(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ao:Z

    return v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/adapter/i;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->al:Lcom/spotify/mobile/android/ui/adapter/i;

    return-object v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/cx;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ag:Lcom/spotify/mobile/android/util/cx;

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aq:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic n(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/l;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15

    const/16 v4, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const v0, 0x7f03008b

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    const v0, 0x102000a

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ao:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->av:Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;-><init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_34
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->b(Landroid/content/Context;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ax:Landroid/view/View$OnClickListener;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aa:Lcom/spotify/android/paste/widget/EmptyView;

    const v0, 0x7f030042

    invoke-virtual {p1, v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a025a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ax:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ao:Z

    if-eqz v0, :cond_15f

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->as:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v0, v3, v4}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ai:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ai:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->an:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    invoke-interface {v3}, Lcom/spotify/mobile/android/spotlets/common/b/a/c;->c()Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->d()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ai:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

    invoke-virtual {v0, v3, v6, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    :goto_af
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v3, Lcom/spotify/mobile/android/ui/adapter/t;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aa:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-direct {v3, v4, v1}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V

    invoke-virtual {v0, v3, v6, v9}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v3, Lcom/spotify/mobile/android/ui/adapter/t;

    invoke-direct {v3, v2, v1}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V

    invoke-virtual {v0, v3, v6, v10}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v10, [I

    fill-array-data v1, :array_1aa

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->c()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ay:Lcom/spotify/mobile/android/ui/view/j;

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->af:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    const-string v2, "albums"

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    const v1, 0x7f0f022b

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ak:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ak:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aA:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$11;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$11;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/l;

    invoke-direct {v0, p0, p0, v7}, Lcom/spotify/mobile/android/ui/l;-><init>(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/n;Landroid/view/View;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/ui/l;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ar:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ak:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    invoke-interface {v0, p3}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->b(Landroid/os/Bundle;)V

    return-object v7

    :cond_15f
    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->at:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->as:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v0, v3, v4, v5}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;Lcom/spotify/mobile/android/ui/contextmenu/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ah:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/i;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ah:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    const/16 v5, 0x14

    invoke-direct {v0, v3, v4, v5}, Lcom/spotify/mobile/android/ui/adapter/i;-><init>(Landroid/content/Context;Landroid/support/v4/widget/b;I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->al:Lcom/spotify/mobile/android/ui/adapter/i;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->al:Lcom/spotify/mobile/android/ui/adapter/i;

    const-string v0, "time_added"

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19b

    const-string v0, "most_played_rank"

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    :cond_19b
    move v0, v9

    :goto_19c
    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/adapter/i;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aj:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->al:Lcom/spotify/mobile/android/ui/adapter/i;

    invoke-virtual {v0, v3, v6, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    goto/16 :goto_af

    :cond_1a8
    move v0, v1

    goto :goto_19c

    :array_1aa
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f010d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->r:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ao:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ao:Z

    if-eqz v0, :cond_120

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->e:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->h()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->u()Landroid/support/v4/app/y;

    move-result-object v2

    const v3, 0x7f0a0163

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/common/b/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/y;I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->an:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->a()V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->au:Lcom/spotify/mobile/android/spotlets/common/b/a/e;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/e;)V

    :cond_45
    :goto_45
    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    if-eqz p1, :cond_5b

    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    const-string v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ab:Landroid/os/Parcelable;

    :cond_5b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ag:Lcom/spotify/mobile/android/util/cx;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ag:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->g:Lcom/spotify/mobile/android/util/cz;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->d()Lcom/spotify/mobile/android/util/cw;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    invoke-interface {v3}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;->a(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    if-nez v0, :cond_83

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    :cond_83
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->d()Lcom/spotify/mobile/android/util/cw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    :cond_8f
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aJ:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->af:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->af:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ae:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->af:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ar:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ar:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->af:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    const-string v3, "albums"

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->h()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "can_sync"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ag:Lcom/spotify/mobile/android/util/cx;

    sget-object v6, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/collection/b/c;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;ZLcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    new-instance v0, Lcom/spotify/mobile/android/util/av;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->az:Lcom/spotify/mobile/android/util/aw;

    const v2, 0x7f0f0217

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/av;-><init>(Lcom/spotify/mobile/android/util/aw;I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ad:Lcom/spotify/mobile/android/util/av;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ad:Lcom/spotify/mobile/android/util/av;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ag:Lcom/spotify/mobile/android/util/cx;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->h:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v1, v2, v7}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/av;->a(Z)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->s:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ad:Lcom/spotify/mobile/android/util/av;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Lcom/spotify/mobile/android/util/av;)V

    :cond_f9
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->aw:Lcom/spotify/mobile/android/spotlets/collection/b/d;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Lcom/spotify/mobile/android/spotlets/collection/b/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a(Lcom/spotify/mobile/android/util/cw;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ad:Lcom/spotify/mobile/android/util/av;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/av;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a(ZZ)V

    return-void

    :cond_120
    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->u()Landroid/support/v4/app/y;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->f:Lcom/spotify/mobile/android/spotlets/collection/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/collection/a/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/y;Lcom/spotify/mobile/android/spotlets/collection/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    goto/16 :goto_45
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 3

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/l;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ao:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ai:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a(Ljava/lang/String;)V

    :goto_9
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->F()V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ah:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public final b(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/support/v4/app/Fragment;->b(Z)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ap:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/l;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    if-eqz v0, :cond_1e

    const-string v0, "list"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ar:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    check-cast v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a(Landroid/view/View;)V

    :goto_14
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ar:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_14
.end method

.method public final h_()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ae:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Z)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->F()V

    return-void
.end method

.method public final i_()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ae:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V

    return-void
.end method

.method public final y()V
    .registers 4

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ag:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->g:Lcom/spotify/mobile/android/util/cz;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->Y:Lcom/spotify/mobile/android/util/cw;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->ac:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->am:Lcom/spotify/mobile/android/spotlets/collection/a/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->e()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->an:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->an:Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/b/a/c;->b()V

    :cond_16
    return-void
.end method

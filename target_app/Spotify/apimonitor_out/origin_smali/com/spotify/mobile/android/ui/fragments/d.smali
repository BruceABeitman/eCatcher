.class public final Lcom/spotify/mobile/android/ui/fragments/d;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/fragments/e;


# static fields
.field private static final Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;"
        }
    .end annotation
.end field

.field private static final Z:Lcom/spotify/mobile/android/util/cw;

.field private static final ao:Lcom/spotify/mobile/android/ui/adapter/z;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private aa:Landroid/widget/ListView;

.field private ab:Landroid/os/Parcelable;

.field private ac:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Lcom/spotify/mobile/android/util/cw;

.field private ah:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

.field private ai:Lcom/spotify/mobile/android/ui/adapter/y;

.field private aj:Lcom/spotify/mobile/android/util/dw;

.field private ak:Lcom/spotify/mobile/android/util/tracking/n;

.field private al:Lcom/spotify/mobile/android/ui/actions/d;

.field private am:Lcom/spotify/mobile/android/ui/actions/a;

.field private final an:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/h;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Lcom/spotify/mobile/android/ui/view/j;

.field private aq:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private as:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/d;->i:[Ljava/lang/String;

    new-instance v0, Lcom/spotify/mobile/android/util/cw;

    const-string v1, "name"

    const v2, 0x7f0f03a9

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/d;->Z:Lcom/spotify/mobile/android/util/cw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/d;->Y:Ljava/util/List;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/d;->Z:Lcom/spotify/mobile/android/util/cw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/d$2;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/d$2;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/d;->ao:Lcom/spotify/mobile/android/ui/adapter/z;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/d;->Z:Lcom/spotify/mobile/android/util/cw;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ag:Lcom/spotify/mobile/android/util/cw;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->al:Lcom/spotify/mobile/android/ui/actions/d;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->am:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/d$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/d$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->an:Lcom/spotify/mobile/android/ui/contextmenu/f;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/d$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/d$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ap:Lcom/spotify/mobile/android/ui/view/j;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/d$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/d$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aq:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/d$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/d$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ar:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/d$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/d$6;-><init>(Lcom/spotify/mobile/android/ui/fragments/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->as:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic E()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/d;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/d;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "folder_uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/d;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/fragments/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/d;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/d;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ag:Lcom/spotify/mobile/android/util/cw;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/d;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->af:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/d;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ae:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/d;)V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a017b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ar:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/util/tracking/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ae:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/y;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ai:Lcom/spotify/mobile/android/ui/adapter/y;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/d;)Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ab:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/d;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/d;)Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ab:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ac:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->af:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/util/cw;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ag:Lcom/spotify/mobile/android/util/cw;

    return-object v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->am:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/ui/actions/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->al:Lcom/spotify/mobile/android/ui/actions/d;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const v0, 0x7f03008b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v0, 0x102000a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/y;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/d;->ao:Lcom/spotify/mobile/android/ui/adapter/z;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/d;->an:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/y;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/adapter/z;Lcom/spotify/mobile/android/ui/contextmenu/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ai:Lcom/spotify/mobile/android/ui/adapter/y;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ai:Lcom/spotify/mobile/android/ui/adapter/y;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/d;->a(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->af:Ljava/lang/String;

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/d;->Y:Ljava/util/List;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ag:Lcom/spotify/mobile/android/util/cw;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ap:Lcom/spotify/mobile/android/ui/view/j;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ah:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ah:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d;->as:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View$OnClickListener;)Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ac:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ac:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->d()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v6
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ae:Ljava/lang/String;

    if-nez v0, :cond_c

    const v0, 0x7f0f021a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const v0, 0x7f0f021b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ae:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "folder_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ad:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ae:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->af:Ljava/lang/String;

    if-eqz p1, :cond_40

    const-string v0, "sort_order"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/d;->Y:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/cw;->a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ag:Lcom/spotify/mobile/android/util/cw;

    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->af:Ljava/lang/String;

    const-string v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ab:Landroid/os/Parcelable;

    :cond_40
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->af:Ljava/lang/String;

    if-nez v0, :cond_48

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->af:Ljava/lang/String;

    :cond_48
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ag:Lcom/spotify/mobile/android/util/cw;

    if-nez v0, :cond_50

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/d;->Z:Lcom/spotify/mobile/android/util/cw;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ag:Lcom/spotify/mobile/android/util/cw;

    :cond_50
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0179

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aq:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a017b

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ar:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/d;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->G:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->G:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ad:Ljava/lang/String;

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/g;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->G:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v0, p4, p5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->b(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d;->am:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v2, v1, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ac:Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b()V

    :goto_24
    return-void

    :cond_25
    invoke-static {v0, p4, p5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/d;->am:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v3, v1, v4, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->al:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->G:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v1, v2, v0, p4, p5}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V

    goto :goto_24
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V

    const-string v0, "sort_order"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ag:Lcom/spotify/mobile/android/util/cw;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->af:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    if-eqz v0, :cond_24

    const-string v0, "list"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aa:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_24
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ah:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    invoke-super {p0}, Landroid/support/v4/app/x;->f()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    return-void
.end method

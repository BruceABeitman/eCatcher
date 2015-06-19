.class public final Lcom/spotify/mobile/android/ui/fragments/s;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;


# instance fields
.field private Y:Z

.field private Z:Landroid/widget/ListView;

.field private aa:Lcom/spotify/mobile/android/ui/adapter/o;

.field private ab:Lcom/spotify/mobile/android/ui/fragments/u;

.field private ac:Lcom/spotify/mobile/android/ui/fragments/u;

.field private ad:Lcom/spotify/mobile/android/ui/adapter/n;

.field private ae:Lcom/spotify/mobile/android/ui/adapter/n;

.field private af:Landroid/support/v4/widget/b;

.field private ag:Ljava/lang/String;

.field private ah:Lcom/spotify/mobile/android/util/ClientInfo;

.field private ai:Lcom/spotify/mobile/android/util/dw;

.field private aj:Lcom/spotify/mobile/android/ui/actions/d;

.field private ak:Lcom/spotify/mobile/android/util/tracking/n;

.field private al:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private am:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private an:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/spotify/android/paste/widget/EmptyView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->Y:Z

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aj:Lcom/spotify/mobile/android/ui/actions/d;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/s$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/s$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->al:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/s$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/s$6;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->am:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/s$7;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/s$7;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->an:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/s$8;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/s$8;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ao:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/s$9;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/s$9;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ap:Landroid/support/v4/app/z;

    return-void
.end method

.method private F()Lcom/spotify/mobile/android/ui/fragments/u;
    .registers 6

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->b()I

    move-result v0

    const/high16 v1, 0x4280

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->k()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->k()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/spotify/android/paste/widget/CardView;->a(IIII)I

    move-result v0

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/u;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/ui/fragments/u;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/u;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/actions/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aj:Lcom/spotify/mobile/android/ui/actions/d;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/s;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/s;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/fragments/s;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/s;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/s;->Y:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/adapter/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ad:Lcom/spotify/mobile/android/ui/adapter/n;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/adapter/o;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/adapter/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ae:Lcom/spotify/mobile/android/ui/adapter/n;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/android/paste/widget/EmptyView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->i:Lcom/spotify/android/paste/widget/EmptyView;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/s;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->Z:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/util/ClientInfo;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ah:Lcom/spotify/mobile/android/util/ClientInfo;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/s;)Landroid/support/v4/widget/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->af:Landroid/support/v4/widget/b;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/fragments/u;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ab:Lcom/spotify/mobile/android/ui/fragments/u;

    return-object v0
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
    .registers 10

    const/4 v5, 0x0

    const v0, 0x7f030072

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/s$1;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/spotify/mobile/android/ui/fragments/s$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Lcom/spotify/mobile/android/ui/adapter/v;)V

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->Z:Landroid/widget/ListView;

    const v0, 0x7f0a02bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->i:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v0

    const v2, 0x7f0f023e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/s;->i:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/s$2;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/s$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/n;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ad:Lcom/spotify/mobile/android/ui/adapter/n;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->F()Lcom/spotify/mobile/android/ui/fragments/u;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ab:Lcom/spotify/mobile/android/ui/fragments/u;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ab:Lcom/spotify/mobile/android/ui/fragments/u;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ad:Lcom/spotify/mobile/android/ui/adapter/n;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/u;->a(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->F()Lcom/spotify/mobile/android/ui/fragments/u;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ac:Lcom/spotify/mobile/android/ui/fragments/u;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/n;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ae:Lcom/spotify/mobile/android/ui/adapter/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ac:Lcom/spotify/mobile/android/ui/fragments/u;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ae:Lcom/spotify/mobile/android/ui/adapter/n;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/u;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ac:Lcom/spotify/mobile/android/ui/fragments/u;

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/s$3;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/s$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/u;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-static {v2, p0}, Lcom/spotify/mobile/android/util/v;->a(Lcom/spotify/mobile/android/ui/adapter/o;Landroid/support/v4/app/x;)Lcom/spotify/mobile/android/ui/adapter/c;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/ui/adapter/e;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Lcom/spotify/mobile/android/ui/adapter/e;-><init>(Landroid/content/Context;ILcom/spotify/mobile/android/ui/adapter/c;)V

    iput-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s;->af:Landroid/support/v4/widget/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/h;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ab:Lcom/spotify/mobile/android/ui/fragments/u;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/adapter/h;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    const v3, 0x7f0f0316

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/s;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/h;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ac:Lcom/spotify/mobile/android/ui/fragments/u;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/adapter/h;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    const v3, 0x7f0f0315

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/s;->b(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/s;->af:Landroid/support/v4/widget/b;

    const v3, 0x7f0f0314

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/s;->b(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_10e

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ab:Lcom/spotify/mobile/android/ui/fragments/u;

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/s$4;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/s$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/u;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/t;

    invoke-direct {v0, p0, v5}, Lcom/spotify/mobile/android/ui/fragments/t;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;B)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ab:Lcom/spotify/mobile/android/ui/fragments/u;

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/fragments/u;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ab:Lcom/spotify/mobile/android/ui/fragments/u;

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/fragments/u;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ab:Lcom/spotify/mobile/android/ui/fragments/u;

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/fragments/u;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/s;->a(Landroid/widget/ListAdapter;)V

    return-object v1

    :array_10e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ag:Ljava/lang/String;

    if-nez v0, :cond_c

    const v0, 0x7f0f031a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ag:Ljava/lang/String;

    goto :goto_b
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ag:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/s;->a(Z)V

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ah:Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ai:Lcom/spotify/mobile/android/util/dw;

    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 4

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->Y:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, p1, v1}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    :cond_10
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "spotify:internal:radio"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/util/tracking/h;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/tracking/h;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->u()Landroid/support/v4/app/y;

    move-result-object v1

    const v2, 0x7f0a01a8

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s;->al:Landroid/support/v4/app/z;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/tracking/h;->a(Landroid/support/v4/app/z;)Landroid/support/v4/app/z;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->u()Landroid/support/v4/app/y;

    move-result-object v1

    const v2, 0x7f0a01a3

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s;->an:Landroid/support/v4/app/z;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/tracking/h;->a(Landroid/support/v4/app/z;)Landroid/support/v4/app/z;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->u()Landroid/support/v4/app/y;

    move-result-object v1

    const v2, 0x7f0a01a5

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ao:Landroid/support/v4/app/z;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/tracking/h;->a(Landroid/support/v4/app/z;)Landroid/support/v4/app/z;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->u()Landroid/support/v4/app/y;

    move-result-object v1

    const v2, 0x7f0a01a4

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ap:Landroid/support/v4/app/z;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/tracking/h;->a(Landroid/support/v4/app/z;)Landroid/support/v4/app/z;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->u()Landroid/support/v4/app/y;

    move-result-object v1

    const v2, 0x7f0a01a7

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/s;->am:Landroid/support/v4/app/z;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/tracking/h;->a(Landroid/support/v4/app/z;)Landroid/support/v4/app/z;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/tracking/h;->a(Lcom/spotify/mobile/android/util/tracking/n;)Lcom/spotify/mobile/android/util/ar;

    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aa:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_34

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s;->aj:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->d:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V

    goto :goto_13

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_14
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final r_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->r_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->s_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ak:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ai:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s;->ai:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method

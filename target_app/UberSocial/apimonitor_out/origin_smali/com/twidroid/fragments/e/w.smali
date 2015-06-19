.class public Lcom/twidroid/fragments/e/w;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"


# static fields
.field protected static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/twidroid/fragments/e/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/fragments/e/w;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/w;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/w;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method


# virtual methods
.method protected b()V
    .registers 1

    return-void
.end method

.method public b(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V

    new-instance v0, Lcom/twidroid/fragments/e/w$1;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/w$1;-><init>(Lcom/twidroid/fragments/e/w;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/w$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method public d()V
    .registers 1

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/w;->b()V

    return-void
.end method

.method protected e()V
    .registers 5

    new-instance v0, Lcom/twidroid/ui/a/am;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/e/w;->b:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/w;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/w;->N()V

    return-void
.end method

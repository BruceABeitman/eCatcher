.class public Lcom/bbm/ui/activities/GroupListItemsActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupListItemsActivity.java"


# instance fields
.field protected a:Lcom/bbm/g/am;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lcom/bbm/ui/l;

.field private h:Lcom/bbm/ui/l;

.field private i:Landroid/widget/Spinner;

.field private j:Landroid/widget/Spinner;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/bbm/ui/activities/op;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/bbm/ui/InlineImageEditText;

.field private q:Landroid/widget/ListView;

.field private r:Lcom/bbm/ui/FooterActionBar;

.field private final s:Lcom/bbm/j/k;

.field private final t:Lcom/bbm/ui/cj;

.field private final u:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/bbm/ui/activities/nz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/nz;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->s:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/on;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/on;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->t:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/oe;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/oe;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->u:Lcom/bbm/j/k;

    return-void
.end method

.method public static a(Lcom/bbm/g/y;Lcom/bbm/g/y;)I
    .registers 4

    iget-object v0, p0, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;

    invoke-virtual {v0}, Lcom/bbm/g/aa;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/activities/zt;->a(Ljava/lang/String;)Lcom/bbm/ui/activities/zt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/zt;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;

    invoke-virtual {v1}, Lcom/bbm/g/aa;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/ui/activities/zt;->a(Ljava/lang/String;)Lcom/bbm/ui/activities/zt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/activities/zt;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_21

    sub-int v0, v1, v0

    :goto_20
    return v0

    :cond_21
    iget-object v0, p0, Lcom/bbm/g/y;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/bbm/g/y;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_20
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupListItemsActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupListItemsActivity;)Lcom/bbm/ui/InlineImageEditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->p:Lcom/bbm/ui/InlineImageEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupListItemsActivity;Lcom/bbm/ui/c/fm;Lcom/bbm/g/y;)V
    .registers 11

    const v5, 0x7f02031c

    const/4 v7, 0x0

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    iget-object v1, p2, Lcom/bbm/g/y;->l:Ljava/lang/String;

    invoke-direct {v0, v7, v1, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p2, Lcom/bbm/g/y;->i:Z

    if-nez v1, :cond_89

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f020268

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0e06a5

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p2, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;

    sget-object v4, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;

    if-ne v3, v4, :cond_72

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f0a0090

    const v5, 0x7f02031d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e06af

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_46
    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f0a008b

    const v5, 0x7f0200f8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e06a6

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2, v0, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v0, Lcom/bbm/ui/activities/oo;

    invoke-direct {v0, p0, p2}, Lcom/bbm/ui/activities/oo;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;Lcom/bbm/g/y;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    :goto_6a
    new-instance v0, Lcom/bbm/ui/activities/ob;

    invoke-direct {v0, p0, p2}, Lcom/bbm/ui/activities/ob;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;Lcom/bbm/g/y;)V

    iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    return-void

    :cond_72
    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f0a008f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e06ae

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_89
    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f02038e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0e06b3

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f0a0095

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e06b7

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2, v0, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v0, Lcom/bbm/ui/activities/oa;

    invoke-direct {v0, p0, p2}, Lcom/bbm/ui/activities/oa;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;Lcom/bbm/g/y;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_6a
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupListItemsActivity;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/EditListItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "listUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "itemId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupListItemsActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->k:I

    return p1
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupListItemsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "listUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupListItemsActivity;)Lcom/bbm/ui/FooterActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->r:Lcom/bbm/ui/FooterActionBar;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a009c

    const v4, 0x7f0202c4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e040d

    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a0085

    const v4, 0x7f0202ac

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e03b2

    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f020268

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e040e

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6, v2}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v1, Lcom/bbm/ui/activities/oc;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/oc;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    iput-object v1, v0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v1, Lcom/bbm/ui/activities/od;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/od;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->o()V

    return-void
.end method

.method static synthetic f(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "listUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->finish()V

    return-void
.end method

.method static synthetic g(Lcom/bbm/ui/activities/GroupListItemsActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->l:I

    return v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->k:I

    return v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/GroupListItemsActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->q:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/GroupListItemsActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
    .registers 3

    new-instance v0, Lcom/bbm/ui/activities/op;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/op;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->n:Lcom/bbm/ui/activities/op;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->n:Lcom/bbm/ui/activities/op;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 12

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->h(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v7

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_10
    invoke-interface {v7}, Lcom/bbm/j/w;->d()I

    move-result v0

    if-ge v1, v0, :cond_44

    invoke-interface {v7, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/y;

    iget-object v0, v0, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;

    sget-object v8, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;

    if-eq v0, v8, :cond_24

    add-int/lit8 v6, v6, 0x1

    :cond_24
    invoke-interface {v7, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/y;

    iget-object v0, v0, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;

    sget-object v8, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;

    if-ne v0, v8, :cond_32

    add-int/lit8 v5, v5, 0x1

    :cond_32
    invoke-interface {v7, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/y;

    iget-boolean v0, v0, Lcom/bbm/g/y;->i:Z

    if-eqz v0, :cond_3e

    add-int/lit8 v3, v3, 0x1

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0e0405

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e0403

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e0401

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0404

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0402

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->g:Lcom/bbm/ui/l;

    invoke-virtual {v1}, Lcom/bbm/ui/l;->clear()V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->g:Lcom/bbm/ui/l;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/l;->addAll([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->g:Lcom/bbm/ui/l;

    iput v10, v0, Lcom/bbm/ui/l;->a:I

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->j:Landroid/widget/Spinner;

    new-instance v1, Lcom/bbm/ui/q;

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->g:Lcom/bbm/ui/l;

    new-instance v3, Lcom/bbm/ui/activities/og;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/og;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->j:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->g:Lcom/bbm/ui/l;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->j:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->g:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x0

    const v6, 0x7f0a047a

    const v5, 0x7f0300cc

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->e:Landroid/content/Context;

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "listUri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    move v0, v1

    :goto_2d
    const-string v3, "No list URI specified in Intent"

    invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :goto_35
    return-void

    :cond_36
    move v0, v2

    goto :goto_2d

    :cond_38
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v0, 0x7f030112

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a054e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->o:Landroid/widget/TextView;

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f0a01a5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageEditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->p:Lcom/bbm/ui/InlineImageEditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->p:Lcom/bbm/ui/InlineImageEditText;

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v5, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v5, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->i:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->j:Landroid/widget/Spinner;

    new-instance v0, Lcom/bbm/ui/l;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e06c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->h:Lcom/bbm/ui/l;

    new-instance v0, Lcom/bbm/ui/l;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e036e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->g:Lcom/bbm/ui/l;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->h:Lcom/bbm/ui/l;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bbm/ui/l;->addAll([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->h:Lcom/bbm/ui/l;

    iput v2, v0, Lcom/bbm/ui/l;->a:I

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->i:Landroid/widget/Spinner;

    new-instance v5, Lcom/bbm/ui/q;

    iget-object v6, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->h:Lcom/bbm/ui/l;

    new-instance v7, Lcom/bbm/ui/activities/of;

    invoke-direct {v7, p0}, Lcom/bbm/ui/activities/of;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    invoke-direct {v5, v6, v7}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->i:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->h:Lcom/bbm/ui/l;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->i:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->h:Lcom/bbm/ui/l;

    iget v5, v5, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b()V

    const v0, 0x7f0a01a6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v5, Lcom/bbm/ui/activities/oh;

    invoke-direct {v5, p0}, Lcom/bbm/ui/activities/oh;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->q:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/bbm/ui/activities/oi;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/oi;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbm/ui/activities/op;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/op;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->n:Lcom/bbm/ui/activities/op;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->q:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->n:Lcom/bbm/ui/activities/op;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->q:Landroid/widget/ListView;

    new-instance v3, Lcom/bbm/ui/activities/oj;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/oj;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->q:Landroid/widget/ListView;

    new-instance v3, Lcom/bbm/ui/activities/ok;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ok;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->r:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->r:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202c4

    const v5, 0x7f0e040d

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->r:Lcom/bbm/ui/FooterActionBar;

    new-instance v2, Lcom/bbm/ui/ActionBarItem;

    const v3, 0x7f0202ac

    const v4, 0x7f0e03b2

    invoke-direct {v2, p0, v3, v4}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->r:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->t:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/ol;

    invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/ol;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->f:Ljava/lang/String;

    new-instance v2, Lcom/bbm/g/az;

    invoke-direct {v2, v1}, Lcom/bbm/g/az;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    new-instance v0, Lcom/bbm/ui/activities/om;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/om;-><init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/slidingmenu/lib/a/b;)V

    goto/16 :goto_35
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->u:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->s:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->u:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListItemsActivity;->s:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

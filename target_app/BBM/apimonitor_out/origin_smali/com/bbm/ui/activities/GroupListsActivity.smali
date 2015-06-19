.class public Lcom/bbm/ui/activities/GroupListsActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupListsActivity.java"


# instance fields
.field protected a:Lcom/bbm/g/am;

.field private b:Lcom/bbm/ui/activities/pa;

.field private d:Lcom/bbm/ui/ObservingImageView;

.field private e:Lcom/bbm/ui/InlineImageTextView;

.field private f:Lcom/bbm/ui/InlineImageTextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/GridView;

.field private final i:Lcom/bbm/ui/cj;

.field private final j:Lcom/bbm/j/k;

.field private k:Lcom/bbm/ui/FooterActionBar;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/activities/ot;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ot;-><init>(Lcom/bbm/ui/activities/GroupListsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->i:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/ou;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ou;-><init>(Lcom/bbm/ui/activities/GroupListsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->j:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupListsActivity;)Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->d:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/NewListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupListsActivity;)Lcom/bbm/ui/InlineImageTextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->e:Lcom/bbm/ui/InlineImageTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupListsActivity;)Lcom/bbm/ui/InlineImageTextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->f:Lcom/bbm/ui/InlineImageTextView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupListsActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/GroupListsActivity;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->h:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/GroupListsActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/GroupListsActivity;)Lcom/bbm/ui/activities/pa;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->b:Lcom/bbm/ui/activities/pa;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->a:Lcom/bbm/g/am;

    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v0, 0x7f03010a

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0535

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->d:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0539

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->e:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a053a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->f:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0538

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/activities/ov;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ov;-><init>(Lcom/bbm/ui/activities/GroupListsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01af

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/activities/ow;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ow;-><init>(Lcom/bbm/ui/activities/GroupListsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->h:Landroid/widget/GridView;

    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/bbm/ui/activities/ox;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ox;-><init>(Lcom/bbm/ui/activities/GroupListsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/bbm/ui/activities/oy;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/oy;-><init>(Lcom/bbm/ui/activities/GroupListsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/bbm/ui/activities/pa;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pa;-><init>(Lcom/bbm/ui/activities/GroupListsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->b:Lcom/bbm/ui/activities/pa;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->h:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListsActivity;->b:Lcom/bbm/ui/activities/pa;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->k:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->k:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0202ac

    const v3, 0x7f0e03ad

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->k:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->k:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListsActivity;->i:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    sget-object v2, Lcom/bbm/g/aw;->c:Lcom/bbm/g/aw;

    invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/aw;)Lcom/bbm/g/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->j:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->o:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->o:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsActivity;->j:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

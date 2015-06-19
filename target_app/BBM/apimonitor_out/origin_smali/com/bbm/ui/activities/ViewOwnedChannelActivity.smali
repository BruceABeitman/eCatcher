.class public Lcom/bbm/ui/activities/ViewOwnedChannelActivity;
.super Lcom/bbm/ui/activities/ail;
.source "ViewOwnedChannelActivity.java"


# instance fields
.field private final F:Lcom/bbm/j/u;

.field private final G:Lcom/bbm/j/k;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fq;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ProgressBar;

.field private final w:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ail;-><init>()V

    const-string v0, "title"

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->j:Ljava/lang/String;

    const-string v0, "content"

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->k:Ljava/lang/String;

    const-string v0, "channelUri"

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->l:Ljava/lang/String;

    const-string v0, "imagePath"

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->m:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->H()Lcom/bbm/j/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->n:Lcom/bbm/j/w;

    new-instance v0, Lcom/bbm/ui/activities/ajo;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajo;-><init>(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->w:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/activities/ajp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajp;-><init>(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->F:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/activities/ajq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajq;-><init>(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->G:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Lcom/bbm/j/u;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->F:Lcom/bbm/j/u;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->k()V

    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->l()V

    return-void
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Lcom/bbm/j/w;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->n:Lcom/bbm/j/w;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->p:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->m()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->r:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private k()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->p:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method private l()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->m()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->p:Landroid/view/View;

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a057b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->p:Landroid/view/View;

    const v0, 0x7f0a057c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0a057d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->r:Landroid/widget/ImageButton;

    const v0, 0x7f0a057e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->s:Landroid/widget/ImageView;

    const v0, 0x7f0a0581

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f0a057f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0a0580

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->v:Landroid/widget/ProgressBar;

    :cond_55
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 6

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2a

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ail;->a(I)V

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "channelURI"

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "initiator"

    sget v2, Lcom/bbm/ui/activities/AddChannelPostActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    :pswitch_data_2a
    .packed-switch 0x7f0a0030
        :pswitch_8
    .end packed-switch
.end method

.method protected final a(Lcom/bbm/ui/c/fm;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b(Lcom/bbm/ui/c/fm;)V

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Lcom/bbm/ui/c/fm;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ail;->b(Lcom/bbm/ui/c/fm;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0032

    const v3, 0x7f02026c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e0480

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0030

    const v3, 0x7f0201e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e00f6

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v1, 0x7f020268

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->d:Lcom/bbm/ui/slidingmenu/a;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->d:Lcom/bbm/ui/slidingmenu/a;

    invoke-virtual {p1, v0, v5, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->g:Lcom/bbm/ui/c/fq;

    iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/activities/ajr;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajr;-><init>(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final d()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/bbm/ui/activities/ail;->d()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->G:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V

    return-void
.end method

.method protected final f()V
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bbm/util/ac;->b(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    sget v0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->a:I

    if-ne p2, v0, :cond_e

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->k()V

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->l()V

    :goto_d
    return-void

    :cond_e
    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    const/16 v0, 0x64

    if-ne p1, v0, :cond_19

    invoke-static {p0, p3}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_d

    :cond_19
    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ail;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ail;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->o:Landroid/view/View;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020015

    const v3, 0x7f0e00f6

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const v2, 0x7f0a0030

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->f:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ail;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->G:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ail;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->G:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

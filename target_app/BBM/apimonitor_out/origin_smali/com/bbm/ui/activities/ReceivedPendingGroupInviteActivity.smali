.class public Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
.super Lcom/bbm/ui/activities/ev;
.source "ReceivedPendingGroupInviteActivity.java"


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field private final a:Lcom/bbm/d;

.field private b:Lcom/bbm/ui/FooterActionBar;

.field private c:Lcom/bbm/ui/ObservingImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private k:Landroid/content/Context;

.field private final l:Lcom/bbm/j/u;

.field private final m:Lcom/bbm/ui/cj;

.field private final n:Lcom/bbm/j/k;

.field private o:I

.field private final p:Lcom/bbm/j/k;

.field private q:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a:Lcom/bbm/d;

    new-instance v0, Lcom/bbm/ui/activities/acp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/acp;-><init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->l:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/activities/acr;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/acr;-><init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->m:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/act;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/act;-><init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->n:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/acu;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/acu;-><init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->p:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/acv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/acv;-><init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->q:Lcom/bbm/j/a;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->o:I

    return p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a:Lcom/bbm/d;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->q:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->o:I

    if-lt v0, v1, :cond_27

    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->q:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/bbm/ui/activities/kp;->a(Landroid/app/Activity;Landroid/view/View;I)V

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->l:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    goto :goto_26
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/b/i;

    invoke-direct {v1, p0}, Lcom/bbm/ui/b/i;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e05fc

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->a(Ljava/lang/String;)V

    const v2, 0x7f0e0658

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->c(I)V

    const v2, 0x7f0e026b

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/i;->a_(Ljava/lang/String;)V

    new-instance v0, Lcom/bbm/ui/activities/acs;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/acs;-><init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;Lcom/bbm/ui/b/i;)V

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/i;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/bbm/ui/b/i;->show()V

    return-void
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->c:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object p0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->k:Landroid/content/Context;

    const-string v3, "invite_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->j:Ljava/lang/String;

    sget-object v0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->j:Ljava/lang/String;

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_26
    const-string v3, "No invite ID specified in Intent"

    invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_2e
    return-void

    :cond_2f
    move v0, v2

    goto :goto_26

    :cond_31
    invoke-virtual {p0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v3, 0x7f030112

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a054e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202a9

    const v5, 0x7f0e05fd

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202b7

    const v5, 0x7f0e05ff

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->m:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->c:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a0279

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0a027a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0a027d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->h:Landroid/widget/TextView;

    goto/16 :goto_2e
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->n:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->n:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    new-instance v1, Lcom/bbm/g/ay;

    invoke-direct {v1}, Lcom/bbm/g/ay;-><init>()V

    sget-object v2, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/g/ay;->a(Ljava/lang/String;)Lcom/bbm/g/ay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

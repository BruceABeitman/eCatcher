.class public Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
.super Lcom/bbm/ui/activities/ev;
.source "ReceivedPendingInviteActivity.java"


# instance fields
.field a:Lcom/bbm/j/k;

.field private final b:Lcom/bbm/d/a;

.field private c:Lcom/bbm/ui/FooterActionBar;

.field private d:Lcom/bbm/ui/ObservingImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Lcom/bbm/d/gp;

.field private final k:Lcom/bbm/ui/cj;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->b:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/activities/acw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/acw;-><init>(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->k:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/acz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/acz;-><init>(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->a:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;Lcom/bbm/d/gp;)Lcom/bbm/d/gp;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->j:Lcom/bbm/d/gp;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->x(Ljava/lang/String;)Lcom/bbm/d/fn;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/d/z;->b(Ljava/lang/String;)Lcom/bbm/d/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->finish()V

    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Lcom/bbm/ui/b/k;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/k;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e02fd

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->setTitle(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->x(Ljava/lang/String;)Lcom/bbm/d/fn;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a_(Ljava/lang/String;)V

    const v1, 0x7f0e02fb

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->c(I)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->d(I)V

    const v1, 0x7f0e02fc

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->f(I)V

    new-instance v1, Lcom/bbm/ui/activities/acx;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/acx;-><init>(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;Lcom/bbm/ui/b/k;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->show()V

    goto :goto_1e
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V
    .registers 8

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/b/i;

    invoke-direct {v1, p0}, Lcom/bbm/ui/b/i;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0472

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->setTitle(I)V

    const v2, 0x7f0e0136

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->c(I)V

    const v2, 0x7f0e0269

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->a_(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bbm/ui/b/i;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0658

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bbm/ui/b/i;->g:Ljava/lang/String;

    iget-object v2, v1, Lcom/bbm/ui/b/i;->f:Landroid/widget/CheckBox;

    if-eqz v2, :cond_5f

    iget-object v2, v1, Lcom/bbm/ui/b/i;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_5f

    iget-object v2, v1, Lcom/bbm/ui/b/i;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, v1, Lcom/bbm/ui/b/i;->f:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v1, Lcom/bbm/ui/b/i;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/bbm/ui/b/i;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/bbm/ui/b/i;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5f
    :goto_5f
    const v2, 0x7f0e026b

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/i;->f(Ljava/lang/String;)V

    new-instance v0, Lcom/bbm/ui/activities/acy;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/acy;-><init>(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;Lcom/bbm/ui/b/i;)V

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/i;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/bbm/ui/b/i;->show()V

    return-void

    :cond_7d
    iget-object v2, v1, Lcom/bbm/ui/b/i;->f:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v1, Lcom/bbm/ui/b/i;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5f
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->b:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :try_start_a
    const-string v2, "id"

    iget-object v3, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "read"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->b:Lcom/bbm/d/a;

    const-string v2, "pendingContact"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/gp;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->j:Lcom/bbm/d/gp;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->d:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "pending_contact_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_1e
    const-string v3, "No pending contact ID specified in Intent"

    invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_26
    return-void

    :cond_27
    move v0, v2

    goto :goto_1e

    :cond_29
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->getActionBar()Landroid/app/ActionBar;

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

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0601

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->c:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->c:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202a9

    const v5, 0x7f0e05fd

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->c:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202b7

    const v5, 0x7f0e05ff

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->c:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->c:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->k:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->d:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a0279

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0a027a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->h:Landroid/widget/TextView;

    goto/16 :goto_26
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->a:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->a:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

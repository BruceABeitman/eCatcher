.class public Lcom/bbm/ui/activities/ChannelSubscribersActivity;
.super Lcom/bbm/ui/activities/cn;
.source "ChannelSubscribersActivity.java"


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field private b:Lcom/bbm/j/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/gc;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bbm/ui/activities/es;

.field private d:Lcom/bbm/ui/FooterActionBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Lcom/bbm/j/k;

.field private final i:Lcom/bbm/ui/cj;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/eq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/eq;-><init>(Lcom/bbm/ui/activities/ChannelSubscribersActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->i:Lcom/bbm/ui/cj;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelSubscribersActivity;)Lcom/bbm/j/x;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->b:Lcom/bbm/j/x;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelSubscribersActivity;Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "NetworkFailure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0e031d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_32
    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbm/ui/activities/er;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/er;-><init>(Lcom/bbm/ui/activities/ChannelSubscribersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3d
    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChannelSubscribersActivity;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0644

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ChannelSubscribersActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->f()V

    return-void
.end method

.method private f()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->b:Lcom/bbm/j/x;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bbm/j/x;->a(Z)V
    :try_end_6
    .catch Lcom/bbm/j/z; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->setContentView(I)V

    const v0, 0x7f0a0158

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a015b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f0a015a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a0159

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Z)Lcom/bbm/j/x;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->b:Lcom/bbm/j/x;

    invoke-direct {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->f()V

    new-instance v0, Lcom/bbm/ui/activities/ep;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ep;-><init>(Lcom/bbm/ui/activities/ChannelSubscribersActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->h:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/es;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->b:Lcom/bbm/j/x;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/es;-><init>(Lcom/bbm/ui/activities/ChannelSubscribersActivity;Lcom/bbm/j/x;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->c:Lcom/bbm/ui/activities/es;

    const v0, 0x7f0a0157

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->c:Lcom/bbm/ui/activities/es;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/w;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/bbm/ui/w;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->a(Lcom/bbm/ui/activities/aka;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/util/az;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->d:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->d:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->d:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->i:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->h:Lcom/bbm/j/k;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->h:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->h:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

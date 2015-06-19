.class public Lcom/twidroid/fragments/e/am;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = null

.field private static final e:I = 0xc8


# instance fields
.field private f:Ljava/util/List;

.field private g:J

.field private h:Lcom/twidroid/fragments/e/ap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/twidroid/fragments/e/am;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/fragments/e/am;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/fragments/e/am;->f:Ljava/util/List;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/twidroid/fragments/e/am;->g:J

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/fragments/e/am;->f:Ljava/util/List;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/twidroid/fragments/e/am;->g:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/am;->setHasOptionsMenu(Z)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/am;J)J
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/fragments/e/am;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/am;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/am;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/am;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/am;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic c(Lcom/twidroid/fragments/e/am;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/twidroid/fragments/e/am;)J
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/fragments/e/am;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/twidroid/fragments/e/am;)Lcom/twidroid/d/v;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->w:Lcom/twidroid/d/v;

    return-object v0
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->u:Lcom/twidroid/net/c/a/f;

    const v1, 0x7f0c01d8

    invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(Lcom/twidroid/model/twitter/Tweet;)V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/am;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/am;->b(Lcom/twidroid/model/twitter/Tweet;)V

    :cond_9
    return-void
.end method

.method public b(Z)V
    .registers 7

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->h:Lcom/twidroid/fragments/e/ap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->h:Lcom/twidroid/fragments/e/ap;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/ap;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-ne v0, v1, :cond_29

    :cond_11
    new-instance v0, Lcom/twidroid/fragments/e/ap;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/ap;-><init>(Lcom/twidroid/fragments/e/am;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/am;->h:Lcom/twidroid/fragments/e/ap;

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->h:Lcom/twidroid/fragments/e/ap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/twidroid/fragments/e/am;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/ap;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    :cond_29
    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .registers 5

    instance-of v0, p1, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/am;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    check-cast p1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/am;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0153

    invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/am;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2c
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/am;->b(Z)V

    return-void
.end method

.method protected e()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/am;->b(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->w:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bu()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/fragments/e/am;->g:J

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/16 v0, 0xc8

    const v1, 0x7f0c02f8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    :cond_7
    :goto_7
    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->f:Ljava/util/List;

    if-eqz v0, :cond_7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/am;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twidroid/fragments/e/ao;

    iget-object v2, p0, Lcom/twidroid/fragments/e/am;->f:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/twidroid/fragments/e/ao;-><init>(Lcom/twidroid/fragments/e/am;Ljava/util/List;)V

    new-instance v2, Lcom/twidroid/fragments/e/am$1;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/e/am$1;-><init>(Lcom/twidroid/fragments/e/am;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_7

    :pswitch_data_30
    .packed-switch 0xc8
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onPause()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->h:Lcom/twidroid/fragments/e/ap;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->h:Lcom/twidroid/fragments/e/ap;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/ap;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/twidroid/fragments/e/am;->h:Lcom/twidroid/fragments/e/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/ap;->b(Z)Z

    :cond_17
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/am;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullUpEnabled(Z)V

    return-void
.end method

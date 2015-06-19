.class public abstract Lcom/twidroid/fragments/base/b;
.super Lcom/twidroid/fragments/base/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field protected l:Z

.field protected m:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/fragments/base/a;-><init>()V

    const-string v0, "BaseTimelineFragment"

    iput-object v0, p0, Lcom/twidroid/fragments/base/b;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/fragments/base/b;->m:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/b;->setHasOptionsMenu(Z)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/base/b;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/fragments/base/b;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method protected abstract e()V
.end method

.method protected g()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected h()V
    .registers 3

    new-instance v0, Lcom/twidroid/fragments/base/c;

    iget-object v1, p0, Lcom/twidroid/fragments/base/b;->w:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->ca()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/base/c;-><init>(Lcom/twidroid/fragments/base/b;Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public i()Lcom/twidroid/ui/a/am;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/am;

    return-object v0
.end method

.method public j()V
    .registers 1

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->c()V

    return-void
.end method

.method protected k()V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Twidroyd.Tabswitch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_UPDATE_MESSAGEINDICATORS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public l()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/a;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/fragments/base/b;->b:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f03003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->h()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSmoothScrollbarEnabled(Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->e()V

    return-void
.end method

.method protected s_()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/twidroid/fragments/base/a;->s_()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/b;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->H()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    :goto_1b
    iget-object v0, p0, Lcom/twidroid/fragments/base/b;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->y()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    :goto_31
    return-void

    :cond_32
    new-instance v0, Lcom/twidroid/ui/b/f;

    iget-object v1, p0, Lcom/twidroid/fragments/base/b;->v:Lcom/twidroid/ui/themes/r;

    iget-object v1, v1, Lcom/twidroid/ui/themes/r;->T:[I

    invoke-direct {v0, v1}, Lcom/twidroid/ui/b/f;-><init>([I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_1b

    :cond_4b
    iget-object v0, p0, Lcom/twidroid/fragments/base/b;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v0

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/b;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->M()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_31
.end method

.method public setUserVisibleHint(Z)V
    .registers 6

    :try_start_0
    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/a;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/twidroid/fragments/base/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/fragments/base/b$1;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/base/b$1;-><init>(Lcom/twidroid/fragments/base/b;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string v1, "BaseTimelineFragment"

    const-string v2, "NPE inside Fragment.setUserVisibleHint()"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

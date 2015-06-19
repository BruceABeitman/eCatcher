.class public Lcom/twidroid/fragments/e/x;
.super Lcom/twidroid/fragments/base/e;
.source "SourceFile"


# static fields
.field private static final G:Ljava/lang/String; = "RetweetsAdapter"


# instance fields
.field private H:Landroid/widget/Spinner;

.field private I:Lcom/twidroid/ui/a/z;

.field private J:Ljava/util/concurrent/atomic/AtomicInteger;

.field private K:Lcom/twidroid/ui/a/z;

.field private L:Ljava/util/concurrent/atomic/AtomicInteger;

.field private M:Lcom/twidroid/ui/a/z;

.field private N:Ljava/util/concurrent/atomic/AtomicInteger;

.field private O:Lcom/twidroid/fragments/e/aa;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/twidroid/fragments/e/aa;->a:Lcom/twidroid/fragments/e/aa;

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->O:Lcom/twidroid/fragments/e/aa;

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/twidroid/fragments/e/aa;->a:Lcom/twidroid/fragments/e/aa;

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->O:Lcom/twidroid/fragments/e/aa;

    iput-object p1, p0, Lcom/twidroid/fragments/e/x;->a:Lcom/twidroid/model/twitter/c;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/fragments/e/aa;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->O:Lcom/twidroid/fragments/e/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/x;Lcom/twidroid/fragments/e/aa;)Lcom/twidroid/fragments/e/aa;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/x;->O:Lcom/twidroid/fragments/e/aa;

    return-object p1
.end method

.method private a(ZLjava/util/concurrent/atomic/AtomicInteger;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->I:Lcom/twidroid/ui/a/z;

    return-object v0
.end method

.method static synthetic c(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->K:Lcom/twidroid/ui/a/z;

    return-object v0
.end method

.method static synthetic d(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->M:Lcom/twidroid/ui/a/z;

    return-object v0
.end method

.method static synthetic e(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic f(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic g(Lcom/twidroid/fragments/e/x;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic h(Lcom/twidroid/fragments/e/x;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic i(Lcom/twidroid/fragments/e/x;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->u:Lcom/twidroid/net/c/a/f;

    const v1, 0x7f0c01d0

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

.method protected b(Lcom/twidroid/model/twitter/c;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/x;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/x;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->h()V

    :cond_10
    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->x:Lcom/twidroid/b/a/b;

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/x;->b(Z)V

    :cond_18
    return-void
.end method

.method public b(Z)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/x;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->e:Lcom/twidroid/ui/widgets/AccountSpinner;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->e:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->a:Lcom/twidroid/model/twitter/c;

    :cond_15
    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->a:Lcom/twidroid/model/twitter/c;

    if-eqz v0, :cond_8

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Z)V

    new-instance v2, Lcom/twidroid/fragments/e/z;

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->O:Lcom/twidroid/fragments/e/aa;

    iget-object v1, p0, Lcom/twidroid/fragments/e/x;->a:Lcom/twidroid/model/twitter/c;

    invoke-direct {v2, v0, v1}, Lcom/twidroid/fragments/e/z;-><init>(Lcom/twidroid/fragments/e/aa;Lcom/twidroid/model/twitter/c;)V

    invoke-virtual {p0, v6}, Lcom/twidroid/fragments/e/x;->c(Z)V

    sget-object v0, Lcom/twidroid/fragments/e/x$2;->a:[I

    iget-object v1, p0, Lcom/twidroid/fragments/e/x;->O:Lcom/twidroid/fragments/e/aa;

    invoke-virtual {v1}, Lcom/twidroid/fragments/e/aa;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    invoke-virtual {p0, v5}, Lcom/twidroid/fragments/e/x;->c(Z)V

    goto :goto_8

    :pswitch_39
    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1, v0}, Lcom/twidroid/fragments/e/x;->a(ZLjava/util/concurrent/atomic/AtomicInteger;)V

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/twidroid/fragments/e/x;->I:Lcom/twidroid/ui/a/z;

    invoke-virtual {v3}, Lcom/twidroid/ui/a/z;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_61

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_61

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v0

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    :cond_61
    if-eqz p1, :cond_66

    invoke-virtual {v2, v0, v1}, Lcom/twidroid/fragments/e/z;->b(J)Lcom/twidroid/fragments/e/z;

    :cond_66
    new-instance v0, Lcom/twidroid/fragments/e/y;

    iget-object v1, p0, Lcom/twidroid/fragments/e/x;->I:Lcom/twidroid/ui/a/z;

    invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/e/y;-><init>(Lcom/twidroid/fragments/e/x;Landroid/widget/ListAdapter;)V

    new-array v1, v6, [Lcom/twidroid/fragments/e/z;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/y;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_8

    :pswitch_75
    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1, v0}, Lcom/twidroid/fragments/e/x;->a(ZLjava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v0, Lcom/twidroid/fragments/e/y;

    iget-object v1, p0, Lcom/twidroid/fragments/e/x;->K:Lcom/twidroid/ui/a/z;

    invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/e/y;-><init>(Lcom/twidroid/fragments/e/x;Landroid/widget/ListAdapter;)V

    new-array v1, v6, [Lcom/twidroid/fragments/e/z;

    iget-object v3, p0, Lcom/twidroid/fragments/e/x;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/twidroid/fragments/e/z;->a(J)Lcom/twidroid/fragments/e/z;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/y;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto/16 :goto_8

    :pswitch_95
    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1, v0}, Lcom/twidroid/fragments/e/x;->a(ZLjava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v0, Lcom/twidroid/fragments/e/y;

    iget-object v1, p0, Lcom/twidroid/fragments/e/x;->I:Lcom/twidroid/ui/a/z;

    invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/e/y;-><init>(Lcom/twidroid/fragments/e/x;Landroid/widget/ListAdapter;)V

    new-array v1, v6, [Lcom/twidroid/fragments/e/z;

    iget-object v3, p0, Lcom/twidroid/fragments/e/x;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/twidroid/fragments/e/z;->a(J)Lcom/twidroid/fragments/e/z;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/y;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto/16 :goto_8

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_39
        :pswitch_75
        :pswitch_95
    .end packed-switch
.end method

.method public d()V
    .registers 3

    const-string v0, "RetweetsAdapter"

    const-string v1, "updateContent"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/x;->b(Z)V

    return-void
.end method

.method protected e()V
    .registers 5

    new-instance v0, Lcom/twidroid/ui/a/z;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twidroid/ui/a/z;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->I:Lcom/twidroid/ui/a/z;

    new-instance v0, Lcom/twidroid/ui/a/z;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twidroid/ui/a/z;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->K:Lcom/twidroid/ui/a/z;

    new-instance v0, Lcom/twidroid/ui/a/z;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twidroid/ui/a/z;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/x;->M:Lcom/twidroid/ui/a/z;

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->I:Lcom/twidroid/ui/a/z;

    iget-object v1, p0, Lcom/twidroid/fragments/e/x;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/z;->a(Lcom/twidroid/net/b/f;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->K:Lcom/twidroid/ui/a/z;

    iget-object v1, p0, Lcom/twidroid/fragments/e/x;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/z;->a(Lcom/twidroid/net/b/f;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->M:Lcom/twidroid/ui/a/z;

    iget-object v1, p0, Lcom/twidroid/fragments/e/x;->F:Lcom/twidroid/net/b/f;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/z;->a(Lcom/twidroid/net/b/f;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0c02ca

    invoke-virtual {p0, v2}, Lcom/twidroid/fragments/e/x;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0c02c8

    invoke-virtual {p0, v2}, Lcom/twidroid/fragments/e/x;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03008d

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->H:Landroid/widget/Spinner;

    new-instance v2, Lcom/twidroid/fragments/e/x$1;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/e/x$1;-><init>(Lcom/twidroid/fragments/e/x;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/x;->H:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/twidroid/fragments/base/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f030040

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0900df

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/twidroid/fragments/e/x;->H:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0205

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/x;->b(I)V

    return-void
.end method

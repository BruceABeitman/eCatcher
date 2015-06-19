.class public Lcom/twidroid/fragments/whatshotfragments/a;
.super Lcom/twidroid/fragments/whatshotfragments/l;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/twidroid/UberSocialApplication;

.field private c:Lcom/twidroid/ui/widgets/CachedImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ToggleButton;

.field private f:Lcom/twidroid/uberchannels/models/UberTopic;

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/twidroid/fragments/whatshotfragments/b;

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/twidroid/fragments/whatshotfragments/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".checkedItems"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/fragments/whatshotfragments/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/l;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/UberSocialApplication;)V
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/l;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->l:Z

    iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->b:Lcom/twidroid/UberSocialApplication;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/whatshotfragments/a;Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/uberchannels/models/UberTopic;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->f:Lcom/twidroid/uberchannels/models/UberTopic;

    return-object p1
.end method

.method private a(Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/ui/c/h;
    .registers 4

    new-instance v0, Lcom/twidroid/ui/c/b;

    invoke-direct {v0}, Lcom/twidroid/ui/c/b;-><init>()V

    invoke-virtual {p1}, Lcom/twidroid/uberchannels/models/UberTopic;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/b;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;

    iget-object v1, p1, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/b;->b(Ljava/lang/String;)V

    iget v1, p1, Lcom/twidroid/uberchannels/models/UberTopic;->h:I

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/b;->b(I)V

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/c/b;->a(Lcom/twidroid/uberchannels/models/UberTopic;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/whatshotfragments/a;)Lcom/twidroid/ui/widgets/CachedImageView;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->c:Lcom/twidroid/ui/widgets/CachedImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/whatshotfragments/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/twidroid/fragments/whatshotfragments/a;)Lcom/twidroid/uberchannels/models/UberTopic;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->f:Lcom/twidroid/uberchannels/models/UberTopic;

    return-object v0
.end method

.method static synthetic b(Lcom/twidroid/fragments/whatshotfragments/a;Lcom/twidroid/uberchannels/models/UberTopic;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/a;->b(Lcom/twidroid/uberchannels/models/UberTopic;)V

    return-void
.end method

.method private b(Lcom/twidroid/uberchannels/models/UberTopic;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->c:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {p1}, Lcom/twidroid/uberchannels/models/UberTopic;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twidroid/fragments/whatshotfragments/a$1;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/whatshotfragments/a$1;-><init>(Lcom/twidroid/fragments/whatshotfragments/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/d;)V

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->e:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/twidroid/fragments/whatshotfragments/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/twidroid/fragments/whatshotfragments/a;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->b:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method private c()Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->j:Lcom/twidroid/fragments/whatshotfragments/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->j:Lcom/twidroid/fragments/whatshotfragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/b;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic d(Lcom/twidroid/fragments/whatshotfragments/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/twidroid/fragments/whatshotfragments/a;)Landroid/widget/ToggleButton;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const v0, 0x7f0c02f6

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/a;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/l;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/a;->setRetainInstance(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/l;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f030042

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/l;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/a;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/uberchannels/a;

    if-eqz v0, :cond_14

    sget-object v1, Lcom/twidroid/fragments/whatshotfragments/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/twidroid/uberchannels/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_14
    return-void
.end method

.method public onStop()V
    .registers 8

    const/4 v6, 0x5

    invoke-super {p0}, Lcom/twidroid/fragments/whatshotfragments/l;->onStop()V

    iget-boolean v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->k:Z

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->b:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;

    move-result-object v4

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/uberchannels/a;

    iget-boolean v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->g:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->f:Lcom/twidroid/uberchannels/models/UberTopic;

    invoke-direct {p0, v1}, Lcom/twidroid/fragments/whatshotfragments/a;->a(Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/twidroid/ui/c/g;->b(Lcom/twidroid/ui/c/h;)Z

    move-result v1

    :goto_27
    invoke-virtual {v0}, Lcom/twidroid/uberchannels/a;->b()Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x0

    move v3, v1

    :goto_2f
    invoke-virtual {v0}, Lcom/twidroid/uberchannels/a;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_62

    invoke-virtual {v0, v2}, Lcom/twidroid/uberchannels/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/uberchannels/models/UberTopic;

    iget v5, v1, Lcom/twidroid/uberchannels/models/UberTopic;->h:I

    invoke-virtual {v0, v5}, Lcom/twidroid/uberchannels/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-direct {p0, v1}, Lcom/twidroid/fragments/whatshotfragments/a;->a(Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/twidroid/ui/c/g;->b(Lcom/twidroid/ui/c/h;)Z

    move-result v1

    or-int/2addr v3, v1

    :goto_4c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f

    :cond_50
    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->f:Lcom/twidroid/uberchannels/models/UberTopic;

    iget v1, v1, Lcom/twidroid/uberchannels/models/UberTopic;->h:I

    invoke-virtual {v4, v1, v6}, Lcom/twidroid/ui/c/g;->a(II)Z

    move-result v1

    goto :goto_27

    :cond_59
    iget v1, v1, Lcom/twidroid/uberchannels/models/UberTopic;->h:I

    invoke-virtual {v4, v1, v6}, Lcom/twidroid/ui/c/g;->a(II)Z

    move-result v1

    or-int/2addr v3, v1

    goto :goto_4c

    :cond_61
    move v3, v1

    :cond_62
    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lcom/twidroid/ui/c/g;->c()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ubersocial.broadcast.uberbar.configchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/l;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_67

    sget-object v1, Lcom/twidroid/fragments/whatshotfragments/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    :goto_1b
    const v1, 0x7f0900e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twidroid/ui/widgets/CachedImageView;

    iput-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->c:Lcom/twidroid/ui/widgets/CachedImageView;

    const v1, 0x7f0900e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->d:Landroid/widget/TextView;

    const v1, 0x7f0900ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->e:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    const v1, 0x7f0900c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->i:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->h:Landroid/view/View;

    new-instance v1, Lcom/twidroid/fragments/whatshotfragments/b;

    invoke-direct {v1, p0, v2}, Lcom/twidroid/fragments/whatshotfragments/b;-><init>(Lcom/twidroid/fragments/whatshotfragments/a;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->j:Lcom/twidroid/fragments/whatshotfragments/b;

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/a;->j:Lcom/twidroid/fragments/whatshotfragments/b;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/twidroid/fragments/whatshotfragments/b;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void

    :cond_67
    move-object v2, v1

    goto :goto_1b
.end method

.method public setListShown(Z)V
    .registers 7

    const/16 v3, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_36

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/a;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-eqz p1, :cond_38

    if-eqz v0, :cond_38

    move v2, v1

    :goto_17
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/twidroid/fragments/whatshotfragments/a;->i:Landroid/view/View;

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_24
    move v0, v3

    :goto_25
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a;->h:Landroid/view/View;

    if-eqz p1, :cond_3c

    invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3c

    :goto_32
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_36
    move v0, v1

    goto :goto_e

    :cond_38
    move v2, v3

    goto :goto_17

    :cond_3a
    move v0, v1

    goto :goto_25

    :cond_3c
    move v3, v1

    goto :goto_32
.end method

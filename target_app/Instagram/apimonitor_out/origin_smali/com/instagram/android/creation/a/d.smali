.class public final Lcom/instagram/android/creation/a/d;
.super Lcom/instagram/base/a/b;
.source "DirectShareFragment.java"

# interfaces
.implements Lcom/instagram/android/directshare/widget/j;
.implements Lcom/instagram/creation/b/a/h;


# instance fields
.field private a:Lcom/instagram/creation/b/a/b;

.field private aa:Lcom/instagram/android/creation/a/a;

.field private ab:Lcom/instagram/android/c/a/y;

.field private ac:Lcom/instagram/android/directshare/widget/i;

.field private ad:Z

.field private ae:Lcom/instagram/android/directshare/widget/d;

.field private af:Ljava/lang/Runnable;

.field private ag:Landroid/app/Dialog;

.field private final ah:Lcom/instagram/common/ui/a/a;

.field private final ai:Landroid/os/Handler;

.field private aj:Lcom/instagram/android/creation/a;

.field private ak:Z

.field private al:Lcom/instagram/common/c/h;

.field private am:Lcom/instagram/android/creation/a/r;

.field private an:Lcom/instagram/android/creation/a/s;

.field private ao:Lcom/instagram/api/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/android/l/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/HorizontalScrollView;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Lcom/instagram/common/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/common/ui/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ah:Lcom/instagram/common/ui/a/a;

    new-instance v0, Lcom/instagram/android/creation/a/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/e;-><init>(Lcom/instagram/android/creation/a/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ai:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/creation/a/r;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/r;-><init>(Lcom/instagram/android/creation/a/d;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->am:Lcom/instagram/android/creation/a/r;

    new-instance v0, Lcom/instagram/android/creation/a/s;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/s;-><init>(Lcom/instagram/android/creation/a/d;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->an:Lcom/instagram/android/creation/a/s;

    new-instance v0, Lcom/instagram/android/creation/a/i;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/i;-><init>(Lcom/instagram/android/creation/a/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ao:Lcom/instagram/api/j/f;

    return-void
.end method

.method private W()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ah:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ad()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ad:Z

    :cond_20
    return-void
.end method

.method private X()Lcom/instagram/android/directshare/widget/i;
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ac:Lcom/instagram/android/directshare/widget/i;

    if-nez v0, :cond_f

    new-instance v0, Lcom/instagram/android/directshare/widget/i;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/instagram/android/directshare/widget/i;-><init>(Landroid/content/Context;Lcom/instagram/android/directshare/widget/j;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ac:Lcom/instagram/android/directshare/widget/i;

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ac:Lcom/instagram/android/directshare/widget/i;

    return-object v0
.end method

.method private Y()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    sget v1, Lcom/facebook/az;->directshare_search_edit_text_hint:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setHint(I)V

    goto :goto_13
.end method

.method private Z()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ab()V

    :goto_23
    return-void

    :cond_24
    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->aa()V

    goto :goto_23
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method private a(Landroid/view/View;I)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->X()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/directshare/widget/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    sget v0, Lcom/facebook/av;->recipient_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->X()Lcom/instagram/android/directshare/widget/i;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/instagram/android/directshare/widget/i;->b(I)Lcom/instagram/user/c/a;

    move-result-object v3

    new-instance v4, Lcom/instagram/creation/b/a/f;

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/instagram/creation/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/instagram/creation/b/a/g;->b(Lcom/instagram/creation/b/a/f;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_47

    :goto_43
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_c

    :cond_47
    move v1, v2

    goto :goto_43

    :cond_49
    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/g;->a()I

    move-result v3

    const/16 v5, 0xf

    if-ge v3, v5, :cond_6c

    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/instagram/creation/b/a/g;->a(Lcom/instagram/creation/b/a/f;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6a

    :goto_66
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_c

    :cond_6a
    move v1, v2

    goto :goto_66

    :cond_6c
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->directshare_max_recipients_reached_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->directshare_max_recipients_reached_body:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_c
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/d;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/a/d;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->search_for_x:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ad:Z

    return v0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/creation/a/d;->ad:Z

    return p1
.end method

.method private aa()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setVisibility(I)V

    return-void
.end method

.method private ab()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setVisibility(I)V

    return-void
.end method

.method private ac()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->X()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->V()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->b(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->X()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/i;->notifyDataSetChanged()V

    return-void
.end method

.method private ad()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private ae()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "MetadataFragment.IS_DIRECT_SHARE_SELECTED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ak:Z

    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/common/u/f;->b(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->W()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Z()V

    return-void
.end method

.method private static c(Z)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "MetadataFragment.INTENT_ACTION_UPDATE_DS_SHARE_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "MetadataFragment.IS_DS_SHARE_ENABLED"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/creation/a/d;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/creation/a/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ae()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->X()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/creation/a/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ac()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/creation/a/d;)Lcom/instagram/creation/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/android/creation/a/d;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ak:Z

    return v0
.end method

.method static synthetic k(Lcom/instagram/android/creation/a/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->aa()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    return-object v0
.end method

.method static synthetic m(Lcom/instagram/android/creation/a/d;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/android/creation/a/d;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ai:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/instagram/android/creation/a/d;)I
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ad()I

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/instagram/android/creation/a/d;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic q(Lcom/instagram/android/creation/a/d;)Lcom/instagram/common/ui/a/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ah:Lcom/instagram/common/ui/a/a;

    return-object v0
.end method

.method static synthetic r(Lcom/instagram/android/creation/a/d;)Landroid/widget/HorizontalScrollView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->b:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ag:Landroid/app/Dialog;

    :cond_f
    iget-boolean v0, p0, Lcom/instagram/android/creation/a/d;->ak:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->aj:Lcom/instagram/android/creation/a;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    :cond_1e
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    return-void
.end method

.method public final U()Z
    .registers 2

    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->b()Z

    move-result v0

    return v0
.end method

.method public final V()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v5, 0x0

    sget v0, Lcom/facebook/aw;->layout_listview:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget v0, Lcom/facebook/aw;->view_switcher_buttons:I

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    sget v2, Lcom/facebook/av;->tab_shadow:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/instagram/android/creation/a/a;

    invoke-direct {v2, v0}, Lcom/instagram/android/creation/a/a;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->aa:Lcom/instagram/android/creation/a/a;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->aa:Lcom/instagram/android/creation/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/a/a;->a(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->aa:Lcom/instagram/android/creation/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/a;->a()V

    :cond_50
    sget v0, Lcom/facebook/aw;->row_directshare_metadata_header:I

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/facebook/av;->recipients_scroll_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->b:Landroid/widget/HorizontalScrollView;

    sget v0, Lcom/facebook/av;->recipients_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    sget v0, Lcom/facebook/av;->people_picker_search:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->d:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/av;->search_edit_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0, v5}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setClearButtonEnabled(Z)V

    sget v0, Lcom/facebook/aw;->directshare_row_search:I

    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    const-string v3, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v3, Lcom/facebook/av;->search_glyph:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    sget v3, Lcom/facebook/av;->search_loading_spinner:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->i:Landroid/view/View;

    sget v0, Lcom/facebook/aw;->row_caption:I

    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/facebook/av;->row_caption_directshare:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/facebook/at;->row_text_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/instagram/common/u/f;->b(Landroid/view/View;I)V

    sget v0, Lcom/facebook/av;->caption_text_view:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/instagram/common/u/f;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ae()V

    return-object v1
.end method

.method public final a(Landroid/content/Context;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/instagram/common/c/j;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY"

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->an:Lcom/instagram/android/creation/a/s;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED"

    iget-object v2, p0, Lcom/instagram/android/creation/a/d;->am:Lcom/instagram/android/creation/a/r;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->al:Lcom/instagram/common/c/h;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->al:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 6

    new-instance v0, Lcom/instagram/android/creation/a;

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-direct {v0, v1, p1, p0}, Lcom/instagram/android/creation/a;-><init>(Lcom/instagram/creation/b/a/b;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->aj:Lcom/instagram/android/creation/a;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->aj:Lcom/instagram/android/creation/a;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a;->a()V

    sget v0, Lcom/facebook/av;->caption_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/a/k;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/k;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    new-instance v1, Lcom/instagram/android/creation/a/l;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/l;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->X()Lcom/instagram/android/directshare/widget/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->X()Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->V()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/creation/a/m;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/m;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/creation/a/n;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/n;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    new-instance v1, Lcom/instagram/android/creation/a/o;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/o;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    new-instance v1, Lcom/instagram/android/creation/a/p;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/p;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/g;)V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/creation/a/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/f;-><init>(Lcom/instagram/android/creation/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/instagram/android/c/a/y;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/creation/a/d;->ao:Lcom/instagram/api/j/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/a/y;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ab:Lcom/instagram/android/c/a/y;

    new-instance v0, Lcom/instagram/android/creation/a/g;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/g;-><init>(Lcom/instagram/android/creation/a/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->ae:Lcom/instagram/android/directshare/widget/d;

    new-instance v0, Lcom/instagram/android/creation/a/h;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/h;-><init>(Lcom/instagram/android/creation/a/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/d;->af:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->b()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/j;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/creation/a/j;-><init>(Lcom/instagram/android/creation/a/d;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->clearFocus()V

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->ab:Lcom/instagram/android/c/a/y;

    invoke-virtual {v1, v0}, Lcom/instagram/android/c/a/y;->a(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public final b()V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/g;->c()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->ad()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    move v2, v3

    :goto_1c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_59

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/f;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v7, Lcom/facebook/aw;->directshare_recipient:I

    iget-object v8, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->setTooltipString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/f;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->setUrl(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/instagram/android/creation/a/d;->ae:Lcom/instagram/android/directshare/widget/d;

    invoke-virtual {v1, v7}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/d;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c

    :cond_59
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-le v0, v4, :cond_72

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    :cond_72
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Y()V

    invoke-direct {p0}, Lcom/instagram/android/creation/a/d;->Z()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v6, :cond_8e

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ai:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->af:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8e
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    move v3, v4

    :cond_95
    invoke-static {v3}, Lcom/instagram/android/creation/a/d;->c(Z)V

    return-void
.end method

.method public final c()Z
    .registers 2

    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->e()Z

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 2

    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->f()I

    move-result v0

    return v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->h(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    new-instance v1, Lcom/instagram/android/creation/a/q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/creation/a/q;-><init>(Lcom/instagram/android/creation/a/d;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "metadata_direct_share"

    return-object v0
.end method

.method public final l_()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/g;->a(Lcom/instagram/creation/b/a/h;)V

    :cond_16
    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0, v2}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-virtual {v0, v2}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/g;)V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->b:Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->c:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->e:Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_38
    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->g:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->h:Landroid/view/View;

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->aj:Lcom/instagram/android/creation/a;

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->f:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->i:Landroid/view/View;

    iput-object v2, p0, Lcom/instagram/android/creation/a/d;->aa:Lcom/instagram/android/creation/a/a;

    return-void
.end method

.method public final p_()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->p_()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/d;->al:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    return-void
.end method

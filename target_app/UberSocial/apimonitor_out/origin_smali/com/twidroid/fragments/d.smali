.class public Lcom/twidroid/fragments/d;
.super Lcom/twidroid/fragments/base/o;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "SingleFacebookView"


# instance fields
.field private G:Landroid/widget/ListView;

.field private H:Z

.field protected a:Lcom/twidroid/ui/a/m;

.field private c:Lcom/twidroid/net/a/a/c;

.field private d:Lcom/twidroid/model/facebook/FacebookNewsModel;

.field private e:Landroid/view/View;

.field private f:Lcom/twidroid/ui/widgets/CachedImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/twidroid/ui/widgets/CachedImageView;

.field private l:Lcom/twidroid/ui/widgets/CachedImageView;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/ImageButton;

.field private o:Lcom/twidroid/fragments/e/b;

.field private p:Landroid/view/View;

.field private q:Lcom/twidroid/fragments/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/o;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d;->h:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "paramRequestString"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/likes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/twidroid/net/c;

    iget-object v2, p0, Lcom/twidroid/fragments/d;->c:Lcom/twidroid/net/a/a/c;

    invoke-virtual {v2}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;

    move-result-object v2

    const/4 v3, 0x6

    new-instance v4, Lcom/twidroid/fragments/d$9;

    invoke-direct {v4, p0}, Lcom/twidroid/fragments/d$9;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/twidroid/net/c;-><init>(Lcom/twidroid/fragments/base/o;Lcom/facebook/a/e;ILcom/twidroid/net/i;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twidroid/net/c;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/fragments/d;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/twidroid/fragments/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->e()V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/fragments/d;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/d;->h:Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/fragments/d$1;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/d$1;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/twidroid/fragments/d$4;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/d$4;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/twidroid/fragments/d$5;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/d$5;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/twidroid/fragments/d$6;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/d$6;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic d(Lcom/twidroid/fragments/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->f()V

    return-void
.end method

.method static synthetic e(Lcom/twidroid/fragments/d;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .registers 8

    const/4 v6, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0c015d

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "paramRequestString"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v4}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/likes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/twidroid/net/c;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->c:Lcom/twidroid/net/a/a/c;

    invoke-virtual {v0}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;

    move-result-object v4

    iget-boolean v0, p0, Lcom/twidroid/fragments/d;->H:Z

    if-eqz v0, :cond_5f

    const/4 v0, 0x3

    :goto_4e
    new-instance v5, Lcom/twidroid/fragments/d$7;

    invoke-direct {v5, p0, v2}, Lcom/twidroid/fragments/d$7;-><init>(Lcom/twidroid/fragments/d;Landroid/app/ProgressDialog;)V

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/twidroid/net/c;-><init>(Lcom/twidroid/fragments/base/o;Lcom/facebook/a/e;ILcom/twidroid/net/i;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    aput-object v1, v0, v6

    invoke-virtual {v3, v0}, Lcom/twidroid/net/c;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void

    :cond_5f
    const/4 v0, 0x2

    goto :goto_4e
.end method

.method static synthetic f(Lcom/twidroid/fragments/d;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private f()V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/fragments/d;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "paramRequestString"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v4}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/comments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/twidroid/net/c;

    iget-object v3, p0, Lcom/twidroid/fragments/d;->c:Lcom/twidroid/net/a/a/c;

    invoke-virtual {v3}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;

    move-result-object v3

    const/4 v4, 0x5

    new-instance v5, Lcom/twidroid/fragments/d$8;

    invoke-direct {v5, p0, v0}, Lcom/twidroid/fragments/d$8;-><init>(Lcom/twidroid/fragments/d;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/twidroid/net/c;-><init>(Lcom/twidroid/fragments/base/o;Lcom/facebook/a/e;ILcom/twidroid/net/i;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/twidroid/net/c;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_14
.end method

.method static synthetic g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    return-object v0
.end method

.method private g()V
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/d;->c:Lcom/twidroid/net/a/a/c;

    :cond_10
    return-void
.end method

.method static synthetic h(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d;->q:Lcom/twidroid/fragments/e;

    return-object v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d;->c:Lcom/twidroid/net/a/a/c;

    invoke-virtual {v1}, Lcom/twidroid/net/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twidroid/fragments/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->i()V

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->l()V

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->j()V

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->k()V

    goto :goto_4
.end method

.method static synthetic i(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d;->o:Lcom/twidroid/fragments/e/b;

    return-object v0
.end method

.method private i()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twidroid/fragments/d;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_24
    const-string v0, "photo"

    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    const-string v0, "status"

    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    :cond_86
    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    :cond_8e
    const-string v0, "link"

    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5a

    :cond_c5
    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c011b

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5a
.end method

.method static synthetic j(Lcom/twidroid/fragments/d;)Lcom/twidroid/net/a/a/c;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d;->c:Lcom/twidroid/net/a/a/c;

    return-object v0
.end method

.method private j()V
    .registers 8

    const/4 v6, 0x0

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->k()Ljava/lang/String;

    move-result-object v0

    :goto_11
    iget-object v1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    iget-object v2, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v2}, Lcom/twidroid/ui/themes/r;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_89

    iget-object v1, p0, Lcom/twidroid/fragments/d;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    iget-object v3, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c(I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twidroid/fragments/d;->k:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v1, v5}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/twidroid/fragments/d;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/twidroid/ui/b/g;

    const/high16 v2, 0x40c0

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->o()I

    move-result v3

    iget-object v4, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->o()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/ui/b/g;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->l:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v0, v5}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    :goto_67
    iget-object v0, p0, Lcom/twidroid/fragments/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6c
    return-void

    :cond_6d
    iget-object v0, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_74
    iget-object v1, p0, Lcom/twidroid/fragments/d;->l:Lcom/twidroid/ui/widgets/CachedImageView;

    new-instance v2, Lcom/twidroid/fragments/d$10;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/d$10;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/d;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->l:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v0, v6}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    goto :goto_67

    :cond_89
    iget-object v1, p0, Lcom/twidroid/fragments/d;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/twidroid/fragments/d;->l:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v1, v5}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/twidroid/fragments/d;->k:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v0, v5}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    goto :goto_6c

    :cond_9b
    iget-object v1, p0, Lcom/twidroid/fragments/d;->k:Lcom/twidroid/ui/widgets/CachedImageView;

    new-instance v2, Lcom/twidroid/fragments/d$11;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/d$11;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/d;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->k:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v0, v6}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    goto :goto_6c
.end method

.method private k()V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "paramRequestString"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v3}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/comments"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "limit"

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/twidroid/net/c;

    iget-object v2, p0, Lcom/twidroid/fragments/d;->c:Lcom/twidroid/net/a/a/c;

    invoke-virtual {v2}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;

    move-result-object v2

    const/4 v3, 0x7

    new-instance v4, Lcom/twidroid/fragments/d$2;

    invoke-direct {v4, p0}, Lcom/twidroid/fragments/d$2;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/twidroid/net/c;-><init>(Lcom/twidroid/fragments/base/o;Lcom/facebook/a/e;ILcom/twidroid/net/i;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twidroid/net/c;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method private l()V
    .registers 5

    new-instance v0, Lcom/twidroid/net/j;

    invoke-direct {v0}, Lcom/twidroid/net/j;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/j;->a(Z)Lcom/twidroid/net/j;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d;->f:Lcom/twidroid/ui/widgets/CachedImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://graph.facebook.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v3}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/picture?type=square"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/twidroid/fragments/d$3;

    invoke-direct {v3, p0}, Lcom/twidroid/fragments/d$3;-><init>(Lcom/twidroid/fragments/d;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/ui/widgets/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/fragments/e/b;Lcom/twidroid/model/facebook/FacebookNewsModel;)V
    .registers 4

    iput-object p2, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    iput-object p1, p0, Lcom/twidroid/fragments/d;->o:Lcom/twidroid/fragments/e/b;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->h()V

    :cond_b
    return-void
.end method

.method public a(Lcom/twidroid/model/facebook/FacebookNewsModel;Lcom/twidroid/fragments/e;)V
    .registers 4

    iput-object p2, p0, Lcom/twidroid/fragments/d;->q:Lcom/twidroid/fragments/e;

    iput-object p1, p0, Lcom/twidroid/fragments/d;->d:Lcom/twidroid/model/facebook/FacebookNewsModel;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->h()V

    :cond_b
    return-void
.end method

.method protected b()V
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->h()V

    const-string v0, "facebook_integration"

    const-string v1, "single_post"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/o;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->b()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const/4 v1, 0x0

    const v0, 0x7f03003a

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    const v0, 0x7f030081

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->f:Lcom/twidroid/ui/widgets/CachedImageView;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    const v1, 0x7f0901ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    const v1, 0x7f0901ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    const v1, 0x7f0901b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->k:Lcom/twidroid/ui/widgets/CachedImageView;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    const v1, 0x7f0901b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->l:Lcom/twidroid/ui/widgets/CachedImageView;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    const v1, 0x7f0900bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twidroid/fragments/d;->n:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->c()V

    invoke-direct {p0}, Lcom/twidroid/fragments/d;->g()V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twidroid/ui/b/f;

    iget-object v2, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    iget-object v2, v2, Lcom/twidroid/ui/themes/r;->T:[I

    invoke-direct {v1, v2}, Lcom/twidroid/ui/b/f;-><init>([I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method protected s_()V
    .registers 5

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/twidroid/fragments/base/o;->s_()V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->L()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->n:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/twidroid/d/t;->a(Landroid/widget/ImageButton;Lcom/twidroid/UberSocialApplication;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->m:Landroid/widget/EditText;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    iget v1, v1, Lcom/twidroid/ui/themes/r;->aE:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    iget v1, v1, Lcom/twidroid/ui/themes/r;->ar:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    iget v1, v1, Lcom/twidroid/ui/themes/r;->ar:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    new-instance v1, Lcom/twidroid/ui/b/f;

    iget-object v2, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    iget-object v2, v2, Lcom/twidroid/ui/themes/r;->T:[I

    invoke-direct {v1, v2}, Lcom/twidroid/ui/b/f;-><init>([I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/SingleFacebookViewActivity;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_92
    return-void

    :cond_93
    iget-object v0, p0, Lcom/twidroid/fragments/d;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    iget v1, v1, Lcom/twidroid/ui/themes/r;->ar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/twidroid/fragments/d;->v:Lcom/twidroid/ui/themes/r;

    iget v1, v1, Lcom/twidroid/ui/themes/r;->ar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_92
.end method

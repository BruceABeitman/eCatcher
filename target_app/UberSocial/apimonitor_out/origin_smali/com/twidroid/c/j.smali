.class public abstract Lcom/twidroid/c/j;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Lcom/twidroid/UberSocialApplication;

.field b:Landroid/widget/AutoCompleteTextView;

.field c:Landroid/content/Context;

.field d:Ljava/lang/String;

.field e:Z

.field f:Lcom/twidroid/net/c/a/f;

.field g:Lcom/twidroid/ui/a/d;

.field h:Landroid/widget/ProgressBar;

.field i:Landroid/widget/FrameLayout;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/Button;

.field l:Landroid/widget/Button;

.field m:Landroid/widget/Button;

.field n:Lcom/twidroid/net/c/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/c/j;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/c/j;->e:Z

    iput-object p1, p0, Lcom/twidroid/c/j;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/c/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/c/j;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/c/j;->a:Lcom/twidroid/UberSocialApplication;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twidroid/c/j;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    :goto_11
    iget-object v2, p0, Lcom/twidroid/c/j;->f:Lcom/twidroid/net/c/a/f;

    invoke-static {v2, v1, v1, v0}, Lcom/twidroid/d/c;->a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/net/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/c/j;->n:Lcom/twidroid/net/c/k;

    return-void

    :cond_1a
    move-object v0, v1

    goto :goto_b

    :cond_1c
    move-object v0, v1

    goto :goto_11
.end method

.method private c()V
    .registers 2

    new-instance v0, Lcom/twidroid/c/j$6;

    invoke-direct {v0, p0}, Lcom/twidroid/c/j$6;-><init>(Lcom/twidroid/c/j;)V

    iput-object v0, p0, Lcom/twidroid/c/j;->f:Lcom/twidroid/net/c/a/f;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/c/j;->e:Z

    return-void
.end method

.method public a(Lcom/twidroid/UberSocialApplication;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/j;->a:Lcom/twidroid/UberSocialApplication;

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/j;->g:Lcom/twidroid/ui/a/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/c/j;->g:Lcom/twidroid/ui/a/d;

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/a/d;->e(Z)V

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iput-object p1, p0, Lcom/twidroid/c/j;->d:Ljava/lang/String;

    :goto_a
    return-void

    :cond_b
    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/c/j;->d:Ljava/lang/String;

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/c/j;->a:Lcom/twidroid/UberSocialApplication;

    iget-object v0, p0, Lcom/twidroid/c/j;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->setContentView(I)V

    invoke-direct {p0}, Lcom/twidroid/c/j;->c()V

    iget-object v0, p0, Lcom/twidroid/c/j;->c:Landroid/content/Context;

    const v1, 0x7f0c0104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twidroid/c/j;->h:Landroid/widget/ProgressBar;

    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/twidroid/c/j;->i:Landroid/widget/FrameLayout;

    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/c/j;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twidroid/c/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Lcom/twidroid/ui/a/d;

    invoke-virtual {p0}, Lcom/twidroid/c/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twidroid/ui/a/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/twidroid/c/j;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->at()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/d;->e(Z)V

    iget-object v1, p0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/twidroid/c/j$2;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/c/j$2;-><init>(Lcom/twidroid/c/j;Lcom/twidroid/ui/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twidroid/c/j;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twidroid/c/j;->m:Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/c/j$3;

    invoke-direct {v1, p0}, Lcom/twidroid/c/j$3;-><init>(Lcom/twidroid/c/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twidroid/c/j;->l:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/twidroid/c/j;->e:Z

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/twidroid/c/j;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_a7
    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/twidroid/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twidroid/c/j;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twidroid/c/j;->k:Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/c/j$5;

    invoke-direct {v1, p0}, Lcom/twidroid/c/j$5;-><init>(Lcom/twidroid/c/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_bd
    iget-object v0, p0, Lcom/twidroid/c/j;->l:Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/c/j$4;

    invoke-direct {v1, p0}, Lcom/twidroid/c/j$4;-><init>(Lcom/twidroid/c/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x42

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/c/j;->a(Ljava/lang/String;)V

    :goto_12
    return v0

    :cond_13
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1a

    invoke-virtual {p0}, Lcom/twidroid/c/j;->dismiss()V

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onStart()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/twidroid/c/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :try_start_c
    iget-object v0, p0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/twidroid/c/j;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/twidroid/c/j;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(II)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_28

    :goto_1d
    iget-object v0, p0, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/twidroid/c/j$1;

    invoke-direct {v1, p0}, Lcom/twidroid/c/j$1;-><init>(Lcom/twidroid/c/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :catch_28
    move-exception v0

    goto :goto_1d
.end method

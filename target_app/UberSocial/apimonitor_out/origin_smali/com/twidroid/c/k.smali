.class public abstract Lcom/twidroid/c/k;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Lcom/twidroid/UberSocialApplication;

.field b:Landroid/widget/AutoCompleteTextView;

.field c:Landroid/content/Context;

.field d:Z

.field e:Ljava/lang/String;

.field f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/c/k;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/c/k;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/c/k;->f:Z

    iput-object p1, p0, Lcom/twidroid/c/k;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/c/k;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/c/k;->a:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/twidroid/UberSocialApplication;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/k;->a:Lcom/twidroid/UberSocialApplication;

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/c/k;->d:Z

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/c/k;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/c/k;->dismiss()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/k;->e:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/c/k;->f:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/twidroid/c/k;->setContentView(I)V

    iget-object v0, p0, Lcom/twidroid/c/k;->c:Landroid/content/Context;

    const v1, 0x7f0c0106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/c/k;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/twidroid/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/twidroid/c/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Lcom/twidroid/ui/a/e;

    iget-object v1, p0, Lcom/twidroid/c/k;->c:Landroid/content/Context;

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twidroid/ui/a/e;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/twidroid/c/k$2;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/c/k$2;-><init>(Lcom/twidroid/c/k;Lcom/twidroid/ui/a/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/twidroid/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/twidroid/c/k;->f:Z

    if-eqz v1, :cond_59

    const v1, 0x7f0c013d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_59
    new-instance v1, Lcom/twidroid/c/k$3;

    invoke-direct {v1, p0}, Lcom/twidroid/c/k$3;-><init>(Lcom/twidroid/c/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/twidroid/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c0100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/twidroid/c/k$4;

    invoke-direct {v1, p0}, Lcom/twidroid/c/k$4;-><init>(Lcom/twidroid/c/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/twidroid/c/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/c/k$5;

    invoke-direct {v1, p0}, Lcom/twidroid/c/k$5;-><init>(Lcom/twidroid/c/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x42

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/c/k;->a(Ljava/lang/String;)V

    :goto_12
    return v0

    :cond_13
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1a

    invoke-virtual {p0}, Lcom/twidroid/c/k;->dismiss()V

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onStart()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/twidroid/c/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :try_start_c
    iget-object v0, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/twidroid/c/k;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/twidroid/c/k;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(II)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_28

    :goto_1d
    iget-object v0, p0, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/twidroid/c/k$1;

    invoke-direct {v1, p0}, Lcom/twidroid/c/k$1;-><init>(Lcom/twidroid/c/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :catch_28
    move-exception v0

    goto :goto_1d
.end method

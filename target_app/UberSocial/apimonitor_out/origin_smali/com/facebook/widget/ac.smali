.class Lcom/facebook/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/widget/ac;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;

    move-result-object v3

    if-eqz v3, :cond_99

    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->d(Lcom/facebook/widget/LoginButton;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/facebook/a/t;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/facebook/a/t;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;

    move-result-object v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/c/j;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/facebook/a/t;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v8}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;

    move-result-object v8

    invoke-interface {v8}, Lcom/facebook/c/j;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_67
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/ac$1;

    invoke-direct {v1, p0, v3}, Lcom/facebook/widget/ac$1;-><init>(Lcom/facebook/widget/ac;Lcom/facebook/aw;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_87
    :goto_87
    return-void

    :cond_88
    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/facebook/a/t;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_67

    :cond_95
    invoke-virtual {v3}, Lcom/facebook/aw;->j()V

    goto :goto_87

    :cond_99
    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_af

    invoke-virtual {v1}, Lcom/facebook/aw;->d()Lcom/facebook/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/bk;->b()Z

    move-result v3

    if-eqz v3, :cond_ce

    :cond_af
    iget-object v1, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/m;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/b/m;->a(Lcom/facebook/aw;)V

    new-instance v1, Lcom/facebook/ba;

    invoke-direct {v1, v0}, Lcom/facebook/ba;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v3}, Lcom/facebook/widget/LoginButton;->e(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/ba;->a(Ljava/lang/String;)Lcom/facebook/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ba;->a()Lcom/facebook/aw;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/aw;->a(Lcom/facebook/aw;)V

    :cond_ce
    invoke-virtual {v1}, Lcom/facebook/aw;->b()Z

    move-result v3

    if-nez v3, :cond_87

    iget-object v3, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v3}, Lcom/facebook/widget/LoginButton;->f(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_127

    new-instance v0, Lcom/facebook/bc;

    iget-object v2, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/widget/LoginButton;->f(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/bc;-><init>(Landroid/support/v4/app/Fragment;)V

    :goto_e7
    if-eqz v0, :cond_87

    iget-object v2, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ab;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/widget/ab;->a(Lcom/facebook/widget/ab;)Lcom/facebook/bi;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/bc;->b(Lcom/facebook/bi;)Lcom/facebook/bc;

    iget-object v2, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ab;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/widget/ab;->b(Lcom/facebook/widget/ab;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/bc;->b(Ljava/util/List;)Lcom/facebook/bc;

    iget-object v2, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ab;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/widget/ab;->c(Lcom/facebook/widget/ab;)Lcom/facebook/bj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/bc;->b(Lcom/facebook/bj;)Lcom/facebook/bc;

    sget-object v2, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    iget-object v3, p0, Lcom/facebook/widget/ac;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v3}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ab;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/widget/ab;->d(Lcom/facebook/widget/ab;)Lcom/facebook/b/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/b/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    invoke-virtual {v1, v0}, Lcom/facebook/aw;->b(Lcom/facebook/bc;)V

    goto/16 :goto_87

    :cond_127
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_139

    new-instance v2, Lcom/facebook/bc;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/facebook/bc;-><init>(Landroid/app/Activity;)V

    move-object v0, v2

    goto :goto_e7

    :cond_134
    invoke-virtual {v1, v0}, Lcom/facebook/aw;->a(Lcom/facebook/bc;)V

    goto/16 :goto_87

    :cond_139
    move-object v0, v2

    goto :goto_e7
.end method

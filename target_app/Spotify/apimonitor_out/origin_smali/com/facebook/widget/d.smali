.class final Lcom/facebook/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/widget/d;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/ae;->b()Lcom/facebook/Session;

    move-result-object v5

    if-eqz v5, :cond_ca

    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->d(Lcom/facebook/widget/LoginButton;)Z

    move-result v1

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/facebook/a/g;->f:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/facebook/a/g;->d:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/facebook/a/g;->h:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v9}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v9

    invoke-interface {v9}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_67
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/d$1;

    invoke-direct {v1, p0, v5}, Lcom/facebook/widget/d$1;-><init>(Lcom/facebook/widget/d;Lcom/facebook/Session;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_87
    :goto_87
    iget-object v0, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->b(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "logging_in"

    if-eqz v5, :cond_16a

    move v0, v2

    :goto_9b
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->h(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/facebook/AppEventsLogger;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->i(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->i(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_b8
    return-void

    :cond_b9
    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/facebook/a/g;->i:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_67

    :cond_c6
    invoke-virtual {v5}, Lcom/facebook/Session;->g()V

    goto :goto_87

    :cond_ca
    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/ae;->a()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Lcom/facebook/Session;->c()Lcom/facebook/SessionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/SessionState;->b()Z

    move-result v6

    if-eqz v6, :cond_ff

    :cond_e0
    iget-object v1, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/ae;->c()V

    new-instance v1, Lcom/facebook/ac;

    invoke-direct {v1, v0}, Lcom/facebook/ac;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v6}, Lcom/facebook/widget/LoginButton;->e(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/facebook/ac;->a(Ljava/lang/String;)Lcom/facebook/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ac;->a()Lcom/facebook/Session;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/Session;->a(Lcom/facebook/Session;)V

    :cond_ff
    invoke-virtual {v1}, Lcom/facebook/Session;->a()Z

    move-result v6

    if-nez v6, :cond_87

    iget-object v6, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v6}, Lcom/facebook/widget/LoginButton;->f(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_158

    new-instance v0, Lcom/facebook/Session$OpenRequest;

    iget-object v4, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v4}, Lcom/facebook/widget/LoginButton;->f(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    :goto_118
    if-eqz v0, :cond_87

    iget-object v4, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v4}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/widget/c;->a(Lcom/facebook/widget/c;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/Session$OpenRequest;->b(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    iget-object v4, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v4}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/widget/c;->b(Lcom/facebook/widget/c;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/Session$OpenRequest;->b(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    iget-object v4, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v4}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/widget/c;->c(Lcom/facebook/widget/c;)Lcom/facebook/SessionLoginBehavior;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/Session$OpenRequest;->b(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    sget-object v4, Lcom/facebook/internal/SessionAuthorizationType;->b:Lcom/facebook/internal/SessionAuthorizationType;

    iget-object v6, p0, Lcom/facebook/widget/d;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v6}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/widget/c;->d(Lcom/facebook/widget/c;)Lcom/facebook/internal/SessionAuthorizationType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_165

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->b(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_87

    :cond_158
    instance-of v6, v0, Landroid/app/Activity;

    if-eqz v6, :cond_16d

    new-instance v4, Lcom/facebook/Session$OpenRequest;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v4, v0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    move-object v0, v4

    goto :goto_118

    :cond_165
    invoke-virtual {v1, v0}, Lcom/facebook/Session;->a(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_87

    :cond_16a
    move v0, v3

    goto/16 :goto_9b

    :cond_16d
    move-object v0, v4

    goto :goto_118
.end method

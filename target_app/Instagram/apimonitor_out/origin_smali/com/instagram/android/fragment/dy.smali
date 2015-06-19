.class public final Lcom/instagram/android/fragment/dy;
.super Lcom/instagram/base/a/b;
.source "ReportProblemFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private c:Landroid/app/Dialog;

.field private final d:Landroid/os/Handler;

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/dy;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/dy;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/dy;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/dy;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/dy;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/dy;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/dy;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->c:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/dy;->e:I

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/dy;->a(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public final F()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->l()Landroid/support/v4/app/k;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/dy;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/dy;->a(I)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/dy;->c:Landroid/app/Dialog;

    :cond_36
    return-void
.end method

.method public final G()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    sget v0, Lcom/facebook/aw;->fragment_report_problem:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/dz;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/dz;-><init>(Lcom/instagram/android/fragment/dy;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v1
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-array v3, v0, [Ljava/lang/Object;

    sget v4, Lcom/facebook/az;->report_problem:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/fragment/dy;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/ea;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ea;-><init>(Lcom/instagram/android/fragment/dy;)V

    invoke-interface {p1, v2, v3}, Lcom/instagram/a/a;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/android/fragment/dy;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iget-object v2, p0, Lcom/instagram/android/fragment/dy;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iget-object v3, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3f

    :goto_3b
    invoke-virtual {v2, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    return-void

    :cond_3f
    move v0, v1

    goto :goto_3b
.end method

.method public final b()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lcom/instagram/bugreport/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/bugreport/a/g;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/bugreport/a/g;->a(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/bugreport/a/d;->a()Lcom/instagram/bugreport/a/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/eb;

    invoke-direct {v1, p0, v4}, Lcom/instagram/android/fragment/eb;-><init>(Lcom/instagram/android/fragment/dy;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/bugreport/a/b;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;

    new-instance v1, Lcom/instagram/common/a/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/dy;->y()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/a/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/a/i;->a(Lcom/instagram/common/a/a/a;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "report_problem"

    return-object v0
.end method

.method public final l_()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    iput-object v0, p0, Lcom/instagram/android/fragment/dy;->a:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/dy;->b:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-void
.end method

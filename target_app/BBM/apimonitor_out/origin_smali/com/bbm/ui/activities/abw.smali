.class final Lcom/bbm/ui/activities/abw;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 10

    const v4, 0x7f0e05cf

    const v1, 0x7f0200f9

    const/4 v6, 0x0

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_e4

    if-nez p2, :cond_e4

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->e(Lcom/bbm/ui/activities/ProfileActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/ui/activities/ProfileActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v3}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bbm/util/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_52
    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-virtual {v2, v4}, Lcom/bbm/ui/activities/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-static {v0, v2, v3, v4}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;II)V

    :goto_97
    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->f(Lcom/bbm/ui/activities/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_bf

    const v1, 0x7f0200fb

    :cond_bf
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0, v2}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Ljava/lang/String;)V

    :cond_cc
    :goto_cc
    return-void

    :cond_cd
    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_97

    :cond_de
    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0, v6}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Z)Z

    goto :goto_cc

    :cond_e4
    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_cc

    if-eqz p2, :cond_cc

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0, v6}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Z)Z

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/bbm/ui/activities/abw;->a:Lcom/bbm/ui/activities/ProfileActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_cc
.end method

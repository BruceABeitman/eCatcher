.class final Lcom/bbm/ui/c/p;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;Landroid/widget/TextView;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/c/p;->d:Lcom/bbm/ui/c/l;

    iput-object p2, p0, Lcom/bbm/ui/c/p;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/bbm/ui/c/p;->b:Landroid/widget/Button;

    iput-object p4, p0, Lcom/bbm/ui/c/p;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/16 v2, 0xf

    iget-object v0, p0, Lcom/bbm/ui/c/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/p;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/p;->d:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/c/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/bbm/ui/c/p;->d:Lcom/bbm/ui/c/l;

    invoke-static {v1}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/cn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

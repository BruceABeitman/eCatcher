.class final Lcom/bbm/ui/c/o;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/o;->b:Lcom/bbm/ui/c/l;

    iput-object p2, p0, Lcom/bbm/ui/c/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/16 v3, 0xf

    iget-object v0, p0, Lcom/bbm/ui/c/o;->b:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/o;->b:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    iget-object v1, p0, Lcom/bbm/ui/c/o;->b:Lcom/bbm/ui/c/l;

    iget-object v2, p0, Lcom/bbm/ui/c/o;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bbm/ui/c/l;->b(Lcom/bbm/ui/c/l;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/c/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/bbm/ui/c/o;->b:Lcom/bbm/ui/c/l;

    invoke-static {v1}, Lcom/bbm/ui/c/l;->o(Lcom/bbm/ui/c/l;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.class final Lcom/bbm/ui/fm;
.super Ljava/lang/Object;
.source "SearchEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/SearchEditText;


# direct methods
.method constructor <init>(Lcom/bbm/ui/SearchEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/fm;->a:Lcom/bbm/ui/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/fm;->a:Lcom/bbm/ui/SearchEditText;

    invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->c(Lcom/bbm/ui/SearchEditText;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/fm;->a:Lcom/bbm/ui/SearchEditText;

    invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->d(Lcom/bbm/ui/SearchEditText;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1d
    const/16 v0, 0x8

    goto :goto_19
.end method

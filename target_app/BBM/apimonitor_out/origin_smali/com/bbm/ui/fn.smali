.class final Lcom/bbm/ui/fn;
.super Ljava/lang/Object;
.source "SearchEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/SearchEditText;


# direct methods
.method constructor <init>(Lcom/bbm/ui/SearchEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/fn;->a:Lcom/bbm/ui/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/fn;->a:Lcom/bbm/ui/SearchEditText;

    invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->a(Lcom/bbm/ui/SearchEditText;)Lcom/bbm/ui/fq;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bbm/ui/fn;->a:Lcom/bbm/ui/SearchEditText;

    invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->a(Lcom/bbm/ui/SearchEditText;)Lcom/bbm/ui/fq;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bbm/ui/fq;->a(Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/bbm/ui/fn;->a:Lcom/bbm/ui/SearchEditText;

    invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->d(Lcom/bbm/ui/SearchEditText;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v0, 0x0

    return v0
.end method

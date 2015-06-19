.class Lcom/twidroid/fragments/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/d;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/d;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/d;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->c(Lcom/twidroid/fragments/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_39

    iget-object v0, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->d(Lcom/twidroid/fragments/d;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->c(Lcom/twidroid/fragments/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;

    invoke-static {v1}, Lcom/twidroid/fragments/d;->e(Lcom/twidroid/fragments/d;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_39
    return-void
.end method

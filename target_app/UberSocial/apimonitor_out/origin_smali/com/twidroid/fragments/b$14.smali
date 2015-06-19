.class Lcom/twidroid/fragments/b$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-nez p2, :cond_27

    iget-object v0, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;

    iget-object v1, v1, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;

    :cond_27
    return-void
.end method

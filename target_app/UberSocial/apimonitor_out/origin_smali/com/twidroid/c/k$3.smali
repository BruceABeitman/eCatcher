.class Lcom/twidroid/c/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/k;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/k;


# direct methods
.method constructor <init>(Lcom/twidroid/c/k;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/k$3;->a:Lcom/twidroid/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/k$3;->a:Lcom/twidroid/c/k;

    iget-object v1, p0, Lcom/twidroid/c/k$3;->a:Lcom/twidroid/c/k;

    iget-object v1, v1, Lcom/twidroid/c/k;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/c/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/k$3;->a:Lcom/twidroid/c/k;

    invoke-virtual {v0}, Lcom/twidroid/c/k;->dismiss()V

    return-void
.end method
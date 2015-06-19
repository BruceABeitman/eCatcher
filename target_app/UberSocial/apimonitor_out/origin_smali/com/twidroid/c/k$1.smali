.class Lcom/twidroid/c/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/k;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/k;


# direct methods
.method constructor <init>(Lcom/twidroid/c/k;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/k$1;->a:Lcom/twidroid/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x6

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/4 v0, 0x5

    if-ne p2, v0, :cond_10

    :cond_9
    iget-object v0, p0, Lcom/twidroid/c/k$1;->a:Lcom/twidroid/c/k;

    invoke-virtual {v0}, Lcom/twidroid/c/k;->b()V

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

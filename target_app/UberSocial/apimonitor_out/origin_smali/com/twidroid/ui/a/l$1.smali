.class Lcom/twidroid/ui/a/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/l;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/c/h;

.field final synthetic b:Lcom/twidroid/ui/a/l;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/l;Lcom/twidroid/ui/c/h;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ui/a/l$1;->b:Lcom/twidroid/ui/a/l;

    iput-object p2, p0, Lcom/twidroid/ui/a/l$1;->a:Lcom/twidroid/ui/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Lcom/twidroid/ui/a/l$1;->a:Lcom/twidroid/ui/c/h;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

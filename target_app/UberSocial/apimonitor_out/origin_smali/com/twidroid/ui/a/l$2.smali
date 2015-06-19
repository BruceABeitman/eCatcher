.class Lcom/twidroid/ui/a/l$2;
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

    iput-object p1, p0, Lcom/twidroid/ui/a/l$2;->b:Lcom/twidroid/ui/a/l;

    iput-object p2, p0, Lcom/twidroid/ui/a/l$2;->a:Lcom/twidroid/ui/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/l$2;->b:Lcom/twidroid/ui/a/l;

    invoke-static {v0}, Lcom/twidroid/ui/a/l;->a(Lcom/twidroid/ui/a/l;)Lcom/twidroid/ui/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a/l$2;->a:Lcom/twidroid/ui/c/h;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/g;->c(Lcom/twidroid/ui/c/h;)V

    iget-object v0, p0, Lcom/twidroid/ui/a/l$2;->b:Lcom/twidroid/ui/a/l;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/l;->notifyDataSetChanged()V

    return-void
.end method

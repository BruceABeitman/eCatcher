.class Lcom/twidroid/ui/a/i;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/h;

.field private final b:Lcom/twidroid/ui/a/b;


# direct methods
.method public constructor <init>(Lcom/twidroid/ui/a/h;Lcom/twidroid/ui/a/b;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ui/a/i;->a:Lcom/twidroid/ui/a/h;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object p2, p0, Lcom/twidroid/ui/a/i;->b:Lcom/twidroid/ui/a/b;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/widget/Filter$FilterResults;
    .registers 4

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_b

    :cond_5
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/twidroid/ui/a/i;->a:Lcom/twidroid/ui/a/h;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/twidroid/ui/a/h;->a(Lcom/twidroid/ui/a/h;Ljava/lang/String;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_a
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/i;->a([Ljava/lang/String;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/widget/Filter$FilterResults;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/ui/a/i;->b:Lcom/twidroid/ui/a/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/ui/a/i;->b:Lcom/twidroid/ui/a/b;

    invoke-interface {v0, p1}, Lcom/twidroid/ui/a/b;->a(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/widget/Filter$FilterResults;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/i;->a(Landroid/widget/Filter$FilterResults;)V

    return-void
.end method

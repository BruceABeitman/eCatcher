.class final Lcom/c/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/ap;Lcom/c/ap;)I
    .registers 5

    invoke-interface {p1}, Lcom/c/ap;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-interface {p2}, Lcom/c/ap;->n_()Lcom/c/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/ba;->c(Lcom/c/ba;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/c/ap;

    check-cast p2, Lcom/c/ap;

    invoke-virtual {p0, p1, p2}, Lcom/c/au;->a(Lcom/c/ap;Lcom/c/ap;)I

    move-result v0

    return v0
.end method

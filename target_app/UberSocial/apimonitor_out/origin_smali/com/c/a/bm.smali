.class Lcom/c/a/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final a:Lcom/c/a/be;


# direct methods
.method constructor <init>(Lcom/c/a/be;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/bm;->a:Lcom/c/a/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/o;Lcom/c/o;)I
    .registers 6

    iget-object v0, p2, Lcom/c/o;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Lcom/c/o;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v0, p1, Lcom/c/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/c/a/bi;

    iget-object v2, p2, Lcom/c/o;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/c/o;

    check-cast p2, Lcom/c/o;

    invoke-virtual {p0, p1, p2}, Lcom/c/a/bm;->a(Lcom/c/o;Lcom/c/o;)I

    move-result v0

    return v0
.end method

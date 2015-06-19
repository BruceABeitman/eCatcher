.class Lcom/c/a/ax;
.super Ljava/util/LinkedList;


# instance fields
.field final a:Lcom/c/a/be;


# direct methods
.method constructor <init>(Lcom/c/a/be;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/ax;->a:Lcom/c/a/be;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/c/a/bi;)V
    .registers 4

    invoke-virtual {p0}, Lcom/c/a/ax;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/c/a/bi;

    invoke-virtual {p0, p1, p2}, Lcom/c/a/ax;->a(ILcom/c/a/bi;)V

    return-void
.end method

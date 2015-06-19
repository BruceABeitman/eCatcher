.class Lcom/c/a/cr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final a:Lcom/c/a/cn;


# direct methods
.method constructor <init>(Lcom/c/a/cn;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/cr;->a:Lcom/c/a/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/bu;Lcom/c/bu;)I
    .registers 5

    invoke-virtual {p1}, Lcom/c/bu;->b()Lcom/c/bq;

    move-result-object v0

    invoke-virtual {p2}, Lcom/c/bu;->b()Lcom/c/bq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bq;->a(Lcom/c/bq;)I

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1}, Lcom/c/bu;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/c/bu;->c()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_e
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/c/bu;

    check-cast p2, Lcom/c/bu;

    invoke-virtual {p0, p1, p2}, Lcom/c/a/cr;->a(Lcom/c/bu;Lcom/c/bu;)I

    move-result v0

    return v0
.end method

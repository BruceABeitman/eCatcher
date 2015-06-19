.class public final Lcom/c/a/dp;
.super Lcom/c/a/dl;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/c/a/dl;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    if-nez p1, :cond_8

    const/4 v0, -0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/c/bq;)Ljava/lang/Integer;
    .registers 3

    invoke-super {p0, p1}, Lcom/c/a/dl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/c/a/dp;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/c/bq;

    invoke-virtual {p0, p1}, Lcom/c/a/dp;->a(Lcom/c/bq;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

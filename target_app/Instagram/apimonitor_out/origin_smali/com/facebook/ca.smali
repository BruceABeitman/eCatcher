.class public final Lcom/facebook/ca;
.super Lcom/facebook/bu;
.source "Session.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/bu;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/bu;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/facebook/cf;)Lcom/facebook/bu;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ca;->b(Lcom/facebook/cf;)Lcom/facebook/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/facebook/cg;)Lcom/facebook/bu;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ca;->b(Lcom/facebook/cg;)Lcom/facebook/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/List;)Lcom/facebook/bu;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ca;->b(Ljava/util/List;)Lcom/facebook/ca;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/cf;)Lcom/facebook/ca;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/bu;->a(Lcom/facebook/cf;)Lcom/facebook/bu;

    return-object p0
.end method

.method public final b(Lcom/facebook/cg;)Lcom/facebook/ca;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/bu;->a(Lcom/facebook/cg;)Lcom/facebook/bu;

    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/facebook/ca;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ca;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/facebook/bu;->a(Ljava/util/List;)Lcom/facebook/bu;

    return-object p0
.end method

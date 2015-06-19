.class final Lcom/facebook/e/c/f;
.super Ljava/lang/Object;
.source "ThreadTrace.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/e/c/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/e/c/g;Lcom/facebook/e/c/g;)I
    .registers 8

    invoke-virtual {p0}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/e/c/g;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/e/c/g;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_18

    const/4 v0, -0x1

    :goto_17
    return v0

    :cond_18
    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_17

    :cond_1e
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/facebook/e/c/g;

    check-cast p2, Lcom/facebook/e/c/g;

    invoke-static {p1, p2}, Lcom/facebook/e/c/f;->a(Lcom/facebook/e/c/g;Lcom/facebook/e/c/g;)I

    move-result v0

    return v0
.end method

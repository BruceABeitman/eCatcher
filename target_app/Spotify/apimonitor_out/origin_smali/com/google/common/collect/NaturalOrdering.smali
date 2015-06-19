.class final Lcom/google/common/collect/NaturalOrdering;
.super Lcom/google/common/collect/am;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/am",
        "<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/NaturalOrdering;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/NaturalOrdering;

    invoke-direct {v0}, Lcom/google/common/collect/NaturalOrdering;-><init>()V

    sput-object v0, Lcom/google/common/collect/NaturalOrdering;->a:Lcom/google/common/collect/NaturalOrdering;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/am;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/am;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/am",
            "<TS;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/ReverseNaturalOrdering;->a:Lcom/google/common/collect/ReverseNaturalOrdering;

    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, p2, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_d
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Ordering.natural()"

    return-object v0
.end method

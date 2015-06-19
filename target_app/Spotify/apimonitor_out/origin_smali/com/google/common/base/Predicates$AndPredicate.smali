.class Lcom/google/common/base/Predicates$AndPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/j;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/j",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/base/j",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/base/j",
            "<-TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/j;

    invoke-interface {v0, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_18
    return v2

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1d
    const/4 v2, 0x1

    goto :goto_18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/common/base/Predicates$AndPredicate;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/google/common/base/Predicates$AndPredicate;

    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    iget-object v1, p1, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0x12472c2c

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "And("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v2}, Lcom/google/common/base/c;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

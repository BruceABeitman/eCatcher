.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/c;->a(Ljava/lang/String;)Lcom/google/common/base/c;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/c;

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/c;
    .registers 1

    sget-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/c;

    return-object v0
.end method

.method public static a(Lcom/google/common/base/j;Lcom/google/common/base/j;)Lcom/google/common/base/j;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/j",
            "<-TT;>;",
            "Lcom/google/common/base/j",
            "<-TT;>;)",
            "Lcom/google/common/base/j",
            "<TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Lcom/google/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/j;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/j;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/base/j;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;B)V

    return-object v2
.end method

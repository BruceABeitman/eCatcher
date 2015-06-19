.class Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableCollection",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->a:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/google/common/collect/aq;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/aq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method final f()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    sget-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_7
    return-object p1
.end method

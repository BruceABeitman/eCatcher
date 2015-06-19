.class public abstract Lcom/google/common/base/Equivalence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/base/Equivalence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Equivalence$Equals;->a:Lcom/google/common/base/Equivalence$Equals;

    return-object v0
.end method

.method public static b()Lcom/google/common/base/Equivalence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Equivalence$Identity;->a:Lcom/google/common/base/Equivalence$Identity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/base/Equivalence;->b(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Equivalence;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method protected abstract b(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

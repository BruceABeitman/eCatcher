.class final Lcom/google/common/collect/v;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
        "Lcom/google/common/collect/ac",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/u;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)Lcom/google/common/collect/ac;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ac",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/v;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/v;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)V

    return-object v0
.end method

.method public final a()Lcom/google/common/collect/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/u;

    return-object v0
.end method

.method public final b()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/v;->clear()V

    return-void
.end method

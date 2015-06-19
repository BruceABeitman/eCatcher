.class final Lcom/google/common/collect/k;
.super Lcom/google/common/collect/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/j",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/j;-><init>(Ljava/util/List;I)V

    return-void
.end method

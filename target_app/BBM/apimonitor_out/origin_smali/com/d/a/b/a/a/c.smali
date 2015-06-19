.class public final Lcom/d/a/b/a/a/c;
.super Lcom/d/a/b/a/a/d;
.source "LIFOLinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/d/a/b/a/a/d",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/d/a/b/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/d/a/b/a/a/d;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-super {p0}, Lcom/d/a/b/a/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/d/a/b/a/a/g;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field b:Lcom/d/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end field

.field c:Lcom/d/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    return-void
.end method

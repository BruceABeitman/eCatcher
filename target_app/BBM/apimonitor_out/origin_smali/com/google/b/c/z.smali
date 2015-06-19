.class final Lcom/google/b/c/z;
.super Lcom/google/b/c/l;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/c/l",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/b/c/s;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/b/c/s;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/b/c/s;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/b/c/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/b/c/z;->a:Lcom/google/b/c/s;

    return-void
.end method

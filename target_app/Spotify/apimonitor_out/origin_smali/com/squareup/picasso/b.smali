.class final Lcom/squareup/picasso/b;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/squareup/picasso/a;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/picasso/a;",
            "TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/squareup/picasso/b;->a:Lcom/squareup/picasso/a;

    return-void
.end method

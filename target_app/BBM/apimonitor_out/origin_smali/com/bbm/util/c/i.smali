.class public final Lcom/bbm/util/c/i;
.super Ljava/lang/Object;
.source "StringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bbm/util/c/i;->a:I

    iput p2, p0, Lcom/bbm/util/c/i;->b:I

    iput-object p3, p0, Lcom/bbm/util/c/i;->c:Ljava/lang/Object;

    return-void
.end method

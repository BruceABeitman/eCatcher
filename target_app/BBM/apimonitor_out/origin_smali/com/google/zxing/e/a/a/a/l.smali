.class final Lcom/google/zxing/e/a/a/a/l;
.super Ljava/lang/Object;
.source "BlockParsedResult.java"


# instance fields
.field final a:Lcom/google/zxing/e/a/a/a/p;

.field final b:Z


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/e/a/a/a/l;-><init>(Lcom/google/zxing/e/a/a/a/p;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/e/a/a/a/p;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/zxing/e/a/a/a/l;->b:Z

    iput-object p1, p0, Lcom/google/zxing/e/a/a/a/l;->a:Lcom/google/zxing/e/a/a/a/p;

    return-void
.end method

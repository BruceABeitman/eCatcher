.class final Lcom/google/zxing/e/a/a/a/p;
.super Lcom/google/zxing/e/a/a/a/r;
.source "DecodedInformation.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/r;-><init>(I)V

    iput-object p2, p0, Lcom/google/zxing/e/a/a/a/p;->a:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/zxing/e/a/a/a/p;->c:Z

    iput v0, p0, Lcom/google/zxing/e/a/a/a/p;->b:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/r;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/e/a/a/a/p;->c:Z

    iput p3, p0, Lcom/google/zxing/e/a/a/a/p;->b:I

    iput-object p2, p0, Lcom/google/zxing/e/a/a/a/p;->a:Ljava/lang/String;

    return-void
.end method

.class public final Lcom/google/zxing/e/a/c;
.super Ljava/lang/Object;
.source "FinderPattern.java"


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lcom/google/zxing/o;


# direct methods
.method public constructor <init>(I[IIII)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/e/a/c;->a:I

    iput-object p2, p0, Lcom/google/zxing/e/a/c;->b:[I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/o;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/o;

    int-to-float v3, p3

    int-to-float v4, p5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/o;

    int-to-float v3, p4

    int-to-float v4, p5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/e/a/c;->c:[Lcom/google/zxing/o;

    return-void
.end method

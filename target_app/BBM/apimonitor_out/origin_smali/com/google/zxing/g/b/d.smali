.class public final Lcom/google/zxing/g/b/d;
.super Lcom/google/zxing/o;
.source "FinderPattern.java"


# instance fields
.field public final c:F

.field public d:I


# direct methods
.method constructor <init>(FFF)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/g/b/d;-><init>(FFFI)V

    return-void
.end method

.method constructor <init>(FFFI)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/o;-><init>(FF)V

    iput p3, p0, Lcom/google/zxing/g/b/d;->c:F

    iput p4, p0, Lcom/google/zxing/g/b/d;->d:I

    return-void
.end method

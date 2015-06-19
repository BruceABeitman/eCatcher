.class public final Lcom/google/zxing/g/b/f;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/g/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:F


# direct methods
.method private constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/g/b/f;->a:F

    return-void
.end method

.method public synthetic constructor <init>(FB)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/zxing/g/b/f;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Lcom/google/zxing/g/b/d;

    check-cast p2, Lcom/google/zxing/g/b/d;

    iget v0, p2, Lcom/google/zxing/g/b/d;->d:I

    iget v1, p1, Lcom/google/zxing/g/b/d;->d:I

    if-ne v0, v1, :cond_2a

    iget v0, p2, Lcom/google/zxing/g/b/d;->c:F

    iget v1, p0, Lcom/google/zxing/g/b/f;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/google/zxing/g/b/d;->c:F

    iget v2, p0, Lcom/google/zxing/g/b/f;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    const/4 v0, 0x0

    goto :goto_21

    :cond_28
    const/4 v0, -0x1

    goto :goto_21

    :cond_2a
    iget v0, p2, Lcom/google/zxing/g/b/d;->d:I

    iget v1, p1, Lcom/google/zxing/g/b/d;->d:I

    sub-int/2addr v0, v1

    goto :goto_21
.end method

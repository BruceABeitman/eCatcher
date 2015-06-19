.class public final Lcom/google/zxing/g/b/h;
.super Ljava/lang/Object;
.source "FinderPatternInfo.java"


# instance fields
.field final a:Lcom/google/zxing/g/b/d;

.field final b:Lcom/google/zxing/g/b/d;

.field final c:Lcom/google/zxing/g/b/d;


# direct methods
.method public constructor <init>([Lcom/google/zxing/g/b/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/g/b/h;->a:Lcom/google/zxing/g/b/d;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/g/b/h;->b:Lcom/google/zxing/g/b/d;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/g/b/h;->c:Lcom/google/zxing/g/b/d;

    return-void
.end method

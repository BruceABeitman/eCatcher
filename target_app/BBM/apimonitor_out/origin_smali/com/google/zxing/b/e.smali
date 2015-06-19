.class public final Lcom/google/zxing/b/e;
.super Ljava/lang/Object;
.source "DecoderResult.java"


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/b/e;->a:[B

    iput-object p2, p0, Lcom/google/zxing/b/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/b/e;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/zxing/b/e;->d:Ljava/lang/String;

    return-void
.end method

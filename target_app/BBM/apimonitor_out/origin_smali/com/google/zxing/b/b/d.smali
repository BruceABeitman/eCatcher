.class public final Lcom/google/zxing/b/b/d;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field public final a:Lcom/google/zxing/b/b/a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/b/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/zxing/b/b/a;)V
    .registers 7

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/zxing/b/b/a;->e:Lcom/google/zxing/b/b/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only QR Code is supported at this time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lcom/google/zxing/b/b/d;->a:Lcom/google/zxing/b/b/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/b/b/d;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/google/zxing/b/b/d;->b:Ljava/util/List;

    new-instance v1, Lcom/google/zxing/b/b/b;

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-direct {v1, p1, v2}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/zxing/b/b/b;
    .registers 11

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/google/zxing/b/b/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_47

    iget-object v0, p0, Lcom/google/zxing/b/b/d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/zxing/b/b/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/b/b/b;

    iget-object v1, p0, Lcom/google/zxing/b/b/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_22
    if-gt v0, p1, :cond_47

    new-instance v2, Lcom/google/zxing/b/b/b;

    iget-object v3, p0, Lcom/google/zxing/b/b/d;->a:Lcom/google/zxing/b/b/a;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v7, v4, v5

    iget-object v5, p0, Lcom/google/zxing/b/b/d;->a:Lcom/google/zxing/b/b/a;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcom/google/zxing/b/b/a;->a(I)I

    move-result v5

    aput v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V

    invoke-virtual {v1, v2}, Lcom/google/zxing/b/b/b;->b(Lcom/google/zxing/b/b/b;)Lcom/google/zxing/b/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/b/b/d;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_47
    iget-object v0, p0, Lcom/google/zxing/b/b/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/b/b/b;

    return-object v0
.end method

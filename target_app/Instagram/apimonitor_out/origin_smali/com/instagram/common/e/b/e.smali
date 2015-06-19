.class public final Lcom/instagram/common/e/b/e;
.super Landroid/support/v4/c/c;
.source "CompressedBackedLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/c/c",
        "<TT;",
        "Lcom/instagram/common/e/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const/high16 v0, 0x1e0

    const/16 v1, 0x15e

    const/16 v2, 0x3c

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/c/c;-><init>(III)V

    return-void
.end method

.method private static a(Lcom/instagram/common/e/b/d;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/e/b/d;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/common/e/b/d;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final synthetic c(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/instagram/common/e/b/d;

    invoke-static {p1}, Lcom/instagram/common/e/b/e;->a(Lcom/instagram/common/e/b/d;)I

    move-result v0

    return v0
.end method

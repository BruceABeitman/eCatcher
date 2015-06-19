.class public final Lcom/instagram/creation/b/c/a/d;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/creation/b/c/a/d;->a:I

    iput p2, p0, Lcom/instagram/creation/b/c/a/d;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lcom/instagram/creation/b/c/a/d;->b:I

    iget v1, p0, Lcom/instagram/creation/b/c/a/d;->a:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

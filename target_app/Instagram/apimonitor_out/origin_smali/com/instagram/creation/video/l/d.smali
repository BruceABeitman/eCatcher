.class public final Lcom/instagram/creation/video/l/d;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/instagram/creation/video/l/d;->a:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/creation/video/l/d;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/l/d;->b:I

    return v0
.end method

.method public final a(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/l/d;->a:[I

    array-length v0, v0

    iget v1, p0, Lcom/instagram/creation/video/l/d;->b:I

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/instagram/creation/video/l/d;->b:I

    iget v1, p0, Lcom/instagram/creation/video/l/d;->b:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/instagram/creation/video/l/d;->a:[I

    iget v2, p0, Lcom/instagram/creation/video/l/d;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/instagram/creation/video/l/d;->a:[I

    :cond_18
    iget-object v0, p0, Lcom/instagram/creation/video/l/d;->a:[I

    iget v1, p0, Lcom/instagram/creation/video/l/d;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/instagram/creation/video/l/d;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public final b()[I
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/l/d;->a:[I

    return-object v0
.end method

.method public final c()V
    .registers 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/creation/video/l/d;->b:I

    iget-object v0, p0, Lcom/instagram/creation/video/l/d;->a:[I

    array-length v0, v0

    if-eq v0, v1, :cond_e

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/instagram/creation/video/l/d;->a:[I

    :cond_e
    return-void
.end method

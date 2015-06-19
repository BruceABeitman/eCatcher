.class public abstract Lcom/flurry/sdk/fd;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/flurry/sdk/fd;->a:I

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/flurry/sdk/fd;->a:I

    return v0
.end method

.method public j()V
    .registers 1

    return-void
.end method

.method public k()V
    .registers 1

    return-void
.end method

.method public l()V
    .registers 1

    return-void
.end method

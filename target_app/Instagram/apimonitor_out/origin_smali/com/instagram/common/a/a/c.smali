.class public Lcom/instagram/common/a/a/c;
.super Ljava/lang/Object;
.source "BaseResponse.java"

# interfaces
.implements Lcom/instagram/common/a/a/o;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/common/a/a/c;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/common/a/a/c;->a:I

    return-void
.end method

.method public f_()Z
    .registers 3

    iget v0, p0, Lcom/instagram/common/a/a/c;->a:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/instagram/common/a/a/c;->a:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

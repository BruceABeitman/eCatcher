.class public Lcom/instagram/common/a/a/b;
.super Ljava/lang/Object;
.source "ApiResponseV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/common/a/a/b;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/common/a/a/b;->b:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/common/a/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public m()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/common/a/a/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public n()Z
    .registers 3

    iget v0, p0, Lcom/instagram/common/a/a/b;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/instagram/common/a/a/b;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

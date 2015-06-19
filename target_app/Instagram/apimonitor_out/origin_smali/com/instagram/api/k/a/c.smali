.class public abstract Lcom/instagram/api/k/a/c;
.super Lcom/instagram/api/k/a/a;
.source "AbstractIgUnsignedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/k/a/a",
        "<TResponseType;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/instagram/common/a/c/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/api/k/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/k/a/c;->b:Lcom/instagram/common/a/c/b;

    if-nez v0, :cond_15

    new-instance v0, Lcom/instagram/common/a/c/b;

    invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/k/a/c;->b:Lcom/instagram/common/a/c/b;

    iget-object v0, p0, Lcom/instagram/api/k/a/c;->b:Lcom/instagram/common/a/c/b;

    invoke-static {v0, p0}, Lcom/instagram/api/i/a;->a(Lcom/instagram/common/a/c/d;Lcom/instagram/api/c/a;)V

    iget-object v0, p0, Lcom/instagram/api/k/a/c;->b:Lcom/instagram/common/a/c/b;

    invoke-virtual {p0, v0}, Lcom/instagram/api/k/a/c;->a(Lcom/instagram/common/a/c/b;)V

    :cond_15
    iget-object v0, p0, Lcom/instagram/api/k/a/c;->b:Lcom/instagram/common/a/c/b;

    return-object v0
.end method

.method protected abstract a(Lcom/instagram/common/a/c/b;)V
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

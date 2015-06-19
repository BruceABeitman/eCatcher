.class public abstract Lcom/instagram/api/k/a/b;
.super Lcom/instagram/api/k/a/a;
.source "AbstractIgSignedRequest.java"


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

    iget-object v0, p0, Lcom/instagram/api/k/a/b;->b:Lcom/instagram/common/a/c/b;

    if-nez v0, :cond_19

    new-instance v0, Lcom/instagram/api/b/a;

    invoke-direct {v0}, Lcom/instagram/api/b/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/instagram/api/k/a/b;->a(Lcom/instagram/api/b/a;)V

    invoke-static {v0, p0}, Lcom/instagram/api/i/a;->a(Lcom/instagram/common/a/c/d;Lcom/instagram/api/c/a;)V

    invoke-virtual {v0}, Lcom/instagram/api/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/i/b;->a(Ljava/lang/String;)Lcom/instagram/common/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/k/a/b;->b:Lcom/instagram/common/a/c/b;

    :cond_19
    iget-object v0, p0, Lcom/instagram/api/k/a/b;->b:Lcom/instagram/common/a/c/b;

    return-object v0
.end method

.method protected abstract a(Lcom/instagram/api/b/a;)V
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

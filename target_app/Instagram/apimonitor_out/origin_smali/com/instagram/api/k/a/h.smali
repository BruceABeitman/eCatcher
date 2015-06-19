.class public Lcom/instagram/api/k/a/h;
.super Lcom/instagram/common/a/a/l;
.source "IgRequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/common/a/a/l",
        "<",
        "Lcom/instagram/api/k/a/i",
        "<TResponseType;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/common/a/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instagram/api/k/a/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<TResponseType;>;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation

    return-void
.end method

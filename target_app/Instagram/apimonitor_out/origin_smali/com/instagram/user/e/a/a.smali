.class public abstract Lcom/instagram/user/e/a/a;
.super Lcom/instagram/ui/d/a;
.source "RequestedUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/ui/d/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/user/follow/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/instagram/user/e/a/a;->a:Lcom/instagram/user/follow/h;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/instagram/user/e/a/a;->a:Lcom/instagram/user/follow/h;

    invoke-static {p1, p3, v0}, Lcom/instagram/user/e/a/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/user/e/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/instagram/user/e/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroid/content/Context;I)V
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/user/e/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/instagram/user/e/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/user/e/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/instagram/user/e/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/instagram/user/e/a/a;->notifyDataSetChanged()V

    return-void
.end method

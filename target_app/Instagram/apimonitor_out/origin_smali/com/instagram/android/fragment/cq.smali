.class final Lcom/instagram/android/fragment/cq;
.super Ljava/lang/Object;
.source "LinkedAccountsFragment.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cn;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/cn;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/cq;->a:Lcom/instagram/android/fragment/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/cn;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/cq;-><init>(Lcom/instagram/android/fragment/cn;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    iget-object v0, p0, Lcom/instagram/android/fragment/cq;->a:Lcom/instagram/android/fragment/cn;

    iget-object v1, p0, Lcom/instagram/android/fragment/cq;->a:Lcom/instagram/android/fragment/cn;

    invoke-static {v1}, Lcom/instagram/android/fragment/cn;->b(Lcom/instagram/android/fragment/cn;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/cn;->a(Lcom/instagram/android/fragment/cn;Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .registers 2

    return-void
.end method

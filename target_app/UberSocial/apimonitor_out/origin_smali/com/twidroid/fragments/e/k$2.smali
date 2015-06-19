.class Lcom/twidroid/fragments/e/k$2;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/k;->B()V
.end annotation


# instance fields
.field final synthetic b:Lcom/twidroid/fragments/e/k;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/k;Lcom/twidroid/fragments/e/k;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/e/k$2;->b:Lcom/twidroid/fragments/e/k;

    invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/k$2;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .registers 3

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/e/k;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/k$2;->a(Lcom/twidroid/fragments/e/k;Ljava/util/List;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/k;Ljava/util/List;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/twidroid/fragments/e/k;->a(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/e/k;->b(Z)V

    :cond_10
    return-void
.end method

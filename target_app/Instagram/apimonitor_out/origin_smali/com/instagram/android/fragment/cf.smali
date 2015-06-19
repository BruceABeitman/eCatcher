.class final Lcom/instagram/android/fragment/cf;
.super Lcom/instagram/api/j/f;
.source "FollowDestinationFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/user/d/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cc;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cc;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/cf;->a:Lcom/instagram/android/fragment/cc;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/fragment/cf;->a:Lcom/instagram/android/fragment/cc;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cc;->d()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/a/m;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/cf;->a:Lcom/instagram/android/fragment/cc;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/cc;->a(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/fragment/cf;->a:Lcom/instagram/android/fragment/cc;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/cc;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/cf;->a:Lcom/instagram/android/fragment/cc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/cc;->a(Lcom/instagram/android/fragment/cc;Z)Z

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/cf;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/cf;->a:Lcom/instagram/android/fragment/cc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/cc;->a(Lcom/instagram/android/fragment/cc;Z)Z

    return-void
.end method

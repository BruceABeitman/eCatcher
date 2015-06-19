.class Lcom/instagram/android/l/c/u;
.super Lcom/instagram/api/j/f;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/j/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/instagram/android/l/c/a;


# direct methods
.method private constructor <init>(Lcom/instagram/android/l/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/c/u;->b:Lcom/instagram/android/l/c/a;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/l/c/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/l/c/u;-><init>(Lcom/instagram/android/l/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/l/c/u;->b:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/c/v;->a(Z)V

    iget-object v0, p0, Lcom/instagram/android/l/c/u;->b:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->o(Lcom/instagram/android/l/c/a;)V

    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/instagram/android/l/c/u;->b:Lcom/instagram/android/l/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/instagram/android/l/c/u;->b:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->p(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/f/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/l/f/a;->setFollowAllEnabled(Z)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/e;->c()V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/l/c/u;->b:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/c/v;->a(Z)V

    iget-object v0, p0, Lcom/instagram/android/l/c/u;->b:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->o(Lcom/instagram/android/l/c/a;)V

    return-void
.end method

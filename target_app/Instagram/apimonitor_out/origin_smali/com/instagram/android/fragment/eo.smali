.class final Lcom/instagram/android/fragment/eo;
.super Lcom/instagram/api/j/f;
.source "SearchUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Lcom/instagram/android/l/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/em;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/em;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/eo;->a:Lcom/instagram/android/fragment/em;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/l/b/e;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->a:Lcom/instagram/android/fragment/em;

    iget-object v0, v0, Lcom/instagram/android/fragment/em;->b:Lcom/instagram/android/l/a/a;

    invoke-virtual {p1}, Lcom/instagram/android/l/b/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/a;->e(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->a:Lcom/instagram/android/fragment/em;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/em;->Y()V

    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->a:Lcom/instagram/android/fragment/em;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/em;->Z()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->a:Lcom/instagram/android/fragment/em;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/em;->a:Z

    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->a:Lcom/instagram/android/fragment/em;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/em;->c(Z)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/android/l/b/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/eo;->a(Lcom/instagram/android/l/b/e;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->a:Lcom/instagram/android/fragment/em;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/em;->a:Z

    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->a:Lcom/instagram/android/fragment/em;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/em;->c(Z)V

    return-void
.end method

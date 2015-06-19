.class final Lcom/instagram/android/people/b/j;
.super Lcom/instagram/api/j/f;
.source "PeopleTagSearchFragment.java"


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
.field final synthetic a:Lcom/instagram/android/people/b/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/l/b/e;)V
    .registers 6

    invoke-virtual {p1}, Lcom/instagram/android/l/b/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    iget-object v3, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v3}, Lcom/instagram/android/people/b/h;->f(Lcom/instagram/android/people/b/h;)Lcom/instagram/model/people/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/model/people/b;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_24
    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->b(Lcom/instagram/android/people/b/h;)Lcom/instagram/android/people/widget/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/d;->e(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->g(Lcom/instagram/android/people/b/h;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/android/people/b/h;->a:Z

    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->h(Lcom/instagram/android/people/b/h;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/android/l/b/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/people/b/j;->a(Lcom/instagram/android/l/b/e;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/people/b/h;->a(Lcom/instagram/android/people/b/h;Z)Z

    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/instagram/android/people/b/h;->a:Z

    iget-object v0, p0, Lcom/instagram/android/people/b/j;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->e(Lcom/instagram/android/people/b/h;)V

    return-void
.end method

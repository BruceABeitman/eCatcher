.class final Lcom/instagram/android/fragment/el;
.super Lcom/instagram/api/j/f;
.source "SearchTagsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/h/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ek;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ek;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/el;->a:Lcom/instagram/android/fragment/ek;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/h/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/fragment/el;->a:Lcom/instagram/android/fragment/ek;

    invoke-static {v0}, Lcom/instagram/android/fragment/ek;->a(Lcom/instagram/android/fragment/ek;)Lcom/instagram/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/a/b;->e(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/el;->a:Lcom/instagram/android/fragment/ek;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ek;->Y()V

    iget-object v0, p0, Lcom/instagram/android/fragment/el;->a:Lcom/instagram/android/fragment/ek;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ek;->Z()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/instagram/android/fragment/el;->a:Lcom/instagram/android/fragment/ek;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/ek;->a:Z

    iget-object v0, p0, Lcom/instagram/android/fragment/el;->a:Lcom/instagram/android/fragment/ek;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ek;->c(Z)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/el;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/el;->a:Lcom/instagram/android/fragment/ek;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/ek;->a:Z

    iget-object v0, p0, Lcom/instagram/android/fragment/el;->a:Lcom/instagram/android/fragment/ek;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ek;->c(Z)V

    return-void
.end method

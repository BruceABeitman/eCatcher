.class final Lcom/instagram/android/fragment/fi;
.super Lcom/instagram/api/j/f;
.source "UserDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fb;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/fb;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/fb;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fi;-><init>(Lcom/instagram/android/fragment/fb;)V

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    iput-object p1, v1, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    sget v2, Lcom/instagram/api/j/k;->b:I

    invoke-static {v1, v2}, Lcom/instagram/android/fragment/fb;->a(Lcom/instagram/android/fragment/fb;I)I

    iget-object v1, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-static {v2}, Lcom/instagram/android/fragment/fb;->c(Lcom/instagram/android/fragment/fb;)V

    iget-object v2, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    iget-object v3, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-static {v3}, Lcom/instagram/android/fragment/fb;->b(Lcom/instagram/android/fragment/fb;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/fragment/fb;->a(Lcom/instagram/android/fragment/fb;Ljava/lang/String;)V

    if-eqz v1, :cond_3c

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/fb;->c(Z)V

    :cond_3c
    iget-object v0, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->ao()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/fb;->a(Lcom/instagram/android/fragment/fb;I)I

    iget-object v0, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Ljava/lang/Object;)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    iget-object v1, p0, Lcom/instagram/android/fragment/fi;->a:Lcom/instagram/android/fragment/fb;

    invoke-static {v1}, Lcom/instagram/android/fragment/fb;->d(Lcom/instagram/android/fragment/fb;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->h(I)V

    goto :goto_1c
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/user/c/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fi;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

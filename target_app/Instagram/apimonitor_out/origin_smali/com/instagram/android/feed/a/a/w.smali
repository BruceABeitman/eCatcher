.class final Lcom/instagram/android/feed/a/a/w;
.super Lcom/instagram/api/k/a/h;
.source "MediaOptionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/h",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/u;

.field private final b:Lcom/instagram/feed/d/l;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/a/a/u;Lcom/instagram/feed/d/l;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/w;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V

    iput-object p2, p0, Lcom/instagram/android/feed/a/a/w;->b:Lcom/instagram/feed/d/l;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/u;Lcom/instagram/feed/d/l;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a/w;-><init>(Lcom/instagram/android/feed/a/a/u;Lcom/instagram/feed/d/l;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/w;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(I)V

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/w;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(Z)V

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/w;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->r()V

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->D()V

    return-void
.end method

.method public final a(Lcom/instagram/api/k/a/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/w;->b:Lcom/instagram/feed/d/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(I)V

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/w;->b:Lcom/instagram/feed/d/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(Z)V

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/w;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->q()V

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->D()V

    return-void
.end method

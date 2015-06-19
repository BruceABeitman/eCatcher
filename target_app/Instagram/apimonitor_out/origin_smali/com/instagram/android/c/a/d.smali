.class public final Lcom/instagram/android/c/a/d;
.super Lcom/instagram/api/j/g;
.source "HashtagSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/h/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/android/util/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/f",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/h/c;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    new-instance v0, Lcom/instagram/android/util/g;

    invoke-direct {v0}, Lcom/instagram/android/util/g;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/c/a/d;->a:Lcom/instagram/android/util/g;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/c/a/d;->a:Lcom/instagram/android/util/g;

    invoke-virtual {v0, p1}, Lcom/instagram/android/util/g;->a(Lcom/instagram/common/a/c/b;)Lcom/instagram/common/a/c/b;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/c/a/d;->a:Lcom/instagram/android/util/g;

    invoke-virtual {v0}, Lcom/instagram/android/util/g;->a()V

    iget-object v0, p0, Lcom/instagram/android/c/a/d;->a:Lcom/instagram/android/util/g;

    invoke-virtual {v0, p1}, Lcom/instagram/android/util/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/android/c/a/d;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/q",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/h/c;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "results"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_22

    invoke-static {p2}, Lcom/instagram/android/h/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/h/c;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_22
    invoke-virtual {p3, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "tags/search/"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final e()Lcom/instagram/android/util/g;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/c/a/d;->a:Lcom/instagram/android/util/g;

    return-object v0
.end method

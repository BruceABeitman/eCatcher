.class final Lcom/instagram/android/h/a/c;
.super Ljava/lang/Object;
.source "MediaIterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/instagram/android/h/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/h/a/a;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/h/a/c;->b:Lcom/instagram/android/h/a/a;

    iput-object p2, p0, Lcom/instagram/android/h/a/c;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/instagram/user/c/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/a/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/b/a;

    invoke-virtual {v0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/a/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/h/a/c;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "cannot modify via this iterator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

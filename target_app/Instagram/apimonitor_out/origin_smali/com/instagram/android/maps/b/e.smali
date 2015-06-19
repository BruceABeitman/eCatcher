.class final Lcom/instagram/android/maps/b/e;
.super Ljava/lang/Object;
.source "Quadtree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/android/maps/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/b/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/b/e;->a:Lcom/instagram/android/maps/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/b/f;)I
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    invoke-virtual {p0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_28

    const/4 v0, -0x1

    goto :goto_13

    :cond_28
    const/4 v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/instagram/android/maps/b/f;

    check-cast p2, Lcom/instagram/android/maps/b/f;

    invoke-static {p1, p2}, Lcom/instagram/android/maps/b/e;->a(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/b/f;)I

    move-result v0

    return v0
.end method

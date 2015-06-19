.class final Lcom/instagram/android/maps/b/g;
.super Ljava/lang/Object;
.source "QuadtreeCluster.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/android/maps/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/b/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/b/g;->a:Lcom/instagram/android/maps/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/b/h;->b(Lcom/instagram/android/maps/b/h;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/instagram/android/maps/b/h;

    check-cast p2, Lcom/instagram/android/maps/b/h;

    invoke-static {p1, p2}, Lcom/instagram/android/maps/b/g;->a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)I

    move-result v0

    return v0
.end method

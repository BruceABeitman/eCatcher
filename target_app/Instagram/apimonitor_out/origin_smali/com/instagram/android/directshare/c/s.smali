.class final Lcom/instagram/android/directshare/c/s;
.super Ljava/lang/Object;
.source "InboxStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/feed/d/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/r;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/r;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/c/s;->a:Lcom/instagram/android/directshare/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/d/l;)I
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->k()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->k()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/instagram/feed/d/l;

    check-cast p2, Lcom/instagram/feed/d/l;

    invoke-static {p1, p2}, Lcom/instagram/android/directshare/c/s;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/d/l;)I

    move-result v0

    return v0
.end method

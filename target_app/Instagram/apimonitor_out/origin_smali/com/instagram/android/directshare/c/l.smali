.class final Lcom/instagram/android/directshare/c/l;
.super Lcom/instagram/api/j/a;
.source "InboxFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/f/c/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/c/l;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/c/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/l;-><init>(Lcom/instagram/android/directshare/c/c;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/instagram/android/directshare/c/v;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/l;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {}, Lcom/instagram/android/directshare/c/v;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/l;->a(Ljava/util/List;)V

    return-void
.end method

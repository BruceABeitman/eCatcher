.class final Lcom/instagram/android/directshare/f/b;
.super Lcom/instagram/api/k/a/h;
.source "ClearInboxNewCountUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/h",
        "<",
        "Lcom/instagram/f/a/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/f/a;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/instagram/android/directshare/f/a;J)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/directshare/f/b;->a:Lcom/instagram/android/directshare/f/a;

    invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V

    iput-wide p2, p0, Lcom/instagram/android/directshare/f/b;->b:J

    return-void
.end method

.method private a(Lcom/instagram/f/a/a/e;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/instagram/f/a/a/e;->a()Lcom/instagram/f/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Lcom/instagram/f/b/a;)V

    return-void
.end method

.method private b(Lcom/instagram/api/k/a/i;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Lcom/instagram/f/a/a/e;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/f/b;->a:Lcom/instagram/android/directshare/f/a;

    invoke-static {v0}, Lcom/instagram/android/directshare/f/a;->a(Lcom/instagram/android/directshare/f/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/instagram/android/directshare/f/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V

    iget-wide v0, p0, Lcom/instagram/android/directshare/f/b;->b:J

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/f/c;->a(J)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/f/a/a/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/f/b;->a(Lcom/instagram/f/a/a/e;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/api/k/a/i;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/f/b;->b(Lcom/instagram/api/k/a/i;)V

    return-void
.end method

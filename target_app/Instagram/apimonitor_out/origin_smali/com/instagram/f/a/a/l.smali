.class public final Lcom/instagram/f/a/a/l;
.super Lcom/instagram/api/k/a/c;
.source "FetchInboxRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/f/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/instagram/feed/f/a;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/f/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    iput-object p1, p0, Lcom/instagram/f/a/a/l;->b:Lcom/instagram/feed/f/a;

    return-void
.end method

.method private static h()Lcom/instagram/api/k/a/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/k/a/k",
            "<",
            "Lcom/instagram/f/a/b/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/f/a/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/f/a/a/m;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/f/a/a/l;->b:Lcom/instagram/feed/f/a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/f/a/a/l;->b:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/feed/f/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/f/a/a/l;->b:Lcom/instagram/feed/f/a;

    invoke-virtual {v1}, Lcom/instagram/feed/f/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final synthetic d()Lcom/instagram/common/a/a/p;
    .registers 2

    invoke-static {}, Lcom/instagram/f/a/a/l;->h()Lcom/instagram/api/k/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected final d_()Ljava/lang/String;
    .registers 2

    const-string v0, "direct_share/inbox/"

    return-object v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

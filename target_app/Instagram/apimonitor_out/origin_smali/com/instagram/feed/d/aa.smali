.class final Lcom/instagram/feed/d/aa;
.super Lcom/instagram/api/j/b;
.source "SeenDirectShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/feed/d/l;

.field private b:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V
    .registers 6

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput-object p3, p0, Lcom/instagram/feed/d/aa;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->am()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/feed/d/aa;->b:J

    return-void
.end method

.method private o()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/feed/d/ab;->a()Lcom/instagram/feed/d/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ab;->a(Lcom/instagram/feed/d/aa;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/feed/d/ab;->a()Lcom/instagram/feed/d/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ab;->b(Lcom/instagram/feed/d/aa;)V

    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 5

    const-string v0, "seen_up_to"

    iget-wide v1, p0, Lcom/instagram/feed/d/aa;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/feed/d/aa;->o()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 5

    const-string v0, "direct_share/%s/seen/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/feed/d/aa;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final g()Lcom/instagram/feed/d/l;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/d/aa;->a:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method final n()J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/feed/d/aa;->b:J

    return-wide v0
.end method

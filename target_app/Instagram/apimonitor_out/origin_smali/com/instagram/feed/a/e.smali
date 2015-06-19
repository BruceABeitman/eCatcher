.class public final Lcom/instagram/feed/a/e;
.super Lcom/instagram/feed/a/a;
.source "UserMediaFeedRequest.java"


# instance fields
.field private a:Lcom/instagram/user/c/a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;Lcom/instagram/user/c/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Lcom/instagram/feed/g/a;",
            "Lcom/instagram/feed/f/a;",
            "I",
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/feed/a/b;",
            ">;",
            "Lcom/instagram/user/c/a;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/instagram/feed/a/a;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V

    iput-object p6, p0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/user/c/a;

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .registers 5

    const-string v0, "feed/user/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

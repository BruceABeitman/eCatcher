.class public final Lcom/instagram/android/feed/a/a/a;
.super Lcom/instagram/api/k/a/b;
.source "DeleteMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/instagram/feed/d/l;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/d/l;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/a;->b:Lcom/instagram/feed/d/l;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/b/a;)V
    .registers 4

    const-string v0, "media_id"

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/a;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final d_()Ljava/lang/String;
    .registers 5

    const-string v0, "media/%s/delete/?media_type=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/a;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/a;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

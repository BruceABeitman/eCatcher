.class public final Lcom/instagram/android/feed/b/a/a;
.super Lcom/instagram/api/k/a/c;
.source "FeedAYSFUserDismissRequest.java"


# instance fields
.field private b:Lcom/instagram/user/d/a;


# direct methods
.method public constructor <init>(Lcom/instagram/user/d/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/feed/b/a/a;->b:Lcom/instagram/user/d/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "algorithm"

    iget-object v1, p0, Lcom/instagram/android/feed/b/a/a;->b:Lcom/instagram/user/d/a;

    invoke-virtual {v1}, Lcom/instagram/user/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "target_id"

    iget-object v1, p0, Lcom/instagram/android/feed/b/a/a;->b:Lcom/instagram/user/d/a;

    invoke-virtual {v1}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .registers 2

    const-string v0, "discover/aysf_dismiss/"

    return-object v0
.end method

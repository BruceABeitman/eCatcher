.class public final Lcom/instagram/i/b/a/b;
.super Lcom/instagram/api/k/a/c;
.source "NewsfeedYouRequest.java"

# interfaces
.implements Lcom/instagram/api/k/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/i/d/o;",
        ">;",
        "Lcom/instagram/api/k/a/d",
        "<",
        "Lcom/instagram/i/d/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/instagram/feed/f/a;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/f/a;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/i/b/a/b;->b:Lcom/instagram/feed/f/a;

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/o;
    .registers 2

    invoke-static {p0}, Lcom/instagram/i/d/r;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;
    .registers 3

    invoke-static {p1}, Lcom/instagram/i/b/a/b;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/o;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/i/b/a/b;->b:Lcom/instagram/feed/f/a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/i/b/a/b;->b:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/feed/f/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/i/b/a/b;->b:Lcom/instagram/feed/f/a;

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

.method protected final d_()Ljava/lang/String;
    .registers 2

    const-string v0, "news/inbox/"

    return-object v0
.end method

.class final Lcom/bbm/ui/a/aa;
.super Ljava/lang/Object;
.source "UpdatesAdapter.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Lcom/bbm/ui/a/z;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/z;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/aa;->a:Lcom/bbm/ui/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 4

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recentChannelPosts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "UpdatesAdapter: listChange on recentChannelPosts"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/a/aa;->a:Lcom/bbm/ui/a/z;

    invoke-static {v0}, Lcom/bbm/ui/a/z;->a(Lcom/bbm/ui/a/z;)Z

    :cond_27
    return-void
.end method

.class final Lcom/instagram/common/c/e;
.super Lcom/instagram/common/c/i;
.source "BaseIgBroadcastManager.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/c/b;

.field final synthetic b:Lcom/instagram/common/c/d;


# direct methods
.method constructor <init>(Lcom/instagram/common/c/d;Ljava/util/Map;Lcom/instagram/common/c/b;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/common/c/e;->b:Lcom/instagram/common/c/d;

    iput-object p3, p0, Lcom/instagram/common/c/e;->a:Lcom/instagram/common/c/b;

    invoke-direct {p0, p2}, Lcom/instagram/common/c/i;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/c/e;->b:Lcom/instagram/common/c/d;

    invoke-virtual {v0}, Lcom/instagram/common/c/d;->a()Z

    move-result v0

    return v0
.end method

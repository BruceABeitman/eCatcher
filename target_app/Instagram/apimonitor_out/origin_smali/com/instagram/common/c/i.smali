.class public abstract Lcom/instagram/common/c/i;
.super Landroid/content/BroadcastReceiver;
.source "IgBroadcastReceiver.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/common/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/instagram/common/c/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    const-string v1, "Must include an entry for at least one action"

    invoke-static {v0, v1}, Lcom/instagram/common/i/a/f;->b(ZLjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/instagram/common/c/i;->a:Ljava/util/Map;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(Landroid/content/Intent;)Lcom/instagram/common/i/a/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/instagram/common/i/a/e",
            "<",
            "Lcom/instagram/common/c/a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/instagram/common/c/i;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/c/a;

    :cond_f
    invoke-static {v0}, Lcom/instagram/common/i/a/e;->a(Ljava/lang/Object;)Lcom/instagram/common/i/a/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Lcom/instagram/common/c/i;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rejected the intent for the receiver because it was not registered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method public final b()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/common/c/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/common/c/i;->a()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0, p2}, Lcom/instagram/common/c/i;->a(Landroid/content/Intent;)Lcom/instagram/common/i/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/i/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/instagram/common/i/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/c/a;

    invoke-interface {v0, p2}, Lcom/instagram/common/c/a;->a(Landroid/content/Intent;)V

    goto :goto_6

    :cond_1b
    invoke-direct {p0, p2}, Lcom/instagram/common/c/i;->b(Landroid/content/Intent;)V

    goto :goto_6
.end method

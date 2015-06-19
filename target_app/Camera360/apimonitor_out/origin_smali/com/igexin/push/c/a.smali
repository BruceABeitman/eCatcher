.class public Lcom/igexin/push/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/d/a/b;


# instance fields
.field public a:Landroid/net/ConnectivityManager;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/igexin/push/c/a;->a:Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/igexin/push/c/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;Lcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/f;
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "socket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/igexin/push/c/a;->a:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lcom/igexin/push/c/a;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/igexin/a/a/b/a/a/g;

    invoke-direct {v0, p1, p3}, Lcom/igexin/a/a/b/a/a/g;-><init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V

    goto :goto_e

    :cond_23
    const-string/jumbo v1, "disConnect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/igexin/a/a/b/a/a/c;

    invoke-direct {v0, p1}, Lcom/igexin/a/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/igexin/a/a/d/d;
    .registers 5

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/igexin/a/a/b/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/c/a;->a(Ljava/lang/String;Ljava/lang/Integer;Lcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/f;

    move-result-object v0

    return-object v0
.end method

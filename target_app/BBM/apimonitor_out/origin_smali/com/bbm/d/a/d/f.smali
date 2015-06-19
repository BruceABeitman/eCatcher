.class public final Lcom/bbm/d/a/d/f;
.super Lcom/bbm/util/ez;
.source "BbmdsStreamManager.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bbm/d/a/d/c;


# direct methods
.method public constructor <init>(Lcom/bbm/d/a/d/c;Landroid/content/Context;Lcom/bbm/util/cr;ZLjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/d/a/d/f;->c:Lcom/bbm/d/a/d/c;

    iput-boolean p4, p0, Lcom/bbm/d/a/d/f;->a:Z

    iput-object p5, p0, Lcom/bbm/d/a/d/f;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/bbm/util/ez;-><init>(Landroid/content/Context;Lcom/bbm/util/cr;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/bbm/d/fd;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/bbm/util/ez;->a(Lcom/bbm/d/fd;)V

    iget-boolean v0, p0, Lcom/bbm/d/a/d/f;->a:Z

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/bbm/d/a/d/f;->c:Lcom/bbm/d/a/d/c;

    iget-object v1, p0, Lcom/bbm/d/a/d/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bbm/d/fd;->c()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/d/c;->a(Ljava/lang/String;[B)V

    :cond_14
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/bbm/d/fd;

    invoke-virtual {p0, p1}, Lcom/bbm/d/a/d/f;->a(Lcom/bbm/d/fd;)V

    return-void
.end method

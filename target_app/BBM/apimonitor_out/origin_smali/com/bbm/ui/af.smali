.class final Lcom/bbm/ui/af;
.super Lcom/bbm/j/a;
.source "ChatHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/ae;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/af;->a:Lcom/bbm/ui/ae;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/af;->a:Lcom/bbm/ui/ae;

    invoke-static {v1}, Lcom/bbm/ui/ae;->a(Lcom/bbm/ui/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_20

    iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1f
    return-object v0

    :cond_20
    const-string v0, ""

    goto :goto_1f
.end method

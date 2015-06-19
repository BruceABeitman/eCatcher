.class final Lcom/bbm/b/i;
.super Ljava/lang/Object;
.source "AdUtils.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Lcom/bbm/b/a;

.field final synthetic b:Lcom/bbm/ui/c/fm;

.field final synthetic c:Lcom/bbm/ui/slidingmenu/a;

.field final synthetic d:Lcom/bbm/ui/slidingmenu/a;


# direct methods
.method constructor <init>(Lcom/bbm/b/a;Lcom/bbm/ui/c/fm;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/b/i;->a:Lcom/bbm/b/a;

    iput-object p2, p0, Lcom/bbm/b/i;->b:Lcom/bbm/ui/c/fm;

    iput-object p3, p0, Lcom/bbm/b/i;->c:Lcom/bbm/ui/slidingmenu/a;

    iput-object p4, p0, Lcom/bbm/b/i;->d:Lcom/bbm/ui/slidingmenu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/b/i;->a:Lcom/bbm/b/a;

    iget-object v3, v3, Lcom/bbm/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/d/a;->C(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/b/i;->b:Lcom/bbm/ui/c/fm;

    iget-object v3, v3, Lcom/bbm/ui/c/fm;->a:Lcom/bbm/ui/slidingmenu/a;

    iget-object v4, p0, Lcom/bbm/b/i;->c:Lcom/bbm/ui/slidingmenu/a;

    if-eq v3, v4, :cond_17

    :goto_16
    return v0

    :cond_17
    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Lcom/bbm/b/i;->d:Lcom/bbm/ui/slidingmenu/a;

    invoke-virtual {v2, v0}, Lcom/bbm/ui/slidingmenu/a;->e(Z)V

    move v0, v1

    goto :goto_16

    :cond_22
    sget-object v3, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v2, v3, :cond_2c

    iget-object v1, p0, Lcom/bbm/b/i;->d:Lcom/bbm/ui/slidingmenu/a;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/slidingmenu/a;->e(Z)V

    goto :goto_16

    :cond_2c
    iget-object v2, p0, Lcom/bbm/b/i;->d:Lcom/bbm/ui/slidingmenu/a;

    invoke-virtual {v2, v1}, Lcom/bbm/ui/slidingmenu/a;->e(Z)V

    goto :goto_16
.end method

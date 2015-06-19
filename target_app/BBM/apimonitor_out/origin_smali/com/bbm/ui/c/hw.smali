.class final Lcom/bbm/ui/c/hw;
.super Lcom/bbm/d/b/f;
.source "UpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/util/ew;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hw;->a:Lcom/bbm/ui/c/hk;

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/util/ew;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v2}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    return-object v0

    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/bbm/ui/c/hw;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->b(Ljava/util/ArrayList;)Z

    move-result v2

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;

    move-result-object v3

    sget-object v4, Lcom/bbm/util/ay;->c:Lcom/bbm/util/ay;

    if-ne v3, v4, :cond_46

    new-instance v3, Lcom/bbm/util/ew;

    invoke-direct {v3}, Lcom/bbm/util/ew;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v3

    const-string v4, "adsEnabled"

    invoke-virtual {v3, v4}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v4, "value"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_78

    if-nez v2, :cond_64

    iget-object v2, p0, Lcom/bbm/ui/c/hw;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->c(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_64
    const/4 v0, 0x1

    :cond_65
    :goto_65
    if-eqz v0, :cond_6d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_26

    :cond_6d
    iget-object v0, p0, Lcom/bbm/ui/c/hw;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    goto :goto_26

    :cond_78
    move v0, v2

    goto :goto_65
.end method

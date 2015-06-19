.class public Lcom/bbm/ui/c/j;
.super Lcom/bbm/ui/c/a;
.source "BlockedUpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/c/a",
        "<",
        "Lcom/bbm/d/a/a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field d:Lcom/bbm/g/am;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/c/a;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/j;->d:Lcom/bbm/g/am;

    return-void
.end method


# virtual methods
.method final a()Lcom/bbm/j/r;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/a/a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/ui/c/k;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/k;-><init>(Lcom/bbm/ui/c/j;)V

    return-object v0
.end method

.method final a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v1, "Delete Blocked updates"

    const-class v2, Lcom/bbm/ui/c/j;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    :try_start_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/a/a;

    instance-of v2, v1, Lcom/bbm/d/gs;

    if-eqz v2, :cond_61

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "userUri"

    move-object v0, v1

    check-cast v0, Lcom/bbm/d/gs;

    move-object v2, v0

    iget-object v2, v2, Lcom/bbm/d/gs;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "type"

    move-object v0, v1

    check-cast v0, Lcom/bbm/d/gs;

    move-object v2, v0

    iget-object v2, v2, Lcom/bbm/d/gs;->a:Lcom/bbm/d/gt;

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "typeUri"

    check-cast v1, Lcom/bbm/d/gs;

    iget-object v1, v1, Lcom/bbm/d/gs;->b:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_4c} :catch_4d

    goto :goto_15

    :catch_4d
    move-exception v1

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    invoke-virtual {p0}, Lcom/bbm/ui/c/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0762

    invoke-virtual {p0, v2}, Lcom/bbm/ui/c/j;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_61
    :try_start_61
    instance-of v2, v1, Lcom/bbm/g/a;

    if-eqz v2, :cond_15

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "uri"

    check-cast v1, Lcom/bbm/g/a;

    iget-object v1, v1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ignoreUpdatesForThisGroup"

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_7d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8e

    iget-object v1, p0, Lcom/bbm/ui/c/j;->a:Lcom/bbm/d/a;

    const-string v2, "userBlockedItem"

    invoke-static {v3, v2}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :cond_8e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/bbm/ui/c/j;->d:Lcom/bbm/g/am;

    const-string v2, "group"

    invoke-static {v4, v2}, Lcom/bbm/g/an;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_9f} :catch_4d

    goto :goto_51
.end method

.method final synthetic c(Ljava/lang/Object;)Lcom/bbm/d/a/a;
    .registers 4

    check-cast p1, Lcom/bbm/d/a/a;

    instance-of v0, p1, Lcom/bbm/d/gs;

    if-eqz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/bbm/ui/c/j;->d:Lcom/bbm/g/am;

    check-cast p1, Lcom/bbm/g/a;

    iget-object v1, p1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object p1

    goto :goto_6
.end method

.method final synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/bbm/d/a/a;

    instance-of v0, p1, Lcom/bbm/d/gs;

    if-eqz v0, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/bbm/d/gs;

    iget-object v0, v0, Lcom/bbm/d/gs;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/bbm/d/gs;

    iget-object v1, p1, Lcom/bbm/d/gs;->a:Lcom/bbm/d/gt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    check-cast p1, Lcom/bbm/g/a;

    iget-object v0, p1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    goto :goto_20
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/c/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const-string v0, "onCreateView"

    const-class v2, Lcom/bbm/ui/c/j;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const v0, 0x7f0a0372

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e0527

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v1
.end method

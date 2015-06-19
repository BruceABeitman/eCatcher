.class public abstract Lcom/mapquest/android/maps/ag;
.super Landroid/app/Activity;
.source "MapActivity.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapquest/android/maps/MapView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ag;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapquest/android/maps/MapView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mapquest/android/maps/ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .registers 3

    invoke-direct {p0}, Lcom/mapquest/android/maps/ag;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->e()V

    goto :goto_8

    :cond_1a
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-direct {p0}, Lcom/mapquest/android/maps/ag;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->onPause()V

    goto :goto_8

    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-direct {p0}, Lcom/mapquest/android/maps/ag;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->onResume()V

    goto :goto_8

    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .registers 4

    invoke-direct {p0}, Lcom/mapquest/android/maps/ag;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    iget-object v2, v0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;

    sget-object v2, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/mapquest/android/maps/x;->a()V

    goto :goto_8

    :cond_26
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

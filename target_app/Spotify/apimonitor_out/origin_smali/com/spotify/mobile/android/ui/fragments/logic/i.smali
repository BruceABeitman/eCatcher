.class public final Lcom/spotify/mobile/android/ui/fragments/logic/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/logic/Flag",
            "<*",
            "Lcom/spotify/mobile/android/ui/fragments/logic/f;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ac:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/fragments/logic/Flag",
            "<**>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->b()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    check-cast p0, Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a(Ljava/io/Serializable;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    check-cast p0, Lcom/spotify/mobile/android/ui/fragments/logic/x;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/x;->a(Ljava/io/Serializable;)V

    goto :goto_16

    :cond_27
    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    check-cast p0, Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->a(Ljava/io/Serializable;)V

    goto :goto_16
.end method

.method public static a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/fragments/logic/Flag",
            "<**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ae:Ljava/util/Set;

    return-object v0
.end method

.method public static c()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/logic/Flag",
            "<*",
            "Lcom/spotify/mobile/android/ui/fragments/logic/s;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ad:Ljava/util/List;

    return-object v0
.end method

.method public static d()V
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ag:Ljava/util/Collection;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;->b:Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static e()V
    .registers 2

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ag:Ljava/util/Collection;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;->a:Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

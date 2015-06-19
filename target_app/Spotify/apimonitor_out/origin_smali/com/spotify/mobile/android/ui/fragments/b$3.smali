.class final Lcom/spotify/mobile/android/ui/fragments/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/b;->v_()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;",
            "Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/b;->q()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/b;->c(Lcom/spotify/mobile/android/ui/fragments/b;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez p1, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/b;->e(Lcom/spotify/mobile/android/ui/fragments/b;)Lcom/spotify/mobile/android/ui/adapter/f;

    move-result-object v2

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/b;->d(Lcom/spotify/mobile/android/ui/fragments/b;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/spotify/mobile/android/ui/adapter/f;->a(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/b;->d(Lcom/spotify/mobile/android/ui/fragments/b;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;I)I

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/b;->f(Lcom/spotify/mobile/android/ui/fragments/b;)I

    move-result v2

    if-le v2, v0, :cond_8b

    :goto_44
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/b;->g(Lcom/spotify/mobile/android/ui/fragments/b;)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_8d

    move v2, v3

    :goto_4d
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/b;->h(Lcom/spotify/mobile/android/ui/fragments/b;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v0, :cond_8f

    move v2, v1

    :goto_59
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/b;->i(Lcom/spotify/mobile/android/ui/fragments/b;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_91

    :goto_64
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/b;->d(Lcom/spotify/mobile/android/ui/fragments/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/b;->j(Lcom/spotify/mobile/android/ui/fragments/b;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/b;->f(Lcom/spotify/mobile/android/ui/fragments/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/b;->b(Lcom/spotify/mobile/android/ui/fragments/b;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$3;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/b;->k(Lcom/spotify/mobile/android/ui/fragments/b;)Z

    goto :goto_16

    :cond_8b
    move v0, v1

    goto :goto_44

    :cond_8d
    move v2, v1

    goto :goto_4d

    :cond_8f
    move v2, v3

    goto :goto_59

    :cond_91
    move v1, v3

    goto :goto_64
.end method

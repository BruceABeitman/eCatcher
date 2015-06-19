.class final Lcom/spotify/mobile/android/ui/fragments/p$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/p;->v_()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V
    .registers 7
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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->q()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->c(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->b(Lcom/spotify/mobile/android/ui/fragments/p;I)I

    :cond_1c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    move-result-object v0

    invoke-static {p2}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->a:[I

    invoke-virtual {p2}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_88

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->i:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setVisibility(I)V

    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->e(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->f(Lcom/spotify/mobile/android/ui/fragments/p;)I

    move-result v2

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/view/ConnectIconView;ILcom/spotify/mobile/android/util/ClientEvent$Event;)V

    :cond_76
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->g(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    goto :goto_10

    :pswitch_7c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$15;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setVisibility(I)V

    goto :goto_4b

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
    .end packed-switch
.end method

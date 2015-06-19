.class final Lcom/instagram/android/maps/e;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/e/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/e;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "PhotoMapsActivity"

    const-string v2, "MODE CHANGE!"

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_55

    iget-object v1, p0, Lcom/instagram/android/maps/e;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/instagram/android/maps/e;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/instagram/android/maps/ui/ag;

    if-nez v1, :cond_3e

    :cond_2c
    iget-object v1, p0, Lcom/instagram/android/maps/e;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/ui/ag;

    invoke-direct {v2}, Lcom/instagram/android/maps/ui/ag;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/instagram/android/maps/e;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    sget v2, Lcom/facebook/av;->action_bar_shadow:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_4a

    const/16 v0, 0x8

    :cond_4a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/e;->c()V

    return-void

    :cond_55
    iget-object v1, p0, Lcom/instagram/android/maps/e;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3e

    iget-object v1, p0, Lcom/instagram/android/maps/e;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/instagram/android/maps/ui/ag;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/instagram/android/maps/e;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3e
.end method

.class final Lcom/instagram/android/creation/h;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    invoke-virtual {v0}, Lcom/instagram/android/InstagramApplication;->a()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    iget-object v2, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-static {v2}, Lcom/instagram/android/creation/d;->f(Lcom/instagram/android/creation/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;Landroid/location/Location;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/d;->u()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/instagram/android/creation/h;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0}, Lcom/instagram/android/creation/d;->g(Lcom/instagram/android/creation/d;)V

    goto :goto_23
.end method

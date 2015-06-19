.class final Lcom/instagram/android/maps/v;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/l;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/v;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/v;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/maps/v;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->b()V

    :cond_11
    return-void
.end method

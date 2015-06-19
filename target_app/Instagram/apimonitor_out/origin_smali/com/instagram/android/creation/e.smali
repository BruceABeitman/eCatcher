.class final Lcom/instagram/android/creation/e;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/e;->a:Lcom/instagram/android/creation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Landroid/location/Location;

    invoke-static {p2}, Lcom/instagram/android/g/a;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/android/creation/e;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0, p2}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;Landroid/location/Location;)V

    :cond_d
    return-void
.end method

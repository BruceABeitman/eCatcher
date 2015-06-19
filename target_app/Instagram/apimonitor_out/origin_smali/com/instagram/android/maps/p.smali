.class final Lcom/instagram/android/maps/p;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/af;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/p;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/android/h/b;)V
    .registers 5

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/p;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->c()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->c(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/maps/p;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->c()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instagram/android/maps/d/a;->a(Ljava/util/List;Landroid/support/v4/app/s;)V

    return-void
.end method

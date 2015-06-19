.class final Lcom/instagram/android/maps/y;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/y;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/y;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

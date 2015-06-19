.class final Lcom/instagram/android/maps/s;
.super Landroid/content/BroadcastReceiver;
.source "PhotoMapsActivity.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/s;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/maps/s;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    return-void
.end method

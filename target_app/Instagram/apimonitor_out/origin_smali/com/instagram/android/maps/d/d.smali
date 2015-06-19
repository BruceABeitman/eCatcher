.class final Lcom/instagram/android/maps/d/d;
.super Landroid/content/BroadcastReceiver;
.source "GeoGridFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/d/d;->a:Lcom/instagram/android/maps/d/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/maps/d/d;->a:Lcom/instagram/android/maps/d/a;

    invoke-static {v0}, Lcom/instagram/android/maps/d/a;->b(Lcom/instagram/android/maps/d/a;)V

    return-void
.end method

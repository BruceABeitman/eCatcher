.class final Lcom/instagram/android/maps/o;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/n;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/o;->a:Lcom/instagram/android/maps/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/o;->a:Lcom/instagram/android/maps/n;

    iget-object v0, v0, Lcom/instagram/android/maps/n;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->dismiss()V

    return-void
.end method

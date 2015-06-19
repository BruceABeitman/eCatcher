.class final Lcom/instagram/android/maps/aa;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/z;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/z;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/aa;->a:Lcom/instagram/android/maps/z;

    iget-object v0, v0, Lcom/instagram/android/maps/z;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a()V

    return-void
.end method

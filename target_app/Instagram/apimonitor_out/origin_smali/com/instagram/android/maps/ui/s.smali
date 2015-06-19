.class final Lcom/instagram/android/maps/ui/s;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/r;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/r;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/s;->a:Lcom/instagram/android/maps/ui/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/s;->a:Lcom/instagram/android/maps/ui/r;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/r;->a:Lcom/instagram/android/maps/ui/q;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->k(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->dismiss()V

    return-void
.end method

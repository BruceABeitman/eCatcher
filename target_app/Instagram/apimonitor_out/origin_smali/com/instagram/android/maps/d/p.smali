.class final Lcom/instagram/android/maps/d/p;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/l;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/l;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/d/p;->a:Lcom/instagram/android/maps/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/maps/d/p;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->e(Lcom/instagram/android/maps/d/l;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/d/q;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/d/q;-><init>(Lcom/instagram/android/maps/d/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

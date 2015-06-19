.class final Lcom/instagram/android/maps/c;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/c;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/maps/c;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->onBackPressed()V

    return-void
.end method

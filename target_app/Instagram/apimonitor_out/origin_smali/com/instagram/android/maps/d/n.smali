.class final Lcom/instagram/android/maps/d/n;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/l;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/l;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/d/n;->a:Lcom/instagram/android/maps/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/maps/d/n;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->b(Lcom/instagram/android/maps/d/l;)Z

    iget-object v0, p0, Lcom/instagram/android/maps/d/n;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->c(Lcom/instagram/android/maps/d/l;)V

    return-void
.end method

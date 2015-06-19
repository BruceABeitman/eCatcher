.class final Lcom/instagram/android/maps/ui/ac;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/ac;->a:Lcom/instagram/android/maps/ui/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/maps/ui/ac;->a:Lcom/instagram/android/maps/ui/ab;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/ab;->a:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->g(Lcom/instagram/android/maps/ui/m;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

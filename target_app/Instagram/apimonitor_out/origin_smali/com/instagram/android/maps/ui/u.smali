.class final Lcom/instagram/android/maps/ui/u;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;I)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/maps/ui/u;->b:Lcom/instagram/android/maps/ui/m;

    iput p2, p0, Lcom/instagram/android/maps/ui/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/maps/ui/u;->b:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/maps/ui/u;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

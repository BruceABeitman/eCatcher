.class final Lcom/instagram/android/maps/ui/n;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/n;->a:Lcom/instagram/android/maps/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/instagram/android/maps/ui/n;->a:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/maps/ui/m;)V

    :cond_9
    return-void
.end method

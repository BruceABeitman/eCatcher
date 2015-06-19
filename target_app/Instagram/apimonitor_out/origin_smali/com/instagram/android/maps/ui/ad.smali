.class final Lcom/instagram/android/maps/ui/ad;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/h/b;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/maps/ui/ad;->c:Lcom/instagram/android/maps/ui/m;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/ad;->a:Lcom/instagram/android/h/b;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/ad;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/maps/ui/ad;->c:Lcom/instagram/android/maps/ui/m;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/ad;->a:Lcom/instagram/android/h/b;

    iget-object v2, p0, Lcom/instagram/android/maps/ui/ad;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/View;)V

    return-void
.end method

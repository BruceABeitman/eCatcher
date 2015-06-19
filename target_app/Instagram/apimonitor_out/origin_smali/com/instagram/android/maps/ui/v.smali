.class final Lcom/instagram/android/maps/ui/v;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/maps/ui/v;->b:Lcom/instagram/android/maps/ui/m;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/v;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/maps/ui/v;->b:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->c(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/af;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/instagram/android/maps/ui/af;->a(Ljava/util/List;)V

    return-void
.end method

.class final Lcom/instagram/android/maps/ui/ae;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/h/b;

.field final synthetic b:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/maps/ui/ae;->b:Lcom/instagram/android/maps/ui/m;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/ae;->a:Lcom/instagram/android/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/maps/ui/ae;->b:Lcom/instagram/android/maps/ui/m;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/ae;->a:Lcom/instagram/android/h/b;

    sget v2, Lcom/facebook/av;->constrained_image_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/View;)V

    return-void
.end method

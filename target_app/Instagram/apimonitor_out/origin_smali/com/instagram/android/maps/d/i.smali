.class final Lcom/instagram/android/maps/d/i;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/android/maps/e/d;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/instagram/android/maps/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/a;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/maps/d/i;->b:Lcom/instagram/android/maps/d/a;

    iput-object p2, p0, Lcom/instagram/android/maps/d/i;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/maps/d/i;->b:Lcom/instagram/android/maps/d/a;

    iget-object v1, p0, Lcom/instagram/android/maps/d/i;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/instagram/android/maps/d/a;->a(Lcom/instagram/android/maps/d/a;Landroid/view/View;)V

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/e;->c()V

    return-void
.end method

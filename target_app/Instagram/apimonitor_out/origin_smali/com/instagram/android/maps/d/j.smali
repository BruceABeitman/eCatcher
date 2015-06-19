.class final Lcom/instagram/android/maps/d/j;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/d/j;->a:Lcom/instagram/android/maps/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/android/maps/d/j;->a:Lcom/instagram/android/maps/d/a;

    sget v3, Lcom/facebook/az;->edit_photos_on_map:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/maps/d/a;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/android/maps/d/j;->a:Lcom/instagram/android/maps/d/a;

    invoke-virtual {v2}, Lcom/instagram/android/maps/d/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/instagram/android/maps/d/k;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/d/k;-><init>(Lcom/instagram/android/maps/d/j;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

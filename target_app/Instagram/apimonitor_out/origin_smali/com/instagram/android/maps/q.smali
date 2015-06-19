.class final Lcom/instagram/android/maps/q;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/q;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->g()I

    move-result v0

    if-lez v0, :cond_1b

    new-instance v0, Lcom/instagram/android/maps/c/a;

    iget-object v1, p0, Lcom/instagram/android/maps/q;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b()Landroid/support/v4/app/k;

    move-result-object v1

    sget v2, Lcom/instagram/android/maps/e/f;->a:I

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/c/a;-><init>(Landroid/support/v4/app/k;I)V

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/c/a;->onClick(Landroid/view/View;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Z)V

    goto :goto_1a
.end method

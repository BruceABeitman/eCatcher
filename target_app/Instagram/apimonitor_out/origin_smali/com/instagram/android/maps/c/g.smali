.class final Lcom/instagram/android/maps/c/g;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/instagram/android/maps/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/c/c;Z)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    iput-boolean p2, p0, Lcom/instagram/android/maps/c/g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/android/maps/c/g;->a:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/c/h;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/c/h;-><init>(Lcom/instagram/android/maps/c/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_12
    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    :cond_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->f(Lcom/instagram/android/maps/c/c;)V

    goto :goto_12
.end method

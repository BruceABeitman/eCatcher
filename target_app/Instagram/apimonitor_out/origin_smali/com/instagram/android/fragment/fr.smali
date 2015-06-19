.class final Lcom/instagram/android/fragment/fr;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fk;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/fr;->a:Lcom/instagram/android/fragment/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v1, p0, Lcom/instagram/android/fragment/fr;->a:Lcom/instagram/android/fragment/fk;

    const-string v2, "/legal/libraries/android/"

    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/fragment/fr;->a:Lcom/instagram/android/fragment/fk;

    sget v3, Lcom/facebook/az;->about_this_version:I

    invoke-virtual {v0, v3}, Lcom/instagram/android/fragment/fk;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {v1, v2, v0}, Lcom/instagram/android/fragment/fk;->a(Lcom/instagram/android/fragment/fk;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Build #"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/instagram/android/fragment/fr;->a:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/o/a;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

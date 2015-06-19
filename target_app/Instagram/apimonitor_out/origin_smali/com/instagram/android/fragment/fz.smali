.class final Lcom/instagram/android/fragment/fz;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fk;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/fz;->a:Lcom/instagram/android/fragment/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Lcom/instagram/android/login/d/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/fz;->a:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/fz;->a:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/fk;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/login/d/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/s;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/d/a;->b([Ljava/lang/Object;)Lcom/instagram/common/b/a;

    return-void
.end method

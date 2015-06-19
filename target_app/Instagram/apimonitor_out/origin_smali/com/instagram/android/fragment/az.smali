.class final Lcom/instagram/android/fragment/az;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ay;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ay;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/az;->a:Lcom/instagram/android/fragment/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/fragment/az;->a:Lcom/instagram/android/fragment/ay;

    iget-object v0, v0, Lcom/instagram/android/fragment/ay;->a:Lcom/instagram/android/fragment/av;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/av;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    return-void
.end method

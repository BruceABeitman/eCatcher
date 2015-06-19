.class final Lcom/instagram/android/nux/o;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/n;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/nux/o;->a:Lcom/instagram/android/nux/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/nux/o;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    return-void
.end method

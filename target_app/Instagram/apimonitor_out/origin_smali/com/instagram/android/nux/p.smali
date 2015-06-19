.class final Lcom/instagram/android/nux/p;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/n;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/nux/p;->a:Lcom/instagram/android/nux/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    sget-object v0, Lcom/instagram/o/b;->j:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    iget-object v0, p0, Lcom/instagram/android/nux/p;->a:Lcom/instagram/android/nux/n;

    invoke-static {v0}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/nux/n;)V

    return-void
.end method

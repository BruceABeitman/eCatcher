.class final Lcom/instagram/creation/video/f/g;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/g;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/g;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/l/j;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/g;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "back"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/g;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    return-void
.end method

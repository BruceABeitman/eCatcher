.class final Lcom/instagram/android/people/c/h;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/c/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    iget-object v0, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;

    iget-object v0, v0, Lcom/instagram/android/people/c/f;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/instagram/android/c/a/n;

    iget-object v1, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;

    iget-object v1, v1, Lcom/instagram/android/people/c/f;->c:Lcom/instagram/android/people/c/a;

    invoke-static {v1}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;

    iget-object v2, v2, Lcom/instagram/android/people/c/f;->c:Lcom/instagram/android/people/c/a;

    invoke-static {v2}, Lcom/instagram/android/people/c/a;->g(Lcom/instagram/android/people/c/a;)Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;

    iget-object v3, v3, Lcom/instagram/android/people/c/f;->b:Lcom/instagram/feed/d/l;

    new-instance v4, Lcom/instagram/android/people/c/m;

    iget-object v5, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;

    iget-object v5, v5, Lcom/instagram/android/people/c/f;->c:Lcom/instagram/android/people/c/a;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/instagram/android/people/c/m;-><init>(Lcom/instagram/android/people/c/a;B)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/n;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/n;->h()V

    return-void
.end method

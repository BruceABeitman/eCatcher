.class final Lcom/instagram/android/nux/t;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/n;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/instagram/o/b;->c:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    new-instance v0, Lcom/instagram/registrationpush/a;

    iget-object v1, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v1}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->c()V

    iget-object v0, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v0}, Lcom/instagram/android/nux/n;->b()V

    return-void
.end method

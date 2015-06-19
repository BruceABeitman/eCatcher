.class final Lcom/instagram/android/nux/v;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/n;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/nux/v;->a:Lcom/instagram/android/nux/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    sget-object v0, Lcom/instagram/o/b;->v:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "login_clicked"

    iget-object v3, p0, Lcom/instagram/android/nux/v;->a:Lcom/instagram/android/nux/n;

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    iget-object v0, p0, Lcom/instagram/android/nux/v;->a:Lcom/instagram/android/nux/n;

    invoke-static {v0}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/android/nux/n;)V

    return-void
.end method

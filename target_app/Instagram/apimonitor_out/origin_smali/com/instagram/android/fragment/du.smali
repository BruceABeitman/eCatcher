.class final Lcom/instagram/android/fragment/du;
.super Ljava/lang/Object;
.source "RecommendedUserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/dr;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dr;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/du;->a:Lcom/instagram/android/fragment/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/du;->a:Lcom/instagram/android/fragment/dr;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/du;->a:Lcom/instagram/android/fragment/dr;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;)V

    return-void
.end method

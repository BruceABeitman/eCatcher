.class final Lcom/instagram/android/fragment/br;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bo;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/br;->a:Lcom/instagram/android/fragment/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/instagram/android/fragment/br;->a:Lcom/instagram/android/fragment/bo;

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/fragment/bo;->b(Lcom/instagram/android/fragment/bo;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v1, p0, Lcom/instagram/android/fragment/br;->a:Lcom/instagram/android/fragment/bo;

    sget-object v2, Lcom/instagram/share/b/f;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/fragment/br;->a:Lcom/instagram/android/fragment/bo;

    invoke-static {v3}, Lcom/instagram/android/fragment/bo;->a(Lcom/instagram/android/fragment/bo;)Lcom/instagram/android/fragment/bv;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_13
.end method

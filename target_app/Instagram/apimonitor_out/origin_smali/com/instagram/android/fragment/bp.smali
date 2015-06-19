.class final Lcom/instagram/android/fragment/bp;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bo;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/bp;->a:Lcom/instagram/android/fragment/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/instagram/android/widget/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/bp;->a:Lcom/instagram/android/fragment/bo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/bo;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/bp;->a:Lcom/instagram/android/fragment/bo;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/widget/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0}, Lcom/instagram/android/widget/a;->b()V

    return-void
.end method

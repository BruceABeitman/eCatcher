.class final Lcom/instagram/android/fragment/bt;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bo;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/bt;->a:Lcom/instagram/android/fragment/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/bt;->a:Lcom/instagram/android/fragment/bo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/bo;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

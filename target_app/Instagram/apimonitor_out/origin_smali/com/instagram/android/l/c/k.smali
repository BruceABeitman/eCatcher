.class final Lcom/instagram/android/l/c/k;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/l/c/j;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/c/j;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/c/k;->a:Lcom/instagram/android/l/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/k;->a:Lcom/instagram/android/l/c/j;

    iget-object v0, v0, Lcom/instagram/android/l/c/j;->a:Lcom/instagram/android/l/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    return-void
.end method

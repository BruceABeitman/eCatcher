.class final Lcom/instagram/android/fragment/p;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/o;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/o;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/p;->a:Lcom/instagram/android/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/p;->a:Lcom/instagram/android/fragment/o;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/fragment/p;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v3}, Lcom/instagram/android/fragment/o;->a(Lcom/instagram/android/fragment/o;)Lcom/instagram/android/fragment/w;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    return-void
.end method

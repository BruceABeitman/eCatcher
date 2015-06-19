.class final Lcom/instagram/android/fragment/bq;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bo;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/bq;->a:Lcom/instagram/android/fragment/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/instagram/android/fragment/bq;->a:Lcom/instagram/android/fragment/bo;

    invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/fragment/bo;->a(Lcom/instagram/android/fragment/bo;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/instagram/android/fragment/bq;->a:Lcom/instagram/android/fragment/bo;

    invoke-static {v0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_f
.end method

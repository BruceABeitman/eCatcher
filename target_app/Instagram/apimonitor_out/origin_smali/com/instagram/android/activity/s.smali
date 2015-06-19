.class final Lcom/instagram/android/activity/s;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/ui/widget/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/widget/c/a;->a()V

    const-string v0, "NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU"

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;

    sget-object v1, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V

    iget-object v0, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;

    sget-object v1, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;

    sget-object v1, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->d(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V

    goto :goto_11
.end method

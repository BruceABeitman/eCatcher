.class final Lcom/instagram/android/activity/o;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/activity/o;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/activity/o;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->g(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/c;->a(Z)V

    return-void
.end method

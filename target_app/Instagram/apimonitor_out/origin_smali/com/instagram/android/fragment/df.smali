.class final Lcom/instagram/android/fragment/df;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Lcom/instagram/common/c/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ct;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/df;->a:Lcom/instagram/android/fragment/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/fragment/df;->a:Lcom/instagram/android/fragment/ct;

    const-string v1, "com.instagram.android.activity.ARGUMENT_REFRESH_FORCE_LOAD"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/android/fragment/ct;Z)V

    return-void
.end method

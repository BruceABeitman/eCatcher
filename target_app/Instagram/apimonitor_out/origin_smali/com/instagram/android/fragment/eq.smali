.class final Lcom/instagram/android/fragment/eq;
.super Ljava/lang/Object;
.source "SelfFragment.java"

# interfaces
.implements Lcom/instagram/common/c/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ep;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ep;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/eq;->a:Lcom/instagram/android/fragment/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/fragment/eq;->a:Lcom/instagram/android/fragment/ep;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ep;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->i(I)V

    return-void
.end method

.class final Lcom/instagram/android/directshare/c/j;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/c/j;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/c/j;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->o(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/activity/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/c;->a(Z)V

    return-void
.end method

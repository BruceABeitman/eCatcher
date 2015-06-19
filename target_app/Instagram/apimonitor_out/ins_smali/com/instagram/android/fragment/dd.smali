.class final Lcom/instagram/android/fragment/dd;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"
.implements Lcom/instagram/common/c/a;
.field final synthetic a:Lcom/instagram/android/fragment/ct;
.method constructor <init>(Lcom/instagram/android/fragment/ct;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/dd;->a:Lcom/instagram/android/fragment/ct;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/dd;->a:Lcom/instagram/android/fragment/ct;
invoke-static {v0}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/android/fragment/ct;)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Landroid/view/View;)V
return-void
.end method
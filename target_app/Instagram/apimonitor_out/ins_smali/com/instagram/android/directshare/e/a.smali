.class public final Lcom/instagram/android/directshare/e/a;
.super Lcom/instagram/user/e/a/a;
.source "RequestedDirectSharesAdapter.java"
.field private a:Lcom/instagram/user/e/a/a/e;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/user/e/a/a/e;Lcom/instagram/user/follow/h;)V
.registers 4
invoke-direct {p0, p1, p3}, Lcom/instagram/user/e/a/a;-><init>(Landroid/content/Context;Lcom/instagram/user/follow/h;)V
iput-object p2, p0, Lcom/instagram/android/directshare/e/a;->a:Lcom/instagram/user/e/a/a/e;
return-void
.end method
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
.registers 8
iget-object v2, p0, Lcom/instagram/android/directshare/e/a;->a:Lcom/instagram/user/e/a/a/e;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/e/a/a/f;
invoke-virtual {p0, p3}, Lcom/instagram/android/directshare/e/a;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/f/c/a;
invoke-virtual {v1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;
move-result-object v1
const/4 v3, 0x0
invoke-static {v2, v0, v1, p3, v3}, Lcom/instagram/user/e/a/a/a;->a(Lcom/instagram/user/e/a/a/e;Lcom/instagram/user/e/a/a/f;Lcom/instagram/user/c/a;IZ)V
return-void
.end method
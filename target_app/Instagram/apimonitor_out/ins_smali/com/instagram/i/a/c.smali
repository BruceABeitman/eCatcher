.class public final Lcom/instagram/i/a/c;
.super Lcom/instagram/user/e/a/a;
.source "NewsfeedFollowRequestsAdapter.java"
.field private a:Lcom/instagram/user/e/a/a/e;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/e/a/a/e;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/user/e/a/a;-><init>(Landroid/content/Context;Lcom/instagram/user/follow/h;)V
iput-object p3, p0, Lcom/instagram/i/a/c;->a:Lcom/instagram/user/e/a/a/e;
return-void
.end method
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
.registers 8
iget-object v2, p0, Lcom/instagram/i/a/c;->a:Lcom/instagram/user/e/a/a/e;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/e/a/a/f;
invoke-virtual {p0, p3}, Lcom/instagram/i/a/c;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/user/c/a;
const/4 v3, 0x1
invoke-static {v2, v0, v1, p3, v3}, Lcom/instagram/user/e/a/a/a;->a(Lcom/instagram/user/e/a/a/e;Lcom/instagram/user/e/a/a/f;Lcom/instagram/user/c/a;IZ)V
return-void
.end method
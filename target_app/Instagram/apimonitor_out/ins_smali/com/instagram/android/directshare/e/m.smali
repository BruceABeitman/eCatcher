.class final Lcom/instagram/android/directshare/e/m;
.super Lcom/instagram/api/j/a;
.source "RequestedDirectSharesFragment.java"
.field final synthetic a:Lcom/instagram/android/directshare/e/b;
.method private constructor <init>(Lcom/instagram/android/directshare/e/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/e/m;->a:Lcom/instagram/android/directshare/e/b;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/directshare/e/b;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/e/m;-><init>(Lcom/instagram/android/directshare/e/b;)V
return-void
.end method
.method private static a(Ljava/util/List;)V
.registers 1
invoke-static {p0}, Lcom/instagram/android/directshare/c/v;->a(Ljava/util/List;)V
invoke-static {p0}, Lcom/instagram/android/directshare/a/a;->b(Ljava/util/List;)V
return-void
.end method
.method public final a()V
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/instagram/android/directshare/e/m;->a:Lcom/instagram/android/directshare/e/b;
invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-static {p1}, Lcom/instagram/android/directshare/e/m;->a(Ljava/util/List;)V
return-void
.end method
.method public final b()V
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/directshare/e/m;->a:Lcom/instagram/android/directshare/e/b;
invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
return-void
.end method
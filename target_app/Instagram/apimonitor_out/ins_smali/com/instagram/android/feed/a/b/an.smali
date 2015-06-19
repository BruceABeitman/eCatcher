.class final Lcom/instagram/android/feed/a/b/an;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"
.implements Lcom/instagram/android/j/a/d;
.field final synthetic a:Lcom/instagram/android/feed/a/b/ar;
.field final synthetic b:Lcom/instagram/android/j/d;
.field final synthetic c:Lcom/instagram/user/c/a;
.method constructor <init>(Lcom/instagram/android/feed/a/b/ar;Lcom/instagram/android/j/d;Lcom/instagram/user/c/a;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/feed/a/b/an;->a:Lcom/instagram/android/feed/a/b/ar;
iput-object p2, p0, Lcom/instagram/android/feed/a/b/an;->b:Lcom/instagram/android/j/d;
iput-object p3, p0, Lcom/instagram/android/feed/a/b/an;->c:Lcom/instagram/user/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/b/an;->a:Lcom/instagram/android/feed/a/b/ar;
iget-object v0, v0, Lcom/instagram/android/feed/a/b/ar;->u:Landroid/view/ViewGroup;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/b/an;->b:Lcom/instagram/android/j/d;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/an;->c:Lcom/instagram/user/c/a;
invoke-interface {v0}, Lcom/instagram/android/j/d;->a()V
return-void
.end method
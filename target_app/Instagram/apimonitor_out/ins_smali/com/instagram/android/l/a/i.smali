.class final Lcom/instagram/android/l/a/i;
.super Ljava/lang/Object;
.source "UserRowViewBinder.java"
.implements Lcom/instagram/android/j/a/d;
.field final synthetic a:Lcom/instagram/android/l/a/k;
.field final synthetic b:Lcom/instagram/android/j/d;
.field final synthetic c:Lcom/instagram/user/c/a;
.field final synthetic d:Lcom/instagram/android/l/a/g;
.method constructor <init>(Lcom/instagram/android/l/a/g;Lcom/instagram/android/l/a/k;Lcom/instagram/android/j/d;Lcom/instagram/user/c/a;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/l/a/i;->d:Lcom/instagram/android/l/a/g;
iput-object p2, p0, Lcom/instagram/android/l/a/i;->a:Lcom/instagram/android/l/a/k;
iput-object p3, p0, Lcom/instagram/android/l/a/i;->b:Lcom/instagram/android/j/d;
iput-object p4, p0, Lcom/instagram/android/l/a/i;->c:Lcom/instagram/user/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/l/a/i;->a:Lcom/instagram/android/l/a/k;
iget-object v0, v0, Lcom/instagram/android/l/a/k;->i:Landroid/view/ViewGroup;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/l/a/i;->a:Lcom/instagram/android/l/a/k;
iget-object v0, v0, Lcom/instagram/android/l/a/k;->h:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/l/a/i;->b:Lcom/instagram/android/j/d;
iget-object v1, p0, Lcom/instagram/android/l/a/i;->c:Lcom/instagram/user/c/a;
invoke-interface {v0}, Lcom/instagram/android/j/d;->a()V
return-void
.end method
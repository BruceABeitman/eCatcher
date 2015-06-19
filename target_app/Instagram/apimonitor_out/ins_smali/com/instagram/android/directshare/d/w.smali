.class final Lcom/instagram/android/directshare/d/w;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Lcom/instagram/android/widget/p;
.field final synthetic a:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/d/w;->a:Lcom/instagram/android/directshare/d/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(II)V
.registers 5
if-ge p1, p2, :cond_f
iget-object v0, p0, Lcom/instagram/android/directshare/d/w;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->g(Lcom/instagram/android/directshare/d/c;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/android/directshare/d/w;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->h(Lcom/instagram/android/directshare/d/c;)V
:cond_f
iget-object v0, p0, Lcom/instagram/android/directshare/d/w;->a:Lcom/instagram/android/directshare/d/c;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;Z)Z
return-void
.end method
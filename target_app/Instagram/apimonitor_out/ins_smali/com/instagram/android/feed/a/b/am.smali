.class final Lcom/instagram/android/feed/a/b/am;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"
.implements Lcom/instagram/user/follow/g;
.field final synthetic a:Lcom/instagram/android/j/d;
.field final synthetic b:Lcom/instagram/user/c/a;
.method constructor <init>(Lcom/instagram/android/j/d;Lcom/instagram/user/c/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/a/b/am;->a:Lcom/instagram/android/j/d;
iput-object p2, p0, Lcom/instagram/android/feed/a/b/am;->b:Lcom/instagram/user/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/user/c/c;)V
.registers 4
sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
if-ne p1, v0, :cond_b
iget-object v0, p0, Lcom/instagram/android/feed/a/b/am;->a:Lcom/instagram/android/j/d;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/am;->b:Lcom/instagram/user/c/a;
invoke-interface {v0, v1}, Lcom/instagram/android/j/d;->a(Lcom/instagram/user/c/a;)V
:cond_b
return-void
.end method
.class final Lcom/instagram/android/people/b/g;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/people/b/f;
.method constructor <init>(Lcom/instagram/android/people/b/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/b/g;->a:Lcom/instagram/android/people/b/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/b/g;->a:Lcom/instagram/android/people/b/f;
iget-object v0, v0, Lcom/instagram/android/people/b/f;->a:Lcom/instagram/android/people/b/a;
invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V
return-void
.end method
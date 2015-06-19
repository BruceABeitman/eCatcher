.class final Lcom/instagram/android/people/widget/l;
.super Ljava/lang/Object;
.source "PeopleTagsLayout.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/people/widget/k;
.method constructor <init>(Lcom/instagram/android/people/widget/k;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/widget/l;->a:Lcom/instagram/android/people/widget/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/widget/l;->a:Lcom/instagram/android/people/widget/k;
iget-object v0, v0, Lcom/instagram/android/people/widget/k;->b:Lcom/instagram/android/people/widget/PeopleTagsLayout;
iget-object v1, p0, Lcom/instagram/android/people/widget/l;->a:Lcom/instagram/android/people/widget/k;
iget-object v1, v1, Lcom/instagram/android/people/widget/k;->a:Lcom/instagram/android/people/widget/c;
invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeView(Landroid/view/View;)V
return-void
.end method
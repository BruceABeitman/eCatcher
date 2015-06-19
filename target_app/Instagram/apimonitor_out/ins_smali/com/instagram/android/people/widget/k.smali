.class final Lcom/instagram/android/people/widget/k;
.super Lcom/instagram/ui/widget/base/a;
.source "PeopleTagsLayout.java"
.field final synthetic a:Lcom/instagram/android/people/widget/c;
.field final synthetic b:Lcom/instagram/android/people/widget/PeopleTagsLayout;
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Lcom/instagram/android/people/widget/c;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/people/widget/k;->b:Lcom/instagram/android/people/widget/PeopleTagsLayout;
iput-object p2, p0, Lcom/instagram/android/people/widget/k;->a:Lcom/instagram/android/people/widget/c;
invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/people/widget/k;->b:Lcom/instagram/android/people/widget/PeopleTagsLayout;
new-instance v1, Lcom/instagram/android/people/widget/l;
invoke-direct {v1, p0}, Lcom/instagram/android/people/widget/l;-><init>(Lcom/instagram/android/people/widget/k;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->post(Ljava/lang/Runnable;)Z
return-void
.end method
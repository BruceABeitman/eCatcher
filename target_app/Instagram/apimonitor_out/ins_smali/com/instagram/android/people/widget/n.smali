.class final Lcom/instagram/android/people/widget/n;
.super Ljava/lang/Object;
.source "PhotoScrollView.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/people/widget/PhotoScrollView;
.method constructor <init>(Lcom/instagram/android/people/widget/PhotoScrollView;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/widget/n;->a:Lcom/instagram/android/people/widget/PhotoScrollView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/widget/n;->a:Lcom/instagram/android/people/widget/PhotoScrollView;
iget-object v1, p0, Lcom/instagram/android/people/widget/n;->a:Lcom/instagram/android/people/widget/PhotoScrollView;
invoke-static {v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->a(Lcom/instagram/android/people/widget/PhotoScrollView;)F
move-result v1
invoke-static {v0, v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->a(Lcom/instagram/android/people/widget/PhotoScrollView;F)V
return-void
.end method
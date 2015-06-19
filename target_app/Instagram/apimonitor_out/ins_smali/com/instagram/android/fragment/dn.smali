.class final Lcom/instagram/android/fragment/dn;
.super Ljava/lang/Object;
.source "PreloadOptionsFragment.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/instagram/k/b/a;
.field final synthetic b:Lcom/instagram/android/fragment/dl;
.method constructor <init>(Lcom/instagram/android/fragment/dl;Lcom/instagram/k/b/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/fragment/dn;->b:Lcom/instagram/android/fragment/dl;
iput-object p2, p0, Lcom/instagram/android/fragment/dn;->a:Lcom/instagram/k/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/fragment/dn;->a:Lcom/instagram/k/b/a;
invoke-virtual {v0, p2}, Lcom/instagram/k/b/a;->c(Z)Z
return-void
.end method
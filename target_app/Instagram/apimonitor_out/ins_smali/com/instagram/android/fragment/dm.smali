.class final Lcom/instagram/android/fragment/dm;
.super Ljava/lang/Object;
.source "PreloadOptionsFragment.java"
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.field final synthetic a:Lcom/instagram/k/b/a;
.field final synthetic b:Landroid/widget/RadioButton;
.field final synthetic c:Lcom/instagram/android/fragment/dl;
.method constructor <init>(Lcom/instagram/android/fragment/dl;Lcom/instagram/k/b/a;Landroid/widget/RadioButton;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/fragment/dm;->c:Lcom/instagram/android/fragment/dl;
iput-object p2, p0, Lcom/instagram/android/fragment/dm;->a:Lcom/instagram/k/b/a;
iput-object p3, p0, Lcom/instagram/android/fragment/dm;->b:Landroid/widget/RadioButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
.registers 5
iget-object v1, p0, Lcom/instagram/android/fragment/dm;->a:Lcom/instagram/k/b/a;
iget-object v0, p0, Lcom/instagram/android/fragment/dm;->b:Landroid/widget/RadioButton;
invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I
move-result v0
if-ne p2, v0, :cond_f
const/4 v0, 0x1
:goto_b
invoke-virtual {v1, v0}, Lcom/instagram/k/b/a;->e(Z)Z
return-void
:cond_f
const/4 v0, 0x0
goto :goto_b
.end method
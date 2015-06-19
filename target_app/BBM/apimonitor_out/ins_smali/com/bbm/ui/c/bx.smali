.class final Lcom/bbm/ui/c/bx;
.super Ljava/lang/Object;
.source "ContactsFragment.java"
.implements Lcom/bbm/ui/cx;
.field final synthetic a:Lcom/bbm/ui/c/bm;
.method constructor <init>(Lcom/bbm/ui/c/bm;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/bx;->a:Lcom/bbm/ui/c/bm;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
iget-object v0, p0, Lcom/bbm/ui/c/bx;->a:Lcom/bbm/ui/c/bm;
invoke-static {v0}, Lcom/bbm/ui/c/bm;->b(Lcom/bbm/ui/c/bm;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300ba
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a044d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const v2, 0x7f0200d6
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
return-object v1
.end method
.class final Lcom/bbm/ui/e/n;
.super Ljava/lang/Object;
.source "EphemeralTextHolder.java"
.implements Landroid/view/View$OnLayoutChangeListener;
.field final synthetic a:Lcom/bbm/ui/e/m;
.method constructor <init>(Lcom/bbm/ui/e/m;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/n;->a:Lcom/bbm/ui/e/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
.registers 13
sub-int v0, p5, p3
sub-int v1, p9, p7
if-le v0, v1, :cond_10
new-instance v0, Lcom/bbm/ui/e/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/o;-><init>(Lcom/bbm/ui/e/n;)V
const-wide/16 v1, 0xc8
invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_10
return-void
.end method
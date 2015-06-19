.class final Lcom/instagram/ui/f/c;
.super Ljava/lang/Object;
.source "PopupWindowController.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/instagram/ui/f/b;
.method constructor <init>(Lcom/instagram/ui/f/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/f/c;->a:Lcom/instagram/ui/f/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 5
invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_e
iget-object v0, p0, Lcom/instagram/ui/f/c;->a:Lcom/instagram/ui/f/b;
invoke-virtual {v0}, Lcom/instagram/ui/f/b;->b()V
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
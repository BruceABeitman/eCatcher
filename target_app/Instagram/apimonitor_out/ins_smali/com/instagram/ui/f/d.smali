.class final Lcom/instagram/ui/f/d;
.super Ljava/lang/Object;
.source "PopupWindowController.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/ui/f/b;
.method constructor <init>(Lcom/instagram/ui/f/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/f/d;->a:Lcom/instagram/ui/f/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/ui/f/d;->a:Lcom/instagram/ui/f/b;
invoke-static {v0}, Lcom/instagram/ui/f/b;->a(Lcom/instagram/ui/f/b;)Landroid/widget/PopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
return-void
.end method
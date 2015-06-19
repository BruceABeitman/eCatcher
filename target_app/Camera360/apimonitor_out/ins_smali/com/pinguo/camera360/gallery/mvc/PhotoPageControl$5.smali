.class  Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$5;
.super Ljava/lang/Object;
.source "PhotoPageControl.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
.field private final synthetic val$picDescriEditText:Landroid/widget/EditText;
.method constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Landroid/widget/EditText;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$5;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$5;->val$picDescriEditText:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDismiss(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$5;->val$picDescriEditText:Landroid/widget/EditText;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$5;->val$picDescriEditText:Landroid/widget/EditText;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
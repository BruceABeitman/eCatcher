.class  Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$3;
.super Ljava/lang/Object;
.source "PGEditCamera360Controller.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
const/16 v0, 0x8
invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
const/4 v0, 0x0
return v0
.end method
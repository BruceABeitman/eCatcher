.class  Landroid/support/v4/widget/ListPopupWindowCompatKitKat;
.super Ljava/lang/Object;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
.registers 3
check-cast p0, Landroid/widget/ListPopupWindow;
invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
move-result-object v0
return-object v0
.end method
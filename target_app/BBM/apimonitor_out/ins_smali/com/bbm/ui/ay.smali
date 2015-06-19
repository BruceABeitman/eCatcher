.class final Lcom/bbm/ui/ay;
.super Ljava/lang/Object;
.source "DateTimePickerView.java"
.implements Landroid/widget/TimePicker$OnTimeChangedListener;
.field final synthetic a:Lcom/bbm/ui/ax;
.method constructor <init>(Lcom/bbm/ui/ax;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/ay;->a:Lcom/bbm/ui/ax;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTimeChanged(Landroid/widget/TimePicker;II)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/ay;->a:Lcom/bbm/ui/ax;
invoke-static {v0, p1, p2, p3}, Lcom/bbm/ui/ax;->a(Lcom/bbm/ui/ax;Landroid/widget/TimePicker;II)V
return-void
.end method
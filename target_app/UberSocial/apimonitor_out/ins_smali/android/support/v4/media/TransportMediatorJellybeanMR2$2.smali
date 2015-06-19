.class  Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.method constructor <init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onWindowFocusChanged(Z)V
.registers 3
if-eqz p1, :cond_8
iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->gainFocus()V
:goto_7
return-void
:cond_8
iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->loseFocus()V
goto :goto_7
.end method
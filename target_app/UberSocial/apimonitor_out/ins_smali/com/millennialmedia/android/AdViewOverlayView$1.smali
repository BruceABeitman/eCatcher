.class  Lcom/millennialmedia/android/AdViewOverlayView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/millennialmedia/android/AdViewOverlayView;
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->a:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/millennialmedia/android/AdViewOverlayView$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "AdViewOverlayView"
const-string v1, "Close button clicked."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->a:Lcom/millennialmedia/android/AdViewOverlayView;
invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->l_()V
const-string v1, " - Lcom/millennialmedia/android/AdViewOverlayView$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
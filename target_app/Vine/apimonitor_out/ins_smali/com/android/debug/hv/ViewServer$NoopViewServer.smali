.class  Lcom/android/debug/hv/ViewServer$NoopViewServer;
.super Lcom/android/debug/hv/ViewServer;
.source "ViewServer.java"
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/android/debug/hv/ViewServer;-><init>(Lcom/android/debug/hv/ViewServer$1;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/android/debug/hv/ViewServer$1;)V
.registers 2
invoke-direct {p0}, Lcom/android/debug/hv/ViewServer$NoopViewServer;-><init>()V
return-void
.end method
.method public addWindow(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public isRunning()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public removeWindow(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public removeWindow(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public run()V
.registers 1
return-void
.end method
.method public setFocusedWindow(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public setFocusedWindow(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public start()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public stop()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
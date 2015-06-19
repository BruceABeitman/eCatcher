.class public Lcom/bbm/ui/views/OverrideBackPressed;
.super Landroid/widget/RelativeLayout;
.source "OverrideBackPressed.java"
.field private a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/bbm/ui/views/OverrideBackPressed;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0, p1}, Lcom/bbm/ui/views/OverrideBackPressed;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0, p1}, Lcom/bbm/ui/views/OverrideBackPressed;->a(Landroid/content/Context;)V
return-void
.end method
.method private a(Landroid/content/Context;)V
.registers 4
const-string v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v1, 0x7f0300f6
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
iput-object p1, p0, Lcom/bbm/ui/views/OverrideBackPressed;->a:Landroid/content/Context;
return-void
.end method
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
.registers 6
const/4 v1, 0x1
const-string v0, "sammydm"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "dispatchKeyEventPreIme("
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
const/4 v2, 0x4
if-ne v0, v2, :cond_54
invoke-virtual {p0}, Lcom/bbm/ui/views/OverrideBackPressed;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
move-result-object v0
if-eqz v0, :cond_54
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-nez v2, :cond_39
invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v2
if-nez v2, :cond_39
invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
move v0, v1
:goto_38
return v0
:cond_39
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-ne v2, v1, :cond_54
invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z
move-result v2
if-nez v2, :cond_54
invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/bbm/ui/views/OverrideBackPressed;->a:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
move v0, v1
goto :goto_38
:cond_54
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
move-result v0
goto :goto_38
.end method
.method public setViewStub(I)V
.registers 4
const v1, 0x7f0a04e8
invoke-virtual {p0, v1}, Lcom/bbm/ui/views/OverrideBackPressed;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewStub;
check-cast v0, Landroid/view/ViewStub;
invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V
invoke-virtual {p0, v1}, Lcom/bbm/ui/views/OverrideBackPressed;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewStub;
check-cast v0, Landroid/view/ViewStub;
invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
return-void
.end method
.class final Lcom/instagram/android/widget/ag;
.super Ljava/lang/Object;
.source "ViewSwitchWidgetHelper.java"
.implements Landroid/view/View$OnClickListener;
.field private final a:Lcom/instagram/android/feed/a/a;
.field private final b:Landroid/view/View;
.field private final c:Landroid/view/View;
.method public constructor <init>(Lcom/instagram/android/feed/a/a;Landroid/view/View;Landroid/view/View;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/android/widget/ag;->a:Lcom/instagram/android/feed/a/a;
iput-object p2, p0, Lcom/instagram/android/widget/ag;->b:Landroid/view/View;
iput-object p3, p0, Lcom/instagram/android/widget/ag;->c:Landroid/view/View;
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/widget/ag; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/widget/ag;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->d()V
iget-object v3, p0, Lcom/instagram/android/widget/ag;->b:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/android/widget/ag;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->o()I
move-result v0
sget v4, Lcom/instagram/android/feed/a/h;->b:I
if-ne v0, v4, :cond_27
move v0, v1
:goto_14
invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V
iget-object v0, p0, Lcom/instagram/android/widget/ag;->c:Landroid/view/View;
iget-object v3, p0, Lcom/instagram/android/widget/ag;->a:Lcom/instagram/android/feed/a/a;
invoke-virtual {v3}, Lcom/instagram/android/feed/a/a;->o()I
move-result v3
sget v4, Lcom/instagram/android/feed/a/h;->a:I
if-ne v3, v4, :cond_29
:goto_23
invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V
const-string v1, " - Lcom/instagram/android/widget/ag; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_27
move v0, v2
goto :goto_14
:cond_29
move v1, v2
goto :goto_23
.end method
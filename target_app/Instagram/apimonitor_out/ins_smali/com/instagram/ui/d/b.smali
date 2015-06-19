.class public final Lcom/instagram/ui/d/b;
.super Ljava/lang/Object;
.source "ListUtil.java"
.method public static a(ZLandroid/view/View;)V
.registers 4
if-eqz p1, :cond_e
sget v0, Lcom/facebook/av;->listview_progressbar:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
if-eqz p0, :cond_f
const/4 v0, 0x0
:goto_b
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
:cond_e
return-void
:cond_f
const/16 v0, 0x8
goto :goto_b
.end method
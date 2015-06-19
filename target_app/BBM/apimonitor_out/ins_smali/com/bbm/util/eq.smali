.class public final Lcom/bbm/util/eq;
.super Lcom/bbm/d/a/a/a;
.source "UpdatesFragmentUtil.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field private a:I
.field private b:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V
return-void
.end method
.method public final a()I
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget v0, p0, Lcom/bbm/util/eq;->a:I
return v0
.end method
.method public final b()I
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget v0, p0, Lcom/bbm/util/eq;->b:I
return v0
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/eq; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x2
new-array v0, v0, [I
invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V
const/4 v1, 0x1
aget v0, v0, v1
iput v0, p0, Lcom/bbm/util/eq;->a:I
iget v0, p0, Lcom/bbm/util/eq;->a:I
invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/bbm/util/eq;->b:I
invoke-virtual {p0}, Lcom/bbm/util/eq;->c()V
const-string v1, " - Lcom/bbm/util/eq; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/eq; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/util/eq; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
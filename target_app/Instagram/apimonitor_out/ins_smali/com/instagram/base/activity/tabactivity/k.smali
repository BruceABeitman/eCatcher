.class final Lcom/instagram/base/activity/tabactivity/k;
.super Ljava/lang/Object;
.source "IgTabWidget.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
.field private final b:I
.method private constructor <init>(Lcom/instagram/base/activity/tabactivity/IgTabWidget;I)V
.registers 3
iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/k;->a:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/instagram/base/activity/tabactivity/k;->b:I
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/base/activity/tabactivity/IgTabWidget;IB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/base/activity/tabactivity/k;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabWidget;I)V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/base/activity/tabactivity/k; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/k;->a:Lcom/instagram/base/activity/tabactivity/IgTabWidget;
invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(Lcom/instagram/base/activity/tabactivity/IgTabWidget;)Lcom/instagram/base/activity/tabactivity/j;
move-result-object v0
iget v1, p0, Lcom/instagram/base/activity/tabactivity/k;->b:I
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/instagram/base/activity/tabactivity/j;->a(IZ)V
const-string v1, " - Lcom/instagram/base/activity/tabactivity/k; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class  Lcom/facebook/katana/MyTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "MyTabWidget.java"
.implements Landroid/view/View$OnClickListener;
.field private final mTabIndex:I
.field final synthetic this$0:Lcom/facebook/katana/MyTabWidget;
.method private constructor <init>(Lcom/facebook/katana/MyTabWidget;I)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/MyTabWidget$TabClickListener;->this$0:Lcom/facebook/katana/MyTabWidget;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/facebook/katana/MyTabWidget$TabClickListener;->mTabIndex:I
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/MyTabWidget;ILcom/facebook/katana/MyTabWidget$TabClickListener;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/facebook/katana/MyTabWidget$TabClickListener;-><init>(Lcom/facebook/katana/MyTabWidget;I)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MyTabWidget$TabClickListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/MyTabWidget$TabClickListener;->this$0:Lcom/facebook/katana/MyTabWidget;
#getter for: Lcom/facebook/katana/MyTabWidget;->mSelectionChangedListener:Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;
invoke-static {v0}, Lcom/facebook/katana/MyTabWidget;->access$0(Lcom/facebook/katana/MyTabWidget;)Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;
move-result-object v0
iget v1, p0, Lcom/facebook/katana/MyTabWidget$TabClickListener;->mTabIndex:I
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V
const-string v1, " - Lcom/facebook/katana/MyTabWidget$TabClickListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
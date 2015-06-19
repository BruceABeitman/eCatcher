.class  Lcom/pinguo/share/theme/ThemeXMLConsole$1;
.super Ljava/lang/Thread;
.source "ThemeXMLConsole.java"
.field final synthetic this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;
.method constructor <init>(Lcom/pinguo/share/theme/ThemeXMLConsole;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;
iget-object v1, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;
#getter for: Lcom/pinguo/share/theme/ThemeXMLConsole;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->access$0(Lcom/pinguo/share/theme/ThemeXMLConsole;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadModelInfo(Landroid/content/Context;)Ljava/util/List;
return-void
.end method
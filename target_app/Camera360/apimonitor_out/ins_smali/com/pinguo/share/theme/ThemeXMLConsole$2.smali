.class  Lcom/pinguo/share/theme/ThemeXMLConsole$2;
.super Ljava/lang/Thread;
.source "ThemeXMLConsole.java"
.field final synthetic this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;
.method constructor <init>(Lcom/pinguo/share/theme/ThemeXMLConsole;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$2;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLConsole$2;->this$0:Lcom/pinguo/share/theme/ThemeXMLConsole;
invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile()Ljava/util/List;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadPhotoes(Ljava/util/List;Z)V
return-void
.end method
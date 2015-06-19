.class  Lcom/pinguo/share/theme/ShareThemeMainActivity$4;
.super Ljava/lang/Object;
.source "ShareThemeMainActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
.method constructor <init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$4;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$4;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$13(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeNetConsole;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeNetConsole;->cancelThread()V
return-void
.end method
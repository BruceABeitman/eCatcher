.class  Lcom/facebook/katana/ProfileTabHostActivity$1;
.super Ljava/lang/Object;
.source "ProfileTabHostActivity.java"
.implements Lcom/facebook/katana/TabProgressListener;
.field final synthetic this$0:Lcom/facebook/katana/ProfileTabHostActivity;
.method constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity$1;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onShowProgress(Z)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$1;->this$0:Lcom/facebook/katana/ProfileTabHostActivity;
const v1, 0x7f0b00b2
invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz p1, :cond_10
const/4 v1, 0x0
:goto_c
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_10
const/16 v1, 0x8
goto :goto_c
.end method
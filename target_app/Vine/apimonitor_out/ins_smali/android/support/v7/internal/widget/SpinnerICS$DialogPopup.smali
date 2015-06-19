.class  Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;
.super Ljava/lang/Object;
.source "SpinnerICS.java"
.implements Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;
.field private mListAdapter:Landroid/widget/ListAdapter;
.field private mPopup:Landroid/app/AlertDialog;
.field private mPrompt:Ljava/lang/CharSequence;
.field final synthetic this$0:Landroid/support/v7/internal/widget/SpinnerICS;
.method private constructor <init>(Landroid/support/v7/internal/widget/SpinnerICS;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/SpinnerICS;Landroid/support/v7/internal/widget/SpinnerICS$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;-><init>(Landroid/support/v7/internal/widget/SpinnerICS;)V
return-void
.end method
.method public dismiss()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPopup:Landroid/app/AlertDialog;
invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPopup:Landroid/app/AlertDialog;
return-void
.end method
.method public getHintText()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPrompt:Ljava/lang/CharSequence;
return-object v0
.end method
.method public isShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPopup:Landroid/app/AlertDialog;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPopup:Landroid/app/AlertDialog;
invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/SpinnerICS;->setSelection(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerICS;->mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;
invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v2
invoke-virtual {v0, v1, p2, v2, v3}, Landroid/support/v7/internal/widget/SpinnerICS;->performItemClick(Landroid/view/View;IJ)Z
:cond_17
invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->dismiss()V
const-string v1, " - Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;
return-void
.end method
.method public setPromptText(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPrompt:Ljava/lang/CharSequence;
return-void
.end method
.method public show()V
.registers 4
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerICS;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPrompt:Ljava/lang/CharSequence;
if-eqz v1, :cond_14
iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPrompt:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
:cond_14
iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;
iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v2}, Landroid/support/v7/internal/widget/SpinnerICS;->getSelectedItemPosition()I
move-result v2
invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;->mPopup:Landroid/app/AlertDialog;
return-void
.end method
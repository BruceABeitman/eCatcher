.class public Lco/vine/android/widgets/PromptDialogSupportFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PromptDialogSupportFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field private static final ARG_DIALOG_ICON:Ljava/lang/String; = "icon"
.field private static final ARG_DIALOG_ID:Ljava/lang/String; = "id"
.field private static final ARG_DIALOG_ITEMS:Ljava/lang/String; = "items"
.field private static final ARG_DIALOG_ITEMS_STRING:Ljava/lang/String; = "items_string"
.field private static final ARG_DIALOG_MESSAGE:Ljava/lang/String; = "message"
.field private static final ARG_DIALOG_MESSAGE_STRING:Ljava/lang/String; = "message_string"
.field private static final ARG_DIALOG_NEGATIVE_BUTTON:Ljava/lang/String; = "negative_button"
.field private static final ARG_DIALOG_NEUTRAL_BUTTON:Ljava/lang/String; = "neutral_button"
.field private static final ARG_DIALOG_POSITIVE_BUTTON:Ljava/lang/String; = "positive_button"
.field private static final ARG_DIALOG_THEME:Ljava/lang/String; = "theme"
.field private static final ARG_DIALOG_TITLE:Ljava/lang/String; = "title"
.field private mListener:Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V
return-void
.end method
.method public static newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(II)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v0
return-object v0
.end method
.method public static newInstance(II)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 5
new-instance v1, Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-direct {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "id"
invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "theme"
invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {v1, v0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setArguments(Landroid/os/Bundle;)V
return-object v1
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_12
instance-of v1, v0, Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
if-eqz v1, :cond_11
check-cast v0, Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
iput-object v0, p0, Lco/vine/android/widgets/PromptDialogSupportFragment;->mListener:Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
:goto_11
:cond_11
return-void
:cond_12
instance-of v1, p1, Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
if-eqz v1, :cond_11
check-cast p1, Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
iput-object p1, p0, Lco/vine/android/widgets/PromptDialogSupportFragment;->mListener:Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
goto :goto_11
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widgets/PromptDialogSupportFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widgets/PromptDialogSupportFragment;->mListener:Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/widgets/PromptDialogSupportFragment;->mListener:Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v1
const-string v2, "id"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-interface {v0, p1, v1, p2}, Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;->onDialogDone(Landroid/content/DialogInterface;II)V
:cond_13
const-string v1, " - Lco/vine/android/widgets/PromptDialogSupportFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.registers 7
invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v3, "theme"
const/4 v4, 0x2
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0xb
if-lt v3, v4, :cond_c3
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v1, v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V
:goto_1d
const-string v3, "icon"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_2e
const-string v3, "icon"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
:cond_2e
const-string v3, "title"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3f
const-string v3, "title"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
:cond_3f
const-string v3, "message"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_50
const-string v3, "message"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
:cond_50
const-string v3, "message_string"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_61
const-string v3, "message_string"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
:cond_61
const-string v3, "positive_button"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_72
const-string v3, "positive_button"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
:cond_72
const-string v3, "neutral_button"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_83
const-string v3, "neutral_button"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
:cond_83
const-string v3, "negative_button"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_94
const-string v3, "negative_button"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
:cond_94
const-string v3, "items"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_ad
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getResources()Landroid/content/res/Resources;
move-result-object v3
const-string v4, "items"
invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v4
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
:cond_ad
const-string v3, "items_string"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_be
const-string v3, "items_string"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
:cond_be
invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v3
return-object v3
:cond_c3
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
goto/16 :goto_1d
.end method
.method public setIcon(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "icon"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setItems(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "items"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setItems([Ljava/lang/String;)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "items_string"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
return-object p0
.end method
.method public setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widgets/PromptDialogSupportFragment;->mListener:Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
return-void
.end method
.method public setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "message"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMessage(Ljava/lang/String;)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "message_string"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "negative_button"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "neutral_button"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "positive_button"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
.registers 4
invoke-virtual {p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "title"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public show(Landroid/support/v4/app/FragmentManager;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
return-void
.end method
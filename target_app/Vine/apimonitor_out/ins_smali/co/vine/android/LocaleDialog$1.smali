.class  Lco/vine/android/LocaleDialog$1;
.super Ljava/lang/Object;
.source "LocaleDialog.java"
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.field final synthetic this$0:Lco/vine/android/LocaleDialog;
.method constructor <init>(Lco/vine/android/LocaleDialog;)V
.registers 2
iput-object p1, p0, Lco/vine/android/LocaleDialog$1;->this$0:Lco/vine/android/LocaleDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Lco/vine/android/LocaleDialog$1;->this$0:Lco/vine/android/LocaleDialog;
#getter for: Lco/vine/android/LocaleDialog;->mLocales:Landroid/widget/Spinner;
invoke-static {v0}, Lco/vine/android/LocaleDialog;->access$100(Lco/vine/android/LocaleDialog;)Landroid/widget/Spinner;
move-result-object v2
const v0, 0x7f0a0113
if-ne p2, v0, :cond_16
move v0, v1
:goto_d
invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V
iget-object v0, p0, Lco/vine/android/LocaleDialog$1;->this$0:Lco/vine/android/LocaleDialog;
#setter for: Lco/vine/android/LocaleDialog;->mChanges:Z
invoke-static {v0, v1}, Lco/vine/android/LocaleDialog;->access$202(Lco/vine/android/LocaleDialog;Z)Z
return-void
:cond_16
const/4 v0, 0x0
goto :goto_d
.end method
.class public Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;
.super Ljava/lang/Object;
.source "RecipientPickerActivity.java"
.implements Landroid/view/View$OnClickListener;
.field private final position:I
.field private final recipient:Lco/vine/android/api/VineRecipient;
.field final synthetic this$0:Lco/vine/android/RecipientPickerActivity;
.method public constructor <init>(Lco/vine/android/RecipientPickerActivity;Lco/vine/android/api/VineRecipient;I)V
.registers 4
iput-object p1, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->this$0:Lco/vine/android/RecipientPickerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->recipient:Lco/vine/android/api/VineRecipient;
iput p3, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->position:I
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->this$0:Lco/vine/android/RecipientPickerActivity;
iget-object v1, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->recipient:Lco/vine/android/api/VineRecipient;
invoke-virtual {v0, v1}, Lco/vine/android/RecipientPickerActivity;->onItemClick(Lco/vine/android/api/VineRecipient;)V
const-string v1, " - Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class  Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1;
.super Ljava/lang/Object;
.source "NotifyableRelativeLayout.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/widget/notifier/NotifyableRelativeLayout;
.method constructor <init>(Lco/vine/android/widget/notifier/NotifyableRelativeLayout;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1;->this$0:Lco/vine/android/widget/notifier/NotifyableRelativeLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1;->this$0:Lco/vine/android/widget/notifier/NotifyableRelativeLayout;
#getter for: Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mListener:Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;
invoke-static {v0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->access$000(Lco/vine/android/widget/notifier/NotifyableRelativeLayout;)Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1;->this$0:Lco/vine/android/widget/notifier/NotifyableRelativeLayout;
#getter for: Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mListener:Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;
invoke-static {v0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->access$000(Lco/vine/android/widget/notifier/NotifyableRelativeLayout;)Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;
move-result-object v0
invoke-interface {v0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;->onNotifyClick()V
:cond_11
iget-object v0, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1;->this$0:Lco/vine/android/widget/notifier/NotifyableRelativeLayout;
#calls: Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->hideNotification()V
invoke-static {v0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->access$100(Lco/vine/android/widget/notifier/NotifyableRelativeLayout;)V
const-string v1, " - Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
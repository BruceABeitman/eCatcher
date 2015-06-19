.class final Lcom/bbm/ui/activities/sp;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;
.field final synthetic b:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;Landroid/view/inputmethod/InputMethodManager;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/sp;->b:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/sp;->a:Landroid/view/inputmethod/InputMethodManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/sp; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mGroupImageFrame Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/sp;->a:Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/bbm/ui/activities/sp;->b:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
const-string v1, " - Lcom/bbm/ui/activities/sp; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class public Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;
.super Landroid/os/AsyncTask;
.source "VineUploadService.java"
.implements Lco/vine/android/recorder/RecordSessionVersion$OnDraftUpgradeCountChangedListener;
.field public mCurrentCount:I
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;
.method public constructor <init>(Lco/vine/android/service/VineUploadService;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->this$0:Lco/vine/android/service/VineUploadService;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.registers 3
iget-object v0, p0, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->this$0:Lco/vine/android/service/VineUploadService;
invoke-static {v0, p0}, Lco/vine/android/recorder/RecordSessionVersion;->upgrade(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion$OnDraftUpgradeCountChangedListener;)V
const/4 v0, 0x0
return-object v0
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method public onCountChanged(I)V
.registers 3
iput p1, p0, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->mCurrentCount:I
iget-object v0, p0, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->this$0:Lco/vine/android/service/VineUploadService;
#calls: Lco/vine/android/service/VineUploadService;->sendDraftCountToReceiver()V
invoke-static {v0}, Lco/vine/android/service/VineUploadService;->access$200(Lco/vine/android/service/VineUploadService;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Boolean;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->onCountChanged(I)V
iget-object v0, p0, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->this$0:Lco/vine/android/service/VineUploadService;
const/4 v1, 0x0
#setter for: Lco/vine/android/service/VineUploadService;->mUpgradeDraftsTask:Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;
invoke-static {v0, v1}, Lco/vine/android/service/VineUploadService;->access$1002(Lco/vine/android/service/VineUploadService;Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;)Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->onPostExecute(Ljava/lang/Boolean;)V
return-void
.end method
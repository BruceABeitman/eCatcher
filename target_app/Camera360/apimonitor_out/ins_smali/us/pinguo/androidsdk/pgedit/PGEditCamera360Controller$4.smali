.class  Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;
.super Ljava/lang/Object;
.source "PGEditCamera360Controller.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;
.field private final synthetic val$oldPhotoPath:Ljava/lang/String;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;
iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->val$oldPhotoPath:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->val$oldPhotoPath:Ljava/lang/String;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getRotatedDegree(Ljava/lang/String;)I
move-result v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->val$oldPhotoPath:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->savePhotoInThread(Ljava/lang/String;I)V
return-void
.end method
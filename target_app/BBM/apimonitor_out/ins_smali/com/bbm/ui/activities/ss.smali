.class final Lcom/bbm/ui/activities/ss;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
const/4 v4, 0x0
:goto_1
iget-object v0, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->h(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Z
move-result v0
if-nez v0, :cond_23
:try_start_9
iget-object v0, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_10
:try_end_10
.catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_10} :catch_1e
iget-object v0, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
monitor-exit v1
:try_end_1a
.catchall {:try_start_10 .. :try_end_1a} :catchall_1b
goto :goto_1
:catchall_1b
move-exception v0
:try_start_1c
monitor-exit v1
throw v0
:try_end_1e
.catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1e} :catch_1e
:catch_1e
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_1
:cond_23
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "done saving image to imagePath: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_a1
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_a2
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "GroupPictureUploadActivity:Length: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->l(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v1, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->k(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Lcom/bbm/ui/activities/sw;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->l(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/ss;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->m(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/bbm/g/cl;
invoke-direct {v4, v1, v2, v3}, Lcom/bbm/g/cl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v4}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:cond_a1
:goto_a1
return-void
:cond_a2
const-string v0, "GroupPictureUploadActivity:Doesn\'t exist"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_a1
.end method
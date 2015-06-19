.class public Lch/boye/httpclientandroidlib/params/SyncBasicHttpParams;
.super Lch/boye/httpclientandroidlib/params/BasicHttpParams;
.source "SyncBasicHttpParams.java"
.field private static final serialVersionUID:J = 0x4ac56f4476f17222L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V
return-void
.end method
.method public declared-synchronized clear()V
.registers 2
monitor-enter p0
:try_start_1
invoke-super {p0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->clear()V
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_6
monitor-exit p0
return-void
:catchall_6
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized clone()Ljava/lang/Object;
.registers 2
monitor-enter p0
:try_start_1
invoke-super {p0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->clone()Ljava/lang/Object;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_7
move-result-object v0
monitor-exit p0
return-object v0
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getParameter(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
monitor-enter p0
:try_start_1
invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_7
move-result-object v0
monitor-exit p0
return-object v0
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized isParameterSet(Ljava/lang/String;)Z
.registers 3
monitor-enter p0
:try_start_1
invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->isParameterSet(Ljava/lang/String;)Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_7
move-result v0
monitor-exit p0
return v0
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized isParameterSetLocally(Ljava/lang/String;)Z
.registers 3
monitor-enter p0
:try_start_1
invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->isParameterSetLocally(Ljava/lang/String;)Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_7
move-result v0
monitor-exit p0
return v0
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized removeParameter(Ljava/lang/String;)Z
.registers 3
monitor-enter p0
:try_start_1
invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->removeParameter(Ljava/lang/String;)Z
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_7
move-result v0
monitor-exit p0
return v0
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 4
monitor-enter p0
:try_start_1
invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_7
move-result-object v0
monitor-exit p0
return-object v0
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized setParameters([Ljava/lang/String;Ljava/lang/Object;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->setParameters([Ljava/lang/String;Ljava/lang/Object;)V
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_6
monitor-exit p0
return-void
:catchall_6
move-exception v0
monitor-exit p0
throw v0
.end method
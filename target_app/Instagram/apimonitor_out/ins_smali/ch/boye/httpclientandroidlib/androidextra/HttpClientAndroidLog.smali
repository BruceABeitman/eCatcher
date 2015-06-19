.class public Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.super Ljava/lang/Object;
.source "HttpClientAndroidLog.java"
.field private debugEnabled:Z
.field private errorEnabled:Z
.field private infoEnabled:Z
.field private logTag:Ljava/lang/String;
.field private traceEnabled:Z
.field private warnEnabled:Z
.method public constructor <init>(Ljava/lang/Object;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debugEnabled:Z
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->errorEnabled:Z
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->traceEnabled:Z
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warnEnabled:Z
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->infoEnabled:Z
return-void
.end method
.method public debug(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:cond_b
return-void
.end method
.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:cond_b
return-void
.end method
.method public enableDebug(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debugEnabled:Z
return-void
.end method
.method public enableError(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->errorEnabled:Z
return-void
.end method
.method public enableInfo(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->infoEnabled:Z
return-void
.end method
.method public enableTrace(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->traceEnabled:Z
return-void
.end method
.method public enableWarn(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warnEnabled:Z
return-void
.end method
.method public error(Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isErrorEnabled()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_f
return-void
.end method
.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
.registers 5
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isErrorEnabled()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_f
return-void
.end method
.method public info(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isInfoEnabled()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:cond_b
return-void
.end method
.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isInfoEnabled()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:cond_b
return-void
.end method
.method public isDebugEnabled()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debugEnabled:Z
return v0
.end method
.method public isErrorEnabled()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->errorEnabled:Z
return v0
.end method
.method public isInfoEnabled()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->infoEnabled:Z
return v0
.end method
.method public isTraceEnabled()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->traceEnabled:Z
return v0
.end method
.method public isWarnEnabled()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warnEnabled:Z
return v0
.end method
.method public trace(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isTraceEnabled()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:cond_b
return-void
.end method
.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isTraceEnabled()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:cond_b
return-void
.end method
.method public warn(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:cond_b
return-void
.end method
.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->logTag:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:cond_b
return-void
.end method
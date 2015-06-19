.class public Lcom/tencent/a/a/c;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.field protected static final a:Lcom/tencent/a/a/h;
.field protected static final b:Lcom/tencent/a/a/h;
.field protected c:Lcom/tencent/a/a/a;
.field private volatile d:Z
.field private volatile e:Z
.field private volatile f:Z
.method static constructor <clinit>()V
.registers 12
const-wide/16 v6, 0x2710
const/high16 v3, 0x4
const/16 v4, 0x2000
const/16 v8, 0xa
const/16 v2, 0x18
const-wide/32 v10, 0x240c8400
invoke-static {}, Lcom/tencent/a/a/c;->a()Ljava/io/File;
move-result-object v1
new-instance v0, Lcom/tencent/a/a/h;
const-string/jumbo v5, "OpenSDK.Client.File.Tracer"
const-string/jumbo v9, ".app.log"
invoke-direct/range {v0 .. v11}, Lcom/tencent/a/a/h;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
sput-object v0, Lcom/tencent/a/a/c;->a:Lcom/tencent/a/a/h;
new-instance v0, Lcom/tencent/a/a/h;
const-string/jumbo v5, "OpenSDK.File.Tracer"
const-string/jumbo v9, ".OpenSDK.log"
invoke-direct/range {v0 .. v11}, Lcom/tencent/a/a/h;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
sput-object v0, Lcom/tencent/a/a/c;->b:Lcom/tencent/a/a/h;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/a/a/c;->d:Z
iput-boolean v1, p0, Lcom/tencent/a/a/c;->e:Z
iput-boolean v1, p0, Lcom/tencent/a/a/c;->f:Z
return-void
.end method
.method public static a()Ljava/io/File;
.registers 6
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/tencent/a/b/b$a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/tencent/a/b/a;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/tencent/a/b/c;->b()Lcom/tencent/a/b/d;
move-result-object v2
if-eqz v2, :cond_30
invoke-virtual {v2}, Lcom/tencent/a/b/d;->c()J
move-result-wide v2
const-wide/32 v4, 0x800000
cmp-long v2, v2, v4
if-lez v2, :cond_30
const/4 v0, 0x1
:cond_30
if-eqz v0, :cond_3c
new-instance v0, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:goto_3b
return-object v0
:cond_3c
new-instance v0, Ljava/io/File;
invoke-static {}, Lcom/tencent/a/b/a;->c()Ljava/io/File;
move-result-object v2
invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
goto :goto_3b
.end method
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 13
invoke-virtual {p0}, Lcom/tencent/a/a/c;->c()Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/tencent/a/a/c;->d()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/a;
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/a;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
move v1, p1
move-object v5, p2
move-object v6, p3
move-object v7, p4
invoke-virtual/range {v0 .. v7}, Lcom/tencent/a/a/a;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_22
invoke-virtual {p0}, Lcom/tencent/a/a/c;->e()Z
move-result v0
if-eqz v0, :cond_10
sget-object v0, Lcom/tencent/a/a/f;->a:Lcom/tencent/a/a/f;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
move v1, p1
move-object v5, p2
move-object v6, p3
move-object v7, p4
invoke-virtual/range {v0 .. v7}, Lcom/tencent/a/a/f;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_10
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/a;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/a;
invoke-virtual {v0}, Lcom/tencent/a/a/a;->a()V
iget-object v0, p0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/a;
invoke-virtual {v0}, Lcom/tencent/a/a/a;->b()V
:cond_e
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/tencent/a/a/c;->d:Z
return v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/tencent/a/a/c;->e:Z
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/tencent/a/a/c;->f:Z
return v0
.end method
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.registers 8
const-string/jumbo v0, "debug.file.tracelevel"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
const-string/jumbo v0, "debug.file.tracelevel"
const/16 v1, 0x3f
invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
const/16 v1, 0x8
const-string/jumbo v2, "WnsTracer"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "File Trace Level Changed = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tencent/a/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v1, p0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/a;
invoke-virtual {v1, v0}, Lcom/tencent/a/a/a;->a(I)V
:cond_34
return-void
.end method
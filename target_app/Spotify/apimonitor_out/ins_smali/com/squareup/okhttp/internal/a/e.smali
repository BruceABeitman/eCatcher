.class public Lcom/squareup/okhttp/internal/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Lcom/squareup/okhttp/internal/a/e;
.field private b:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/squareup/okhttp/internal/a/e$1;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/e$1;-><init>()V
sput-object v0, Lcom/squareup/okhttp/internal/a/e;->a:Lcom/squareup/okhttp/internal/a/e;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Z
.registers 5
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/e;->b:J
sub-long/2addr v0, v2
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-ltz v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public final b()V
.registers 3
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/e;->a()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/io/IOException;
const-string v1, "Deadline reached"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v0
if-eqz v0, :cond_1a
new-instance v0, Ljava/io/InterruptedIOException;
invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V
throw v0
:cond_1a
return-void
.end method
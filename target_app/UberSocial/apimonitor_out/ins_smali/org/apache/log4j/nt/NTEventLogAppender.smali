.class public Lorg/apache/log4j/nt/NTEventLogAppender;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.field private a:I
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v0, 0x1
:try_start_3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v4, "os.arch"
invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v0, v1
:goto_e
:try_end_e
.catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_e} :catch_33
move v1, v2
:goto_f
array-length v4, v0
if-ge v1, v4, :cond_2b
:try_start_12
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
const-string v5, "NTEventLogAppender."
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
aget-object v5, v0, v1
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
:try_end_2a
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_12 .. :try_end_2a} :catch_45
move v2, v3
:cond_2b
if-nez v2, :cond_32
const-string v0, "NTEventLogAppender"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
:cond_32
return-void
:catch_33
move-exception v0
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const-string v1, "amd64"
aput-object v1, v0, v2
const-string v1, "ia64"
aput-object v1, v0, v3
const/4 v1, 0x2
const-string v4, "x86"
aput-object v4, v0, v1
goto :goto_e
:catch_45
move-exception v4
add-int/lit8 v1, v1, 0x1
goto :goto_f
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0, v0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/u;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, p1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/u;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/u;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/u;)V
.registers 6
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->a:I
iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->i:Ljava/lang/String;
iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->j:Ljava/lang/String;
if-nez p2, :cond_f
const-string p2, "Log4j"
:cond_f
if-nez p3, :cond_1f
new-instance v0, Lorg/apache/log4j/ao;
invoke-direct {v0}, Lorg/apache/log4j/ao;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->b:Lorg/apache/log4j/u;
:goto_18
:try_start_18
invoke-direct {p0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->a:I
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_22
:goto_1e
return-void
:cond_1f
iput-object p3, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->b:Lorg/apache/log4j/u;
goto :goto_18
:catch_22
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->a:I
goto :goto_1e
.end method
.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/u;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/u;)V
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/u;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, v0, p1}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/u;)V
return-void
.end method
.method private native deregisterEventSource(I)V
.end method
.method private native registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
.end method
.method private native reportEvent(ILjava/lang/String;I)V
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)V
.registers 7
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->b:Lorg/apache/log4j/u;
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->b:Lorg/apache/log4j/u;
invoke-virtual {v0}, Lorg/apache/log4j/u;->b()Z
move-result v0
if-eqz v0, :cond_28
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_28
array-length v3, v2
const/4 v0, 0x0
:goto_1e
if-ge v0, v3, :cond_28
aget-object v4, v2, v0
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:cond_28
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/v;->c()I
move-result v0
iget v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->a:I
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v2, v1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->reportEvent(ILjava/lang/String;I)V
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->i:Ljava/lang/String;
return-void
.end method
.method public b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->i:Ljava/lang/String;
return-object v0
.end method
.method public finalize()V
.registers 2
iget v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->a:I
invoke-direct {p0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->deregisterEventSource(I)V
const/4 v0, 0x0
iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->a:I
return-void
.end method
.method public i()V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->i:Ljava/lang/String;
if-eqz v0, :cond_e
:try_start_4
iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->j:Ljava/lang/String;
iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->i:Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->a:I
:try_end_e
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f
:cond_e
:goto_e
return-void
:catch_f
move-exception v0
const-string v1, "Could not register event source."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->a:I
goto :goto_e
.end method
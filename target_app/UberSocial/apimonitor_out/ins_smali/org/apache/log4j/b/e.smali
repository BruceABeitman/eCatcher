.class public Lorg/apache/log4j/b/e;
.super Ljava/lang/Exception;
.source "SourceFile"
.field private static final b:J = -0x12c573065c89d0d5L
.field protected a:Ljava/lang/Throwable;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Throwable;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Exception;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/b/e;->a:Ljava/lang/Throwable;
return-void
.end method
.method public getMessage()Ljava/lang/String;
.registers 3
invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_10
iget-object v1, p0, Lorg/apache/log4j/b/e;->a:Ljava/lang/Throwable;
if-eqz v1, :cond_10
iget-object v0, p0, Lorg/apache/log4j/b/e;->a:Ljava/lang/Throwable;
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
:cond_10
return-object v0
.end method
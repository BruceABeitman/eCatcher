.class  Lorg/apache/log4j/h/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/h/b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
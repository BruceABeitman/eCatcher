.class public Ld/a/b/a;
.super Ld/a/a;
.source "SourceFile"
.field private static final a:J = 0x1L
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Ld/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected b(Ljava/lang/Object;)Ld/a/d/b;
.registers 5
instance-of v0, p1, Lorg/apache/http/HttpRequest;
if-nez v0, :cond_23
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "This consumer expects requests of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-class v2, Lorg/apache/http/HttpRequest;
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
new-instance v0, Ld/a/b/c;
check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;
invoke-direct {v0, p1}, Ld/a/b/c;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V
return-object v0
.end method
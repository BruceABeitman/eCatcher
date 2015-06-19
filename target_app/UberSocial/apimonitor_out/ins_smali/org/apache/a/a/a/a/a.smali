.class public abstract Lorg/apache/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/a/a/a/a/c;
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "MIME type may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lorg/apache/a/a/a/a/a;->a:Ljava/lang/String;
const/16 v0, 0x2f
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_28
const/4 v1, 0x0
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lorg/apache/a/a/a/a/a;->b:Ljava/lang/String;
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/a/a/a/a/a;->c:Ljava/lang/String;
:goto_27
return-void
:cond_28
iput-object p1, p0, Lorg/apache/a/a/a/a/a;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/a/a/a/a/a;->c:Ljava/lang/String;
goto :goto_27
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/a/a/a/a/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/a/a/a/a/a;->b:Ljava/lang/String;
return-object v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/a/a/a/a/a;->c:Ljava/lang/String;
return-object v0
.end method
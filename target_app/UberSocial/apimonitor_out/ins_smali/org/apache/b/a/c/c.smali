.class public Lorg/apache/b/a/c/c;
.super Lorg/apache/b/a/c/k;
.source "SourceFile"
.field private a:Ljava/lang/String;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lorg/apache/b/a/c/c;->a:Ljava/lang/String;
return-void
.end method
.method public static a(Lorg/apache/b/a/c/c;)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_11
invoke-virtual {p0}, Lorg/apache/b/a/c/c;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lorg/apache/b/a/c/c;->a()Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
const-string v0, "7bit"
goto :goto_10
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/c;->a:Ljava/lang/String;
return-object v0
.end method
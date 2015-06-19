.class public Lorg/apache/b/a/c/m;
.super Lorg/apache/b/a/c/k;
.source "SourceFile"
.field static a:Ljava/lang/Class;
.field private final b:Lorg/apache/b/a/c/a/g;
.field private final c:Lorg/apache/b/a/c/a/a/w;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/b/a/c/a/g;Lorg/apache/b/a/c/a/a/w;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lorg/apache/b/a/c/m;->b:Lorg/apache/b/a/c/a/g;
iput-object p5, p0, Lorg/apache/b/a/c/m;->c:Lorg/apache/b/a/c/a/a/w;
return-void
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public a()Lorg/apache/b/a/c/a/g;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/m;->b:Lorg/apache/b/a/c/a/g;
return-object v0
.end method
.method public b()Lorg/apache/b/a/c/a/a/w;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/m;->c:Lorg/apache/b/a/c/a/a/w;
return-object v0
.end method
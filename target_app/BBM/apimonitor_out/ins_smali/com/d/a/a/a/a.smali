.class public abstract Lcom/d/a/a/a/a;
.super Ljava/lang/Object;
.source "BaseDiscCache.java"
.implements Lcom/d/a/a/a/b;
.field protected a:Ljava/io/File;
.field private b:Lcom/d/a/a/a/b/a;
.method public constructor <init>(Ljava/io/File;Lcom/d/a/a/a/b/a;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "cacheDir\"%s\" argument must be not null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-nez p2, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "fileNameGenerator\"%s\" argument must be not null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput-object p1, p0, Lcom/d/a/a/a/a;->a:Ljava/io/File;
iput-object p2, p0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/b/a;
return-void
.end method
.method public a(Ljava/lang/String;)Ljava/io/File;
.registers 5
iget-object v0, p0, Lcom/d/a/a/a/a;->b:Lcom/d/a/a/a/b/a;
invoke-interface {v0, p1}, Lcom/d/a/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
iget-object v2, p0, Lcom/d/a/a/a/a;->a:Ljava/io/File;
invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v1
.end method
.class public abstract Lcom/millennialmedia/a/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Lcom/millennialmedia/a/a/aa;
.registers 2
new-instance v0, Lcom/millennialmedia/a/a/aa$1;
invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/aa$1;-><init>(Lcom/millennialmedia/a/a/aa;)V
return-object v0
.end method
.method public final a(Lcom/millennialmedia/a/a/m;)Ljava/lang/Object;
.registers 4
:try_start_0
new-instance v0, Lcom/millennialmedia/a/a/b/a/e;
invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/b/a/e;-><init>(Lcom/millennialmedia/a/a/m;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
:try_end_8
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a
move-result-object v0
return-object v0
:catch_a
move-exception v0
new-instance v1, Lcom/millennialmedia/a/a/n;
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final a(Ljava/io/Reader;)Ljava/lang/Object;
.registers 3
new-instance v0, Lcom/millennialmedia/a/a/d/a;
invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/a;-><init>(Ljava/io/Reader;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/io/StringReader;
invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/aa;->a(Ljava/io/Reader;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
invoke-virtual {p0, v0, p1}, Lcom/millennialmedia/a/a/aa;->a(Ljava/io/Writer;Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.end method
.method public final a(Ljava/io/Writer;Ljava/lang/Object;)V
.registers 4
new-instance v0, Lcom/millennialmedia/a/a/d/d;
invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/d;-><init>(Ljava/io/Writer;)V
invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
return-void
.end method
.method public final b(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
.registers 4
:try_start_0
new-instance v0, Lcom/millennialmedia/a/a/b/a/f;
invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/f;-><init>()V
invoke-virtual {p0, v0, p1}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/a/f;->a()Lcom/millennialmedia/a/a/m;
:try_end_b
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d
move-result-object v0
return-object v0
:catch_d
move-exception v0
new-instance v1, Lcom/millennialmedia/a/a/n;
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public abstract b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.end method
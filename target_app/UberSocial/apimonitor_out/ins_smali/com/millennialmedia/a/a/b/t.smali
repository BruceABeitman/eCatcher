.class final Lcom/millennialmedia/a/a/b/t;
.super Ljava/io/Writer;
.source "SourceFile"
.field private final a:Ljava/lang/Appendable;
.field private final b:Lcom/millennialmedia/a/a/b/u;
.method private constructor <init>(Ljava/lang/Appendable;)V
.registers 3
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
new-instance v0, Lcom/millennialmedia/a/a/b/u;
invoke-direct {v0}, Lcom/millennialmedia/a/a/b/u;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/a/a/b/t;->b:Lcom/millennialmedia/a/a/b/u;
iput-object p1, p0, Lcom/millennialmedia/a/a/b/t;->a:Ljava/lang/Appendable;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/millennialmedia/a/a/b/s$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/t;-><init>(Ljava/lang/Appendable;)V
return-void
.end method
.method public close()V
.registers 1
return-void
.end method
.method public flush()V
.registers 1
return-void
.end method
.method public write(I)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/a/a/b/t;->a:Ljava/lang/Appendable;
int-to-char v1, p1
invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
return-void
.end method
.method public write([CII)V
.registers 7
iget-object v0, p0, Lcom/millennialmedia/a/a/b/t;->b:Lcom/millennialmedia/a/a/b/u;
iput-object p1, v0, Lcom/millennialmedia/a/a/b/u;->a:[C
iget-object v0, p0, Lcom/millennialmedia/a/a/b/t;->a:Ljava/lang/Appendable;
iget-object v1, p0, Lcom/millennialmedia/a/a/b/t;->b:Lcom/millennialmedia/a/a/b/u;
add-int v2, p2, p3
invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
return-void
.end method
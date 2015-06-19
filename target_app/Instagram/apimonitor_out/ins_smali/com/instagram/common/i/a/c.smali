.class public final Lcom/instagram/common/i/a/c;
.super Ljava/lang/Object;
.source "Joiner.java"
.field private final a:Lcom/instagram/common/i/a/b;
.field private final b:Ljava/lang/String;
.method private constructor <init>(Lcom/instagram/common/i/a/b;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/i/a/c;->a:Lcom/instagram/common/i/a/b;
invoke-static {p2}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/instagram/common/i/a/c;->b:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/i/a/b;Ljava/lang/String;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/common/i/a/c;-><init>(Lcom/instagram/common/i/a/b;Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
.registers 5
invoke-static {p1}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v1, p0, Lcom/instagram/common/i/a/c;->a:Lcom/instagram/common/i/a/b;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
iget-object v1, p0, Lcom/instagram/common/i/a/c;->b:Ljava/lang/String;
invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
iget-object v1, p0, Lcom/instagram/common/i/a/c;->a:Lcom/instagram/common/i/a/b;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
:goto_2e
invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/instagram/common/i/a/c;->a:Lcom/instagram/common/i/a/b;
invoke-static {v0}, Lcom/instagram/common/i/a/b;->a(Lcom/instagram/common/i/a/b;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v1, p0, Lcom/instagram/common/i/a/c;->a:Lcom/instagram/common/i/a/b;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
iget-object v1, p0, Lcom/instagram/common/i/a/c;->b:Ljava/lang/String;
invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
iget-object v1, p0, Lcom/instagram/common/i/a/c;->a:Lcom/instagram/common/i/a/b;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
goto :goto_2e
:cond_63
return-object p1
.end method
.method private a(Ljava/util/Iterator;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0, v0, p1}, Lcom/instagram/common/i/a/c;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
.registers 5
:try_start_0
invoke-direct {p0, p1, p2}, Lcom/instagram/common/i/a/c;->a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4
return-object p1
:catch_4
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
.method public final a(Ljava/lang/Iterable;)Ljava/lang/String;
.registers 3
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/common/i/a/c;->a(Ljava/util/Iterator;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/util/Map;)Ljava/lang/String;
.registers 3
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/common/i/a/c;->a(Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
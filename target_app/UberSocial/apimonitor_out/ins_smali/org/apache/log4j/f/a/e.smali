.class public Lorg/apache/log4j/f/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.field private c:Lorg/apache/log4j/f/b/d;
.field private d:Lorg/apache/log4j/f/e;
.method private constructor <init>(Ljava/util/List;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/f/a/e;->d:Lorg/apache/log4j/f/e;
const/4 v0, 0x0
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/e;
iput-object v0, p0, Lorg/apache/log4j/f/a/e;->d:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/b/d;
invoke-direct {v0, p1}, Lorg/apache/log4j/f/b/d;-><init>(Ljava/util/List;)V
iput-object v0, p0, Lorg/apache/log4j/f/a/e;->c:Lorg/apache/log4j/f/b/d;
iget-object v0, p0, Lorg/apache/log4j/f/a/e;->c:Lorg/apache/log4j/f/b/d;
invoke-static {}, Lorg/apache/log4j/f/a/e;->e()I
move-result v1
invoke-static {}, Lorg/apache/log4j/f/a/e;->f()I
move-result v2
invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/f/b/d;->a(II)V
iget-object v0, p0, Lorg/apache/log4j/f/a/e;->c:Lorg/apache/log4j/f/b/d;
const/16 v1, 0xc
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/d;->c(I)V
iget-object v0, p0, Lorg/apache/log4j/f/a/e;->c:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->a()V
return-void
.end method
.method public static a(I)Lorg/apache/log4j/f/a/e;
.registers 3
const/4 v0, 0x1
if-ne p0, v0, :cond_16
invoke-static {}, Lorg/apache/log4j/f/e;->d()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/f/a/e;->a(Ljava/util/List;)Lorg/apache/log4j/f/a/e;
move-result-object v0
sget-object v1, Lorg/apache/log4j/f/e;->k:Lorg/apache/log4j/f/e;
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/a/e;->a(Lorg/apache/log4j/f/e;)V
sget-object v1, Lorg/apache/log4j/f/e;->f:Lorg/apache/log4j/f/e;
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/a/e;->b(Lorg/apache/log4j/f/e;)V
:goto_15
return-object v0
:cond_16
invoke-static {}, Lorg/apache/log4j/f/e;->c()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/f/a/e;->a(Ljava/util/List;)Lorg/apache/log4j/f/a/e;
move-result-object v0
sget-object v1, Lorg/apache/log4j/f/e;->e:Lorg/apache/log4j/f/e;
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/a/e;->a(Lorg/apache/log4j/f/e;)V
sget-object v1, Lorg/apache/log4j/f/e;->a:Lorg/apache/log4j/f/e;
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/a/e;->b(Lorg/apache/log4j/f/e;)V
goto :goto_15
.end method
.method public static a(Ljava/util/List;)Lorg/apache/log4j/f/a/e;
.registers 2
new-instance v0, Lorg/apache/log4j/f/a/e;
invoke-direct {v0, p0}, Lorg/apache/log4j/f/a/e;-><init>(Ljava/util/List;)V
return-object v0
.end method
.method public static a([Lorg/apache/log4j/f/e;)Lorg/apache/log4j/f/a/e;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/f/a/e;->a(Ljava/util/List;)Lorg/apache/log4j/f/a/e;
move-result-object v0
goto :goto_3
.end method
.method protected static c()I
.registers 1
:try_start_0
invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;
move-result-object v0
invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;
move-result-object v0
iget v0, v0, Ljava/awt/Dimension;->width:I
:try_end_a
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return v0
:catch_b
move-exception v0
const/16 v0, 0x320
goto :goto_a
.end method
.method protected static d()I
.registers 1
:try_start_0
invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;
move-result-object v0
invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;
move-result-object v0
iget v0, v0, Ljava/awt/Dimension;->height:I
:try_end_a
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return v0
:catch_b
move-exception v0
const/16 v0, 0x258
goto :goto_a
.end method
.method protected static e()I
.registers 1
invoke-static {}, Lorg/apache/log4j/f/a/e;->c()I
move-result v0
mul-int/lit8 v0, v0, 0x3
div-int/lit8 v0, v0, 0x4
return v0
.end method
.method protected static f()I
.registers 1
invoke-static {}, Lorg/apache/log4j/f/a/e;->d()I
move-result v0
mul-int/lit8 v0, v0, 0x3
div-int/lit8 v0, v0, 0x4
return v0
.end method
.method public a()Lorg/apache/log4j/f/e;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/a/e;->d:Lorg/apache/log4j/f/e;
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lorg/apache/log4j/f/a/e;->a(Ljava/lang/String;Lorg/apache/log4j/f/e;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;Lorg/apache/log4j/f/e;Ljava/lang/String;)V
.registers 10
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/f/a/e;->a(Ljava/lang/String;Lorg/apache/log4j/f/e;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;Lorg/apache/log4j/f/e;Ljava/lang/String;Ljava/lang/String;)V
.registers 11
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/f/a/e;->a(Ljava/lang/String;Lorg/apache/log4j/f/e;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;Lorg/apache/log4j/f/e;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/f/a/e;->a(Ljava/lang/String;Lorg/apache/log4j/f/e;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;Lorg/apache/log4j/f/e;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 8
new-instance v0, Lorg/apache/log4j/f/a/a;
invoke-direct {v0}, Lorg/apache/log4j/f/a/a;-><init>()V
invoke-virtual {v0, p1}, Lorg/apache/log4j/f/a/a;->a(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Lorg/apache/log4j/f/a/a;->b(Ljava/lang/String;)V
invoke-virtual {v0, p5}, Lorg/apache/log4j/f/a/a;->e(Ljava/lang/String;)V
invoke-virtual {v0, p4}, Lorg/apache/log4j/f/a/a;->a(Ljava/lang/Throwable;)V
if-nez p2, :cond_1e
invoke-virtual {p0}, Lorg/apache/log4j/f/a/e;->a()Lorg/apache/log4j/f/e;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/a/a;->a(Lorg/apache/log4j/f/e;)V
:goto_1a
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/a/e;->a(Lorg/apache/log4j/f/g;)V
return-void
:cond_1e
invoke-virtual {v0, p2}, Lorg/apache/log4j/f/a/a;->a(Lorg/apache/log4j/f/e;)V
goto :goto_1a
.end method
.method public a(Lorg/apache/log4j/f/e;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/a/e;->d:Lorg/apache/log4j/f/e;
return-void
.end method
.method public a(Lorg/apache/log4j/f/g;)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/a/e;->c:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0, p1}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/g;)V
return-void
.end method
.method public b()Lorg/apache/log4j/f/e;
.registers 2
invoke-static {}, Lorg/apache/log4j/f/a/a;->p()Lorg/apache/log4j/f/e;
move-result-object v0
return-object v0
.end method
.method public b(I)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/a/e;->c:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0, p1}, Lorg/apache/log4j/f/b/d;->b(I)V
return-void
.end method
.method public b(Lorg/apache/log4j/f/e;)V
.registers 2
invoke-static {p1}, Lorg/apache/log4j/f/a/a;->b(Lorg/apache/log4j/f/e;)V
return-void
.end method
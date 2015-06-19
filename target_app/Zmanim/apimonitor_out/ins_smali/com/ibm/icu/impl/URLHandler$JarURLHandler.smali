.class  Lcom/ibm/icu/impl/URLHandler$JarURLHandler;
.super Lcom/ibm/icu/impl/URLHandler;
.source "URLHandler.java"
.field  jarFile:Ljava/util/jar/JarFile;
.field  prefix:Ljava/lang/String;
.method constructor <init>(Ljava/net/URL;)V
.registers 8
invoke-direct {p0}, Lcom/ibm/icu/impl/URLHandler;-><init>()V
:try_start_3
invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;
iget-object v3, p0, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;
const-string v4, "!/"
invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_1d
iget-object v3, p0, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;
add-int/lit8 v4, v2, 0x2
invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;
:cond_1d
invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/JarURLConnection;
invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
move-result-object v3
iput-object v3, p0, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;->jarFile:Ljava/util/jar/JarFile;
:try_end_29
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a
return-void
:catch_2a
move-exception v3
move-object v1, v3
invoke-static {}, Lcom/ibm/icu/impl/URLHandler;->access$000()Z
move-result v3
if-eqz v3, :cond_4a
sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "icurb jar error: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_4a
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "jar error: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public guide(Lcom/ibm/icu/impl/URLHandler$URLVisitor;ZZ)V
.registers 12
:try_start_0
iget-object v5, p0, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;->jarFile:Ljava/util/jar/JarFile;
invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;
move-result-object v1
:cond_6
:goto_6
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v5
if-eqz v5, :cond_65
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/jar/JarEntry;
invoke-virtual {v2}, Ljava/util/jar/JarEntry;->isDirectory()Z
move-result v5
if-nez v5, :cond_6
invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_6
iget-object v5, p0, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;->prefix:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
const/16 v5, 0x2f
invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I
move-result v3
const/4 v5, -0x1
if-eq v3, v5, :cond_41
if-eqz p2, :cond_6
if-eqz p3, :cond_41
add-int/lit8 v5, v3, 0x1
invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
:cond_41
invoke-interface {p1, v4}, Lcom/ibm/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V
:try_end_44
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45
goto :goto_6
:catch_45
move-exception v5
move-object v0, v5
invoke-static {}, Lcom/ibm/icu/impl/URLHandler;->access$000()Z
move-result v5
if-eqz v5, :cond_65
sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "icurb jar error: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_65
return-void
.end method
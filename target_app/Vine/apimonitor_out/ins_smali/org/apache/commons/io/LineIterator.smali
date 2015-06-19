.class public Lorg/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"
.implements Ljava/util/Iterator;
.field private final bufferedReader:Ljava/io/BufferedReader;
.field private cachedLine:Ljava/lang/String;
.field private finished:Z
.method public constructor <init>(Ljava/io/Reader;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z
if-nez p1, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Reader must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
instance-of v0, p1, Ljava/io/BufferedReader;
if-eqz v0, :cond_19
check-cast p1, Ljava/io/BufferedReader;
iput-object p1, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;
:goto_18
return-void
:cond_19
new-instance v0, Ljava/io/BufferedReader;
invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;
goto :goto_18
.end method
.method public static closeQuietly(Lorg/apache/commons/io/LineIterator;)V
.registers 1
if-eqz p0, :cond_5
invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V
:cond_5
return-void
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z
iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
return-void
.end method
.method public hasNext()Z
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
if-eqz v4, :cond_7
:goto_6
return v2
:cond_7
iget-boolean v4, p0, Lorg/apache/commons/io/LineIterator;->finished:Z
if-eqz v4, :cond_d
move v2, v3
goto :goto_6
:cond_d
:try_start_d
iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_1a
const/4 v2, 0x1
iput-boolean v2, p0, Lorg/apache/commons/io/LineIterator;->finished:Z
move v2, v3
goto :goto_6
:cond_1a
invoke-virtual {p0, v1}, Lorg/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_d
iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
:try_end_22
.catch Ljava/io/IOException; {:try_start_d .. :try_end_22} :catch_23
goto :goto_6
:catch_23
move-exception v0
invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V
new-instance v2, Ljava/lang/IllegalStateException;
invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v2
.end method
.method protected isValidLine(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public bridge synthetic next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->next()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public next()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public nextLine()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->hasNext()Z
move-result v1
if-nez v1, :cond_e
new-instance v1, Ljava/util/NoSuchElementException;
const-string v2, "No more lines"
invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
const/4 v1, 0x0
iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
return-object v0
.end method
.method public remove()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Remove unsupported on LineIterator"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
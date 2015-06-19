.class public Lcom/ibm/icu/impl/data/ResourceReader;
.super Ljava/lang/Object;
.source "ResourceReader.java"
.field private encoding:Ljava/lang/String;
.field private lineNo:I
.field private reader:Ljava/io/BufferedReader;
.field private resourceName:Ljava/lang/String;
.field private root:Ljava/lang/Class;
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/data/ResourceReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
iput-object v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;
iput-object p2, p0, Lcom/ibm/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;
iput-object p3, p0, Lcom/ibm/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;
const/4 v1, -0x1
iput v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
if-nez p3, :cond_20
:try_start_f
new-instance v1, Ljava/io/InputStreamReader;
invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
move-object v0, v1
:goto_15
new-instance v1, Ljava/io/BufferedReader;
invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
iput-object v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;
const/4 v1, 0x0
iput v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
:goto_1f
return-void
:cond_20
new-instance v1, Ljava/io/InputStreamReader;
invoke-direct {v1, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
:try_end_25
.catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_25} :catch_27
move-object v0, v1
goto :goto_15
:catch_27
move-exception v1
goto :goto_1f
.end method
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;
iput-object p2, p0, Lcom/ibm/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
:try_start_d
invoke-direct {p0}, Lcom/ibm/icu/impl/data/ResourceReader;->_reset()V
:try_end_10
.catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_10} :catch_11
:goto_10
return-void
:catch_11
move-exception v0
goto :goto_10
.end method
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;
iput-object p2, p0, Lcom/ibm/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;
iput-object p3, p0, Lcom/ibm/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
invoke-direct {p0}, Lcom/ibm/icu/impl/data/ResourceReader;->_reset()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
const-class v0, Lcom/ibm/icu/impl/ICUData;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "data/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const-class v0, Lcom/ibm/icu/impl/ICUData;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "data/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1, p2}, Lcom/ibm/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private _reset()V
.registers 6
iget v2, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
if-nez v2, :cond_5
:goto_4
return-void
:cond_5
iget-object v2, p0, Lcom/ibm/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;
iget-object v3, p0, Lcom/ibm/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
if-nez v0, :cond_2a
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Can\'t open "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/ibm/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_2a
iget-object v2, p0, Lcom/ibm/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;
if-nez v2, :cond_3f
new-instance v2, Ljava/io/InputStreamReader;
invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
move-object v1, v2
:goto_34
new-instance v2, Ljava/io/BufferedReader;
invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
iput-object v2, p0, Lcom/ibm/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;
const/4 v2, 0x0
iput v2, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
goto :goto_4
:cond_3f
new-instance v2, Ljava/io/InputStreamReader;
iget-object v3, p0, Lcom/ibm/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;
invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
move-object v1, v2
goto :goto_34
.end method
.method public describePosition()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x3a
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLineNumber()I
.registers 2
iget v0, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
return v0
.end method
.method public readLine()Ljava/lang/String;
.registers 5
const/4 v3, 0x0
iget v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
if-nez v1, :cond_2a
iget v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
iget-object v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
const v2, 0xffef
if-eq v1, v2, :cond_23
invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
const v2, 0xfeff
if-ne v1, v2, :cond_28
:cond_23
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_28
move-object v1, v0
:goto_29
return-object v1
:cond_2a
iget v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->lineNo:I
iget-object v1, p0, Lcom/ibm/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v1
goto :goto_29
.end method
.method public readLineSkippingComments()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/data/ResourceReader;->readLineSkippingComments(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public readLineSkippingComments(Z)Ljava/lang/String;
.registers 7
:cond_0
invoke-virtual {p0}, Lcom/ibm/icu/impl/data/ResourceReader;->readLine()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
move-object v1, v0
:goto_7
return-object v1
:cond_8
const/4 v3, 0x0
invoke-static {v0, v3}, Lcom/ibm/icu/impl/Utility;->skipWhitespace(Ljava/lang/String;I)I
move-result v2
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-eq v2, v3, :cond_0
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x23
if-eq v3, v4, :cond_0
if-eqz p1, :cond_21
invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_21
move-object v1, v0
goto :goto_7
.end method
.method public reset()V
.registers 2
:try_start_0
invoke-direct {p0}, Lcom/ibm/icu/impl/data/ResourceReader;->_reset()V
:goto_3
:try_end_3
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
goto :goto_3
.end method
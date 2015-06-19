.class public Lcom/pinguo/camera360/cloud/struct/PostStruct;
.super Ljava/lang/Object;
.source "PostStruct.java"
.field public static final TYPE_BINARY:Ljava/lang/String; = "binary"
.field public static final TYPE_NULL:Ljava/lang/String; = "null"
.field public static final TYPE_TEXT:Ljava/lang/String; = "text"
.field private static final nBinaryOffset:I = 0x0
.field private static final nTextOffset:I = 0x0
.field private static final strSection_1:Ljava/lang/String; = "Content-Disposition: form-data; name=\""
.field private static final strSection_2:Ljava/lang/String; = "\"; filename=\""
.field private static final strSection_3:Ljava/lang/String; = "\"\r\nContent-Type: image/jpeg\r\n\r\n"
.field private static final strSection_4:Ljava/lang/String; = "\"\r\n\r\n"
.field private static final strSection_5:Ljava/lang/String; = "\r\n"
.field private lSendSize:J
.field private lSize:J
.field private strFileName:Ljava/lang/String;
.field private strFileType:Ljava/lang/String;
.field private strName:Ljava/lang/String;
.field private strType:Ljava/lang/String;
.field private strValue:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const-string/jumbo v0, "Content-Disposition: form-data; name=\""
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const-string/jumbo v1, "\"\r\n\r\n"
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/2addr v0, v1
const-string/jumbo v1, "\r\n"
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/2addr v0, v1
sput v0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->nTextOffset:I
const-string/jumbo v0, "Content-Disposition: form-data; name=\""
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const-string/jumbo v1, "\"; filename=\""
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/2addr v0, v1
const-string/jumbo v1, "\"\r\nContent-Type: image/jpeg\r\n\r\n"
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/2addr v0, v1
sput v0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->nBinaryOffset:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strName:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileType:Ljava/lang/String;
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSize:J
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSendSize:J
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strName:Ljava/lang/String;
invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
return-void
.end method
.method public createData()Z
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
const-string/jumbo v2, "binary"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_73
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_1f
const-string/jumbo v1, "null"
iput-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
const/4 v1, 0x0
:goto_1e
return v1
:cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
const-string/jumbo v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
add-int/lit8 v2, v2, 0x1
iget-object v3, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
const-string/jumbo v3, "."
invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
add-int/lit8 v2, v2, 0x1
iget-object v3, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileType:Ljava/lang/String;
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSize:J
iget-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSize:J
iget-object v3, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strName:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
array-length v3, v3
int-to-long v3, v3
add-long/2addr v1, v3
iget-object v3, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
array-length v3, v3
int-to-long v3, v3
add-long/2addr v1, v3
sget v3, Lcom/pinguo/camera360/cloud/struct/PostStruct;->nBinaryOffset:I
int-to-long v3, v3
add-long/2addr v1, v3
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSendSize:J
:cond_71
:goto_71
const/4 v1, 0x1
goto :goto_1e
:cond_73
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
const-string/jumbo v2, "text"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_94
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strName:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
array-length v1, v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
array-length v2, v2
add-int/2addr v1, v2
sget v2, Lcom/pinguo/camera360/cloud/struct/PostStruct;->nTextOffset:I
add-int/2addr v1, v2
int-to-long v1, v1
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSendSize:J
goto :goto_71
:cond_94
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
const-string/jumbo v2, "null"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_71
const-wide/16 v1, 0x0
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSendSize:J
goto :goto_71
.end method
.method public getBody()[B
.registers 4
const-string/jumbo v0, ""
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
const-string/jumbo v2, "binary"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_39
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Content-Disposition: form-data; name=\""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\"; filename=\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\"\r\nContent-Type: image/jpeg\r\n\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
:goto_38
return-object v1
:cond_39
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
const-string/jumbo v2, "text"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6f
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Content-Disposition: form-data; name=\""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\"\r\n\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
goto :goto_38
:cond_6f
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
const-string/jumbo v2, "null"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_82
const-string/jumbo v1, ""
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
goto :goto_38
:cond_82
const/4 v1, 0x0
goto :goto_38
.end method
.method public getFileName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileName:Ljava/lang/String;
return-object v0
.end method
.method public getFileSize()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSize:J
return-wide v0
.end method
.method public getFileType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strFileType:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strName:Ljava/lang/String;
return-object v0
.end method
.method public getSendSize()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->lSendSize:J
return-wide v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strType:Ljava/lang/String;
return-object v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
return-object v0
.end method
.method public release()V
.registers 1
return-void
.end method
.method public setValue(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/PostStruct;->strValue:Ljava/lang/String;
return-void
.end method
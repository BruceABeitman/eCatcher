.class public Ljavax/activation/FileDataSource;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/activation/DataSource;
.field private _file:Ljava/io/File;
.field private typeMap:Ljavax/activation/FileTypeMap;
.method public constructor <init>(Ljava/io/File;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;
iput-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;
iput-object p1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V
return-void
.end method
.method public getContentType()Ljava/lang/String;
.registers 3
iget-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;
if-nez v0, :cond_f
invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;
move-result-object v0
iget-object v1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;
invoke-virtual {v0, v1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/io/File;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;
iget-object v1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;
invoke-virtual {v0, v1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/io/File;)Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public getFile()Ljava/io/File;
.registers 2
iget-object v0, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/FileInputStream;
iget-object v1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getOutputStream()Ljava/io/OutputStream;
.registers 3
new-instance v0, Ljava/io/FileOutputStream;
iget-object v1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
return-object v0
.end method
.method public setFileTypeMap(Ljavax/activation/FileTypeMap;)V
.registers 2
iput-object p1, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;
return-void
.end method
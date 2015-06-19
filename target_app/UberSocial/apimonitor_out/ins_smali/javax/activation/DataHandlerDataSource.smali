.class  Ljavax/activation/DataHandlerDataSource;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/activation/DataSource;
.field  dataHandler:Ljavax/activation/DataHandler;
.method public constructor <init>(Ljavax/activation/DataHandler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;
iput-object p1, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;
return-void
.end method
.method public getContentType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;
invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;
invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;
invoke-virtual {v0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getOutputStream()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;
invoke-virtual {v0}, Ljavax/activation/DataHandler;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
return-object v0
.end method
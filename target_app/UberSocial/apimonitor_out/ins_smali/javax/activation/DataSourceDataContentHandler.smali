.class  Ljavax/activation/DataSourceDataContentHandler;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/activation/DataContentHandler;
.field private dch:Ljavax/activation/DataContentHandler;
.field private ds:Ljavax/activation/DataSource;
.field private transferFlavors:[Lc/a/a/a;
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;
iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lc/a/a/a;
iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
iput-object p2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;
iput-object p1, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
return-void
.end method
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
if-eqz v0, :cond_b
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
invoke-interface {v0, p1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
move-result-object v0
goto :goto_a
.end method
.method public getTransferData(Lc/a/a/a;Ljavax/activation/DataSource;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
if-eqz v0, :cond_b
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Lc/a/a/a;Ljavax/activation/DataSource;)Ljava/lang/Object;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-virtual {p0}, Ljavax/activation/DataSourceDataContentHandler;->getTransferDataFlavors()[Lc/a/a/a;
move-result-object v0
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-virtual {p1, v0}, Lc/a/a/a;->equals(Lc/a/a/a;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {p2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
move-result-object v0
goto :goto_a
:cond_1d
new-instance v0, Lc/a/a/f;
invoke-direct {v0, p1}, Lc/a/a/f;-><init>(Lc/a/a/a;)V
throw v0
.end method
.method public getTransferDataFlavors()[Lc/a/a/a;
.registers 6
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lc/a/a/a;
if-nez v0, :cond_10
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
if-eqz v0, :cond_13
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lc/a/a/a;
move-result-object v0
iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lc/a/a/a;
:goto_10
:cond_10
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lc/a/a/a;
return-object v0
:cond_13
const/4 v0, 0x1
new-array v0, v0, [Lc/a/a/a;
iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lc/a/a/a;
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lc/a/a/a;
const/4 v1, 0x0
new-instance v2, Ljavax/activation/ActivationDataFlavor;
iget-object v3, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;
invoke-interface {v3}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;
invoke-interface {v4}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
goto :goto_10
.end method
.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
.registers 7
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
if-eqz v0, :cond_a
iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;
invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
return-void
:cond_a
new-instance v0, Ljavax/activation/UnsupportedDataTypeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "no DCH for content type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;
invoke-interface {v2}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
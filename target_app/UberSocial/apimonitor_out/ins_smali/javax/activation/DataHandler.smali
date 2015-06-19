.class public Ljavax/activation/DataHandler;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lc/a/a/e;
.field private static final emptyFlavors:[Lc/a/a/a;
.field private static factory:Ljavax/activation/DataContentHandlerFactory;
.field private currentCommandMap:Ljavax/activation/CommandMap;
.field private dataContentHandler:Ljavax/activation/DataContentHandler;
.field private dataSource:Ljavax/activation/DataSource;
.field private factoryDCH:Ljavax/activation/DataContentHandler;
.field private objDataSource:Ljavax/activation/DataSource;
.field private object:Ljava/lang/Object;
.field private objectMimeType:Ljava/lang/String;
.field private oldFactory:Ljavax/activation/DataContentHandlerFactory;
.field private shortType:Ljava/lang/String;
.field private transferFlavors:[Lc/a/a/a;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lc/a/a/a;
sput-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lc/a/a/a;
const/4 v0, 0x0
sput-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;
iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lc/a/a/a;
iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;
iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
iput-object p1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
iput-object p2, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
return-void
.end method
.method public constructor <init>(Ljava/net/URL;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;
iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lc/a/a/a;
iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;
iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
new-instance v0, Ljavax/activation/URLDataSource;
invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V
iput-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
return-void
.end method
.method public constructor <init>(Ljavax/activation/DataSource;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
iput-object v1, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;
iput-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
iput-object v1, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
iput-object v1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lc/a/a/a;
iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;
iput-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
iput-object p1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
return-void
.end method
.method static synthetic access$0(Ljavax/activation/DataHandler;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic access$1(Ljavax/activation/DataHandler;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
return-object v0
.end method
.method private declared-synchronized getBaseType()Ljava/lang/String;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
if-nez v0, :cond_14
invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_1c
move-result-object v0
:try_start_9
new-instance v1, Ljavax/activation/MimeType;
invoke-direct {v1, v0}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljavax/activation/MimeType;->getBaseType()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
:cond_14
:try_start_14
:goto_14
:try_end_14
.catchall {:try_start_9 .. :try_end_14} :catchall_1c
.catch Ljavax/activation/MimeTypeParseException; {:try_start_9 .. :try_end_14} :catch_18
iget-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
:try_end_16
.catchall {:try_start_14 .. :try_end_16} :catchall_1c
monitor-exit p0
return-object v0
:catch_18
move-exception v1
:try_start_19
iput-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
:try_end_1b
.catchall {:try_start_19 .. :try_end_1b} :catchall_1c
goto :goto_14
:catchall_1c
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized getCommandMap()Ljavax/activation/CommandMap;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
if-eqz v0, :cond_9
iget-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_e
:goto_7
monitor-exit p0
return-object v0
:try_start_9
:cond_9
invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_e
move-result-object v0
goto :goto_7
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized getDataContentHandler()Ljavax/activation/DataContentHandler;
.registers 5
monitor-enter p0
:try_start_1
sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
iget-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
if-eq v0, v1, :cond_15
sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
const/4 v0, 0x0
iput-object v0, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;
const/4 v0, 0x0
iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lc/a/a/a;
iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
:cond_15
iget-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
if-eqz v0, :cond_1d
iget-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
:goto_1b
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_6a
monitor-exit p0
return-object v0
:try_start_1d
:cond_1d
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;
if-nez v1, :cond_31
sget-object v1, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
if-eqz v1, :cond_31
sget-object v1, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
invoke-interface {v1, v0}, Ljavax/activation/DataContentHandlerFactory;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
move-result-object v1
iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;
:cond_31
iget-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;
if-eqz v1, :cond_39
iget-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;
iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
:cond_39
iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
if-nez v1, :cond_4d
iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v1, :cond_5f
invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;
move-result-object v1
iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-virtual {v1, v0, v2}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/DataContentHandler;
move-result-object v0
iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
:goto_4d
:cond_4d
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_6d
new-instance v0, Ljavax/activation/DataSourceDataContentHandler;
iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-direct {v0, v1, v2}, Ljavax/activation/DataSourceDataContentHandler;-><init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V
iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
:goto_5c
iget-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
goto :goto_1b
:cond_5f
invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;
move-result-object v1
invoke-virtual {v1, v0}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
move-result-object v0
iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
:try_end_69
.catchall {:try_start_1d .. :try_end_69} :catchall_6a
goto :goto_4d
:catchall_6a
move-exception v0
monitor-exit p0
throw v0
:cond_6d
:try_start_6d
new-instance v0, Ljavax/activation/ObjectDataContentHandler;
iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
iget-object v2, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
iget-object v3, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ObjectDataContentHandler;-><init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V
iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
:try_end_7a
.catchall {:try_start_6d .. :try_end_7a} :catchall_6a
goto :goto_5c
.end method
.method public static declared-synchronized setDataContentHandlerFactory(Ljavax/activation/DataContentHandlerFactory;)V
.registers 5
const-class v1, Ljavax/activation/DataHandler;
monitor-enter v1
:try_start_3
sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
if-eqz v0, :cond_12
new-instance v0, Ljava/lang/Error;
const-string v2, "DataContentHandlerFactory already defined"
invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v0
:catchall_f
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_f
move-exception v0
monitor-exit v1
throw v0
:cond_12
:try_start_12
invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_f
move-result-object v0
if-eqz v0, :cond_1b
:try_start_18
invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V
:try_start_1b
:try_end_1b
.catchall {:try_start_18 .. :try_end_1b} :catchall_f
.catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1b} :catch_1f
:cond_1b
sput-object p0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
:try_end_1d
.catchall {:try_start_1b .. :try_end_1d} :catchall_f
monitor-exit v1
return-void
:catch_1f
move-exception v0
:try_start_20
const-class v2, Ljavax/activation/DataHandler;
invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v3
if-eq v2, v3, :cond_1b
throw v0
:try_end_31
.catchall {:try_start_20 .. :try_end_31} :catchall_f
.end method
.method public getAllCommands()[Ljavax/activation/CommandInfo;
.registers 4
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_13
invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;
move-result-object v0
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-virtual {v0, v1, v2}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;
move-result-object v0
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
move-result-object v0
goto :goto_12
.end method
.method public getBean(Ljavax/activation/CommandInfo;)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
if-nez v1, :cond_f
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
:cond_f
invoke-virtual {p1, p0, v1}, Ljavax/activation/CommandInfo;->getCommandObject(Ljavax/activation/DataHandler;Ljava/lang/ClassLoader;)Ljava/lang/Object;
:try_end_12
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_16
.catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_14
move-result-object v0
:goto_13
return-object v0
:catch_14
move-exception v1
goto :goto_13
:catch_16
move-exception v1
goto :goto_13
.end method
.method public getCommand(Ljava/lang/String;)Ljavax/activation/CommandInfo;
.registers 5
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_13
invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;
move-result-object v0
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-virtual {v0, v1, p1, v2}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/CommandInfo;
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;
move-result-object v0
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
move-result-object v0
goto :goto_12
.end method
.method public getContent()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
if-eqz v0, :cond_7
iget-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
:goto_6
return-object v0
:cond_7
invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;
move-result-object v0
invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;
move-result-object v1
invoke-interface {v0, v1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
.end method
.method public getContentType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_b
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-interface {v0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
goto :goto_a
.end method
.method public getDataSource()Ljavax/activation/DataSource;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-nez v0, :cond_12
iget-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;
if-nez v0, :cond_f
new-instance v0, Ljavax/activation/DataHandlerDataSource;
invoke-direct {v0, p0}, Ljavax/activation/DataHandlerDataSource;-><init>(Ljavax/activation/DataHandler;)V
iput-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;
:cond_f
iget-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;
:goto_11
return-object v0
:cond_12
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
goto :goto_11
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 6
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_b
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;
move-result-object v1
if-nez v1, :cond_2a
new-instance v0, Ljavax/activation/UnsupportedDataTypeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "no DCH for MIME type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2a
instance-of v0, v1, Ljavax/activation/ObjectDataContentHandler;
if-eqz v0, :cond_50
move-object v0, v1
check-cast v0, Ljavax/activation/ObjectDataContentHandler;
invoke-virtual {v0}, Ljavax/activation/ObjectDataContentHandler;->getDCH()Ljavax/activation/DataContentHandler;
move-result-object v0
if-nez v0, :cond_50
new-instance v0, Ljavax/activation/UnsupportedDataTypeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "no object DCH for MIME type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_50
new-instance v2, Ljava/io/PipedOutputStream;
invoke-direct {v2}, Ljava/io/PipedOutputStream;-><init>()V
new-instance v0, Ljava/io/PipedInputStream;
invoke-direct {v0, v2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V
new-instance v3, Ljava/lang/Thread;
new-instance v4, Ljavax/activation/DataHandler$1;
invoke-direct {v4, p0, v2, v1}, Ljavax/activation/DataHandler$1;-><init>(Ljavax/activation/DataHandler;Ljava/io/PipedOutputStream;Ljavax/activation/DataContentHandler;)V
const-string v1, "DataHandler.getInputStream"
invoke-direct {v3, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/Thread;->start()V
goto :goto_a
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_b
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-interface {v0}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getOutputStream()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_b
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-interface {v0}, Ljavax/activation/DataSource;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getPreferredCommands()[Ljavax/activation/CommandInfo;
.registers 4
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_13
invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;
move-result-object v0
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-virtual {v0, v1, v2}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;
move-result-object v0
invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
move-result-object v0
goto :goto_12
.end method
.method public getTransferData(Lc/a/a/a;)Ljava/lang/Object;
.registers 4
invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;
move-result-object v0
iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-interface {v0, p1, v1}, Ljavax/activation/DataContentHandler;->getTransferData(Lc/a/a/a;Ljavax/activation/DataSource;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized getTransferDataFlavors()[Lc/a/a/a;
.registers 3
monitor-enter p0
:try_start_1
sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
iget-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;
if-eq v0, v1, :cond_b
sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lc/a/a/a;
iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
:cond_b
iget-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
sget-object v1, Ljavax/activation/DataHandler;->emptyFlavors:[Lc/a/a/a;
if-ne v0, v1, :cond_1b
invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;
move-result-object v0
invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lc/a/a/a;
move-result-object v0
iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
:cond_1b
iget-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
:try_end_1d
.catchall {:try_start_1 .. :try_end_1d} :catchall_1f
monitor-exit p0
return-object v0
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public isDataFlavorSupported(Lc/a/a/a;)Z
.registers 6
const/4 v1, 0x0
invoke-virtual {p0}, Ljavax/activation/DataHandler;->getTransferDataFlavors()[Lc/a/a/a;
move-result-object v2
move v0, v1
:goto_6
array-length v3, v2
if-lt v0, v3, :cond_a
:goto_9
return v1
:cond_a
aget-object v3, v2, v0
invoke-virtual {v3, p1}, Lc/a/a/a;->equals(Lc/a/a/a;)Z
move-result v3
if-eqz v3, :cond_14
const/4 v1, 0x1
goto :goto_9
:cond_14
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method public declared-synchronized setCommandMap(Ljavax/activation/CommandMap;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
if-ne p1, v0, :cond_7
if-nez p1, :cond_10
:cond_7
sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Lc/a/a/a;
iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Lc/a/a/a;
const/4 v0, 0x0
iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
iput-object p1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
:cond_10
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 6
iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
if-eqz v0, :cond_22
const/16 v0, 0x2000
new-array v0, v0, [B
iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;
invoke-interface {v1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
move-result-object v1
:try_start_e
:goto_e
invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
:try_end_11
.catchall {:try_start_e .. :try_end_11} :catchall_1d
move-result v2
if-gtz v2, :cond_18
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:goto_17
return-void
:cond_18
const/4 v3, 0x0
:try_start_19
invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
:try_end_1c
.catchall {:try_start_19 .. :try_end_1c} :catchall_1d
goto :goto_e
:catchall_1d
move-exception v0
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
throw v0
:cond_22
invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;
move-result-object v0
iget-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;
iget-object v2, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;
invoke-interface {v0, v1, v2, p1}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
goto :goto_17
.end method
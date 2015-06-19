.class public abstract Ljavax/activation/FileTypeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultMap:Ljavax/activation/FileTypeMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;
    .registers 1

    sget-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    if-nez v0, :cond_b

    new-instance v0, Ljavax/activation/MimetypesFileTypeMap;

    invoke-direct {v0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    :cond_b
    sget-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    return-object v0
.end method

.method public static setDefaultFileTypeMap(Ljavax/activation/FileTypeMap;)V
    .registers 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_c

    :cond_9
    sput-object p0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    return-void

    :catch_c
    move-exception v0

    const-class v1, Ljavax/activation/FileTypeMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v1, v2, :cond_9

    throw v0
.end method


# virtual methods
.method public abstract getContentType(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract getContentType(Ljava/lang/String;)Ljava/lang/String;
.end method

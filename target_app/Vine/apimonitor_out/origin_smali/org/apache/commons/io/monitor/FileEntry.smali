.class public Lorg/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "FileEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;


# instance fields
.field private children:[Lorg/apache/commons/io/monitor/FileEntry;

.field private directory:Z

.field private exists:Z

.field private final file:Ljava/io/File;

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field private final parent:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    sput-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildren()[Lorg/apache/commons/io/monitor/FileEntry;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_6
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    return-wide v0
.end method

.method public getLength()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-wide v0
.end method

.method public getLevel()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/io/monitor/FileEntry;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return v0
.end method

.method public isExists()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return v0
.end method

.method public newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .registers 3

    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    iget-boolean v1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    iget-wide v2, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    iget-wide v4, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v6, :cond_4f

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    :goto_1f
    iput-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v6, :cond_51

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    :goto_29
    iput-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v6, :cond_37

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-nez v6, :cond_37

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    :cond_37
    iput-wide v10, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-ne v6, v1, :cond_4d

    iget-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    cmp-long v6, v8, v2

    if-nez v6, :cond_4d

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-ne v6, v0, :cond_4d

    iget-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_4e

    :cond_4d
    const/4 v7, 0x1

    :cond_4e
    return v7

    :cond_4f
    move v6, v7

    goto :goto_1f

    :cond_51
    move-wide v8, v10

    goto :goto_29
.end method

.method public setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public setDirectory(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return-void
.end method

.method public setExists(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return-void
.end method

.method public setLastModified(J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    return-void
.end method

.method public setLength(J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void
.end method

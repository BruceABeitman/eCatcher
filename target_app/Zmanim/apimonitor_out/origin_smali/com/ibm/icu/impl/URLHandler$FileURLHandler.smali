.class Lcom/ibm/icu/impl/URLHandler$FileURLHandler;
.super Lcom/ibm/icu/impl/URLHandler;
.source "URLHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/URLHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileURLHandler"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field root:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .registers 4

    invoke-direct {p0}, Lcom/ibm/icu/impl/URLHandler;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->root:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->root:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/ibm/icu/impl/URLHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "file does not exist"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2d
    return-void
.end method

.method private process(Lcom/ibm/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V
    .registers 14

    const/4 v7, 0x0

    :goto_1
    array-length v0, p5

    if-ge v7, v0, :cond_57

    aget-object v6, p5, v7

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p2, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->process(Lcom/ibm/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V

    :cond_34
    :goto_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_37
    if-eqz p3, :cond_41

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V

    goto :goto_34

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_57
    return-void
.end method


# virtual methods
.method public guide(Lcom/ibm/icu/impl/URLHandler$URLVisitor;ZZ)V
    .registers 10

    iget-object v0, p0, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v4, "/"

    iget-object v0, p0, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->process(Lcom/ibm/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V

    goto :goto_17
.end method

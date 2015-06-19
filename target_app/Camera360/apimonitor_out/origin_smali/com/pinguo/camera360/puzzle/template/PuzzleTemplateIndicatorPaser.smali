.class public Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;
.super Ljava/lang/Object;
.source "PuzzleTemplateIndicatorPaser.java"


# static fields
.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final PNG:Ljava/lang/String; = "png"

.field public static final PRESSED:Ljava/lang/String; = "pressed"

.field public static final PUZZLE:Ljava/lang/String; = "puzzle"

.field public static final TAG:Ljava/lang/String; = "PuzzleTemplateIndicatorPaser"

.field public static final XML:Ljava/lang/String; = "xml"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getList(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v7, "PuzzleTemplateIndicatorPaser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Path"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "puzzle"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/PgCameraApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_39
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "PuzzleTemplateIndicatorPaser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Path_Size:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_55
    array-length v7, v6

    if-lt v3, v7, :cond_59

    :goto_58
    return-object v5

    :cond_59
    aget-object v2, v6, v3

    invoke-static {v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;->isXML(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ed

    const-string/jumbo v7, "PuzzleTemplateIndicatorPaser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Path Filter"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v7, "PuzzleTemplateIndicatorPaser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "xml path"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;->getXMLPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "PuzzleTemplateIndicatorPaser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "normal path"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;->getNormalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "PuzzleTemplateIndicatorPaser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pressed path"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;->getPressedPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "xml"

    invoke-static {p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;->getXMLPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "normal"

    invoke-static {p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;->getNormalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "pressed"

    invoke-static {p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;->getPressedPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_ed} :catch_f1

    :cond_ed
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_55

    :catch_f1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_58
.end method

.method private static getNormalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    const-string/jumbo v2, "_normal.png"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPressedPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    const-string/jumbo v2, "_pressed.png"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getXMLPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isXML(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

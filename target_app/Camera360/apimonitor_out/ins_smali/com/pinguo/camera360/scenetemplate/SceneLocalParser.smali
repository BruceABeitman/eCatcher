.class public Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;
.super Lcom/pinguo/camera360/scenetemplate/SceneParser;
.source "SceneLocalParser.java"
.field private static final TAG:Ljava/lang/String; = "SceneLocalParser"
.field private mLocalList:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/scenetemplate/SceneParser;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->mLocalList:Ljava/util/List;
return-void
.end method
.method private parseDirectory(Ljava/lang/String;)V
.registers 10
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;
move-result-object v1
array-length v5, v1
const/4 v4, 0x0
:goto_b
if-lt v4, v5, :cond_e
return-void
:cond_e
aget-object v3, v1, v4
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->parseFile(Ljava/lang/String;)V
add-int/lit8 v4, v4, 0x1
goto :goto_b
.end method
.method private parseFile(Ljava/lang/String;)V
.registers 16
const-string/jumbo v10, "."
invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v10
if-nez v10, :cond_12
const-string/jumbo v10, ".jpg"
invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v10
if-nez v10, :cond_13
:cond_12
:goto_12
return-void
:cond_13
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v10
const/4 v11, 0x0
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v12
const-string/jumbo v13, "."
invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v12
invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
const-string/jumbo v10, "_3"
invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v10
if-nez v10, :cond_12
const-string/jumbo v10, "_9"
invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v10
if-nez v10, :cond_12
invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v10
invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v10
sget-object v11, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_6a
const-string/jumbo v10, "\\d{14}\\.jpg"
const/4 v11, 0x2
invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v6
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v5
invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z
move-result v10
if-eqz v10, :cond_12
:cond_6a
const-string/jumbo v3, ""
const-string/jumbo v7, ""
const-string/jumbo v9, ""
const-string/jumbo v10, "_ef"
invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_163
const/4 v10, 0x0
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v11
add-int/lit8 v11, v11, -0x3
invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
new-instance v10, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v11
invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "_ef.jpg"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:goto_ad
new-instance v10, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v11
invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, ".png"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v10, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v11
invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, ".xml"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
new-instance v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-direct {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;-><init>()V
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFile(Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_113
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v10
invoke-virtual {v2, v10, v11}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFileLength(J)V
:cond_113
invoke-virtual {v2, v7}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setScenePngFile(Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_128
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v10
invoke-virtual {v2, v10, v11}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setScenePngFileLength(J)V
:cond_128
invoke-virtual {v2, v9}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneXmlFile(Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_13d
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v10
invoke-virtual {v2, v10, v11}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneXmlFileLength(J)V
:cond_13d
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setKey(Ljava/lang/String;)V
const-string/jumbo v10, "No"
invoke-virtual {v2, v10}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setClosed(Ljava/lang/String;)V
const/4 v10, 0x2
invoke-virtual {v2, v10}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setLocationType(I)V
iget-object v10, p0, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->mLocalList:Ljava/util/List;
invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_150
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-nez v11, :cond_18b
invoke-static {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->isCompleteSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Z
move-result v10
if-eqz v10, :cond_12
iget-object v10, p0, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->mLocalList:Ljava/util/List;
invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_12
:cond_163
new-instance v10, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v11
invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, ".jpg"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto/16 :goto_ad
:cond_18b
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-virtual {v8}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v11
invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_150
const-string/jumbo v10, "SceneLocalParser"
const-string/jumbo v11, "Template already exists!"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_12
.end method
.method public parse()Ljava/util/List;
.registers 10
new-instance v4, Ljava/io/File;
sget-object v5, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v4}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_13
iget-object v5, p0, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->mLocalList:Ljava/util/List;
:goto_12
return-object v5
:cond_13
array-length v6, v2
const/4 v5, 0x0
:goto_15
if-lt v5, v6, :cond_1a
iget-object v5, p0, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->mLocalList:Ljava/util/List;
goto :goto_12
:cond_1a
aget-object v0, v2, v5
new-instance v7, Ljava/lang/StringBuilder;
sget-object v8, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "/"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v1, Ljava/io/File;
invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isFile()Z
move-result v7
if-eqz v7, :cond_4f
invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object v7
invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v7}, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->parseFile(Ljava/lang/String;)V
:goto_4c
:cond_4c
add-int/lit8 v5, v5, 0x1
goto :goto_15
:cond_4f
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v7
if-eqz v7, :cond_4c
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v7}, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->parseDirectory(Ljava/lang/String;)V
goto :goto_4c
.end method
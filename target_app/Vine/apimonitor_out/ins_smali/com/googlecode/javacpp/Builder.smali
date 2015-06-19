.class public Lcom/googlecode/javacpp/Builder;
.super Ljava/lang/Object;
.source "Builder.java"
.field  classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
.field  compile:Z
.field  compilerOptions:Ljava/util/Collection;
.field  copyLibs:Z
.field  environmentVariables:Ljava/util/Map;
.field  header:Z
.field  jarPrefix:Ljava/lang/String;
.field  outputDirectory:Ljava/io/File;
.field  outputName:Ljava/lang/String;
.field  properties:Ljava/util/Properties;
.method public constructor <init>()V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;
iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->outputName:Ljava/lang/String;
iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->jarPrefix:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/googlecode/javacpp/Builder;->compile:Z
iput-boolean v2, p0, Lcom/googlecode/javacpp/Builder;->header:Z
iput-boolean v2, p0, Lcom/googlecode/javacpp/Builder;->copyLibs:Z
iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->environmentVariables:Ljava/util/Map;
iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->compilerOptions:Ljava/util/Collection;
sput-boolean v2, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z
invoke-static {}, Lcom/googlecode/javacpp/Loader;->loadProperties()Ljava/util/Properties;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
new-instance v0, Lcom/googlecode/javacpp/Builder$ClassScanner;
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
new-instance v2, Lcom/googlecode/javacpp/Builder$UserClassLoader;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
move-result-object v3
invoke-direct {v2, v3}, Lcom/googlecode/javacpp/Builder$UserClassLoader;-><init>(Ljava/lang/ClassLoader;)V
invoke-direct {v0, v1, v2}, Lcom/googlecode/javacpp/Builder$ClassScanner;-><init>(Ljava/util/Collection;Lcom/googlecode/javacpp/Builder$UserClassLoader;)V
iput-object v0, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/googlecode/javacpp/Builder;->compilerOptions:Ljava/util/Collection;
return-void
.end method
.method public static varargs createJar(Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V
.registers 20
sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Creating JAR file: "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
new-instance v8, Ljava/util/jar/JarOutputStream;
new-instance v14, Ljava/io/FileOutputStream;
move-object/from16 v0, p0
invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v8, v14}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
move-object/from16 v1, p2
array-length v9, v1
const/4 v7, 0x0
:goto_2a
if-ge v7, v9, :cond_ae
aget-object v4, v1, v7
invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v11
if-eqz p1, :cond_78
move-object/from16 v0, p1
array-length v14, v0
new-array v12, v14, [Ljava/lang/String;
const/4 v6, 0x0
:goto_3a
move-object/from16 v0, p1
array-length v14, v0
if-ge v6, v14, :cond_5f
new-instance v14, Ljava/io/File;
aget-object v15, p1, v6
invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v13
invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v14
if-eqz v14, :cond_5c
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v14
add-int/lit8 v14, v14, 0x1
invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v14
aput-object v14, v12, v6
:cond_5c
add-int/lit8 v6, v6, 0x1
goto :goto_3a
:cond_5f
const/4 v6, 0x0
:goto_60
array-length v14, v12
if-ge v6, v14, :cond_78
aget-object v14, v12, v6
if-eqz v14, :cond_75
aget-object v14, v12, v6
invoke-virtual {v14}, Ljava/lang/String;->length()I
move-result v14
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v15
if-ge v14, v15, :cond_75
aget-object v11, v12, v6
:cond_75
add-int/lit8 v6, v6, 0x1
goto :goto_60
:cond_78
new-instance v3, Ljava/util/zip/ZipEntry;
sget-char v14, Ljava/io/File;->separatorChar:C
const/16 v15, 0x2f
invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v14
invoke-direct {v3, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->lastModified()J
move-result-wide v14
invoke-virtual {v3, v14, v15}, Ljava/util/zip/ZipEntry;->setTime(J)V
invoke-virtual {v8, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
new-instance v5, Ljava/io/FileInputStream;
invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/16 v14, 0x400
new-array v2, v14, [B
:goto_98
invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I
move-result v10
const/4 v14, -0x1
if-eq v10, v14, :cond_a4
const/4 v14, 0x0
invoke-virtual {v8, v2, v14, v10}, Ljava/util/jar/JarOutputStream;->write([BII)V
goto :goto_98
:cond_a4
invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
invoke-virtual {v8}, Ljava/util/jar/JarOutputStream;->closeEntry()V
add-int/lit8 v7, v7, 0x1
goto/16 :goto_2a
:cond_ae
invoke-virtual {v8}, Ljava/util/jar/JarOutputStream;->close()V
return-void
.end method
.method public static includeJavaPaths(Lcom/googlecode/javacpp/Loader$ClassProperties;Z)V
.registers 24
invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;
move-result-object v17
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
const-string v19, "compiler.link.prefix"
const-string v20, ""
move-object/from16 v0, p0
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, "jvm"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, "compiler.link.suffix"
const-string v20, ""
move-object/from16 v0, p0
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
const-string v19, "library.prefix"
const-string v20, ""
move-object/from16 v0, p0
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, "jvm"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, "library.suffix"
const-string v20, ""
move-object/from16 v0, p0
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
const/16 v18, 0x2
move/from16 v0, v18
new-array v11, v0, [Ljava/lang/String;
const/16 v18, 0x2
move/from16 v0, v18
new-array v14, v0, [Ljava/lang/String;
new-instance v8, Lcom/googlecode/javacpp/Builder$1;
invoke-direct {v8, v11, v13, v14, v12}, Lcom/googlecode/javacpp/Builder$1;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
new-instance v18, Ljava/io/File;
const-string v19, "java.home"
invoke-static/range {v19 .. v19}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v10
:try_start_8a
invoke-virtual {v10}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
:try_end_8d
.catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_177
move-result-object v10
:goto_8e
new-instance v5, Ljava/util/LinkedList;
invoke-virtual {v10, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v18
invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v18
move-object/from16 v0, v18
invoke-direct {v5, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
:cond_9d
invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z
move-result v18
if-nez v18, :cond_cd
invoke-virtual {v5}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/io/File;
invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v3
array-length v15, v3
const/4 v9, 0x0
:goto_b3
if-ge v9, v15, :cond_9d
aget-object v7, v3, v9
:try_start_b7
invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
:try_end_ba
.catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_17a
move-result-object v7
:goto_bb
invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v18
if-nez v18, :cond_ca
invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_ca
add-int/lit8 v9, v9, 0x1
goto :goto_b3
:cond_cd
const/16 v18, 0x0
aget-object v18, v11, v18
if-eqz v18, :cond_15a
const/16 v18, 0x0
aget-object v18, v11, v18
const/16 v19, 0x1
aget-object v19, v11, v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_15a
const/16 v18, 0x1
const/16 v19, 0x0
aput-object v19, v11, v18
:goto_e7
:cond_e7
const/16 v18, 0x0
aget-object v18, v14, v18
if-eqz v18, :cond_101
const/16 v18, 0x0
aget-object v18, v14, v18
const/16 v19, 0x1
aget-object v19, v14, v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_101
const/16 v18, 0x1
const/16 v19, 0x0
aput-object v19, v14, v18
:cond_101
const-string v18, "compiler.includepath"
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-virtual {v0, v1, v11}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V
const-string v18, "platform.name"
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object/from16 v2, v17
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_159
if-eqz p1, :cond_138
const-string v18, "compiler.link"
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v18
const/16 v19, 0x0
const-string v20, "jvm"
invoke-virtual/range {v18 .. v20}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
const-string v18, "compiler.linkpath"
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-virtual {v0, v1, v14}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V
:cond_138
const-string v18, "macosx"
invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v18
if-eqz v18, :cond_159
const-string v18, "compiler.framework"
const/16 v19, 0x1
move/from16 v0, v19
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v19, v0
const/16 v20, 0x0
const-string v21, "JavaVM"
aput-object v21, v19, v20
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->addAll(Ljava/lang/String;[Ljava/lang/String;)V
:cond_159
return-void
:cond_15a
const/16 v18, 0x0
aget-object v18, v11, v18
if-nez v18, :cond_e7
const-string v16, "/System/Library/Frameworks/JavaVM.framework/Headers/"
new-instance v18, Ljava/io/File;
move-object/from16 v0, v18
move-object/from16 v1, v16
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z
move-result v18
if-eqz v18, :cond_e7
const/16 v18, 0x0
aput-object v16, v11, v18
goto/16 :goto_e7
:catch_177
move-exception v18
goto/16 :goto_8e
:catch_17a
move-exception v18
goto/16 :goto_bb
.end method
.method public static main([Ljava/lang/String;)V
.registers 9
const/4 v7, 0x0
const/4 v6, 0x1
const/4 v0, 0x0
new-instance v1, Lcom/googlecode/javacpp/Builder;
invoke-direct {v1}, Lcom/googlecode/javacpp/Builder;-><init>()V
const/4 v2, 0x0
:goto_9
array-length v3, p0
if-ge v2, v3, :cond_146
const-string v3, "-help"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_20
const-string v3, "--help"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_29
:cond_20
invoke-static {}, Lcom/googlecode/javacpp/Builder;->printHelp()V
invoke-static {v7}, Ljava/lang/System;->exit(I)V
:goto_26
add-int/lit8 v2, v2, 0x1
goto :goto_9
:cond_29
const-string v3, "-classpath"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_47
const-string v3, "-cp"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_47
const-string v3, "-lib"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4f
:cond_47
add-int/lit8 v2, v2, 0x1
aget-object v3, p0, v2
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->classPaths(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
goto :goto_26
:cond_4f
const-string v3, "-d"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_61
add-int/lit8 v2, v2, 0x1
aget-object v3, p0, v2
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->outputDirectory(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
goto :goto_26
:cond_61
const-string v3, "-o"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_73
add-int/lit8 v2, v2, 0x1
aget-object v3, p0, v2
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->outputName(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
goto :goto_26
:cond_73
const-string v3, "-cpp"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_87
const-string v3, "-nocompile"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8b
:cond_87
invoke-virtual {v1, v7}, Lcom/googlecode/javacpp/Builder;->compile(Z)Lcom/googlecode/javacpp/Builder;
goto :goto_26
:cond_8b
const-string v3, "-header"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_99
invoke-virtual {v1, v6}, Lcom/googlecode/javacpp/Builder;->header(Z)Lcom/googlecode/javacpp/Builder;
goto :goto_26
:cond_99
const-string v3, "-copylibs"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_a7
invoke-virtual {v1, v6}, Lcom/googlecode/javacpp/Builder;->copyLibs(Z)Lcom/googlecode/javacpp/Builder;
goto :goto_26
:cond_a7
const-string v3, "-jarprefix"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_ba
add-int/lit8 v2, v2, 0x1
aget-object v3, p0, v2
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->jarPrefix(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
goto/16 :goto_26
:cond_ba
const-string v3, "-properties"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_cd
add-int/lit8 v2, v2, 0x1
aget-object v3, p0, v2
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->properties(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
goto/16 :goto_26
:cond_cd
const-string v3, "-propertyfile"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_e0
add-int/lit8 v2, v2, 0x1
aget-object v3, p0, v2
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->propertyFile(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
goto/16 :goto_26
:cond_e0
aget-object v3, p0, v2
const-string v4, "-D"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_f1
aget-object v3, p0, v2
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->property(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
goto/16 :goto_26
:cond_f1
const-string v3, "-Xcompiler"
aget-object v4, p0, v2
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_108
new-array v3, v6, [Ljava/lang/String;
add-int/lit8 v2, v2, 0x1
aget-object v4, p0, v2
aput-object v4, v3, v7
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->compilerOptions([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
goto/16 :goto_26
:cond_108
aget-object v3, p0, v2
const-string v4, "-"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_13a
sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error: Invalid option \""
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
aget-object v5, p0, v2
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\""
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-static {}, Lcom/googlecode/javacpp/Builder;->printHelp()V
invoke-static {v6}, Ljava/lang/System;->exit(I)V
goto/16 :goto_26
:cond_13a
new-array v3, v6, [Ljava/lang/String;
aget-object v4, p0, v2
aput-object v4, v3, v7
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->classesOrPackages([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
const/4 v0, 0x1
goto/16 :goto_26
:cond_146
if-nez v0, :cond_14e
const/4 v3, 0x0
check-cast v3, [Ljava/lang/String;
invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->classesOrPackages([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
:cond_14e
invoke-virtual {v1}, Lcom/googlecode/javacpp/Builder;->build()[Ljava/io/File;
return-void
.end method
.method public static printHelp()V
.registers 4
const-class v1, Lcom/googlecode/javacpp/Builder;
invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_e
const-string v0, "unknown"
:cond_e
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "JavaCPP version "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "Copyright (C) 2011-2013 Samuel Audet <samuel.audet@gmail.com>\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "Project site: http://code.google.com/p/javacpp/\n\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "Licensed under the GNU General Public License version 2 (GPLv2) with Classpath exception.\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "Please refer to LICENSE.txt or http://www.gnu.org/licenses/ for details."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v1}, Ljava/io/PrintStream;->println()V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "Usage: java -jar javacpp.jar [options] [class or package (suffixed with .* or .**)]"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v1}, Ljava/io/PrintStream;->println()V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "where options include:"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v1}, Ljava/io/PrintStream;->println()V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -classpath <path>      Load user classes from path"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -d <directory>         Output all generated files to directory"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -o <name>              Output everything in a file named after given name"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -nocompile             Do not compile or delete the generated source files"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -header                Generate header file with declarations of callbacks functions"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -copylibs              Copy to output directory dependent libraries (link and preload)"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -jarprefix <prefix>    Also create a JAR file named \"<prefix>-<platform.name>.jar\""
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -properties <resource> Load all properties from resource"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -propertyfile <file>   Load all properties from file"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -D<property>=<value>   Set property to value"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "    -Xcompiler <option>    Pass option directly to compiler"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v1}, Ljava/io/PrintStream;->println()V
return-void
.end method
.method public build()[Ljava/io/File;
.registers 32
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Lcom/googlecode/javacpp/Builder$ClassScanner;->getClasses()Ljava/util/Collection;
move-result-object v28
invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->isEmpty()Z
move-result v28
if-eqz v28, :cond_12
const/4 v12, 0x0
:cond_11
:goto_11
return-object v12
:cond_12
new-instance v22, Ljava/util/LinkedList;
invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V
new-instance v21, Ljava/util/LinkedHashMap;
invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashMap;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Lcom/googlecode/javacpp/Builder$ClassScanner;->getClasses()Ljava/util/Collection;
move-result-object v28
invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v16
:goto_2a
:cond_2a
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v28
if-eqz v28, :cond_b5
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Class;
invoke-static {v4}, Lcom/googlecode/javacpp/Loader;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v28
move-object/from16 v0, v28
if-ne v0, v4, :cond_2a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
move-object/from16 v28, v0
const/16 v29, 0x0
move-object/from16 v0, v28
move/from16 v1, v29
invoke-static {v4, v0, v1}, Lcom/googlecode/javacpp/Loader;->loadProperties(Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;
move-result-object v23
const-string v28, "parser.target"
move-object/from16 v0, v23
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v26
if-eqz v26, :cond_76
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-nez v28, :cond_76
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lcom/googlecode/javacpp/Builder;->parse(Ljava/lang/Class;)Ljava/io/File;
move-result-object v10
if-eqz v10, :cond_2a
move-object/from16 v0, v22
invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_2a
:cond_76
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->outputName:Ljava/lang/String;
move-object/from16 v28, v0
if-eqz v28, :cond_a6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->outputName:Ljava/lang/String;
move-object/from16 v20, v0
:goto_84
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I
move-result v28
if-eqz v28, :cond_2a
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/util/LinkedList;
if-nez v6, :cond_a2
new-instance v6, Ljava/util/LinkedList;
invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_a2
invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_2a
:cond_a6
const-string v28, "loader.library"
const-string v29, ""
move-object/from16 v0, v23
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
goto :goto_84
:cond_b5
invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v28
invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v16
:cond_bd
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v28
if-eqz v28, :cond_1db
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v20
check-cast v20, Ljava/lang/String;
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/util/LinkedList;
invoke-virtual {v6}, Ljava/util/LinkedList;->size()I
move-result v28
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v28, v0
move-object/from16 v0, v28
invoke-virtual {v6, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v5
check-cast v5, [Ljava/lang/Class;
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v5, v1}, Lcom/googlecode/javacpp/Builder;->generateAndCompile([Ljava/lang/Class;Ljava/lang/String;)Ljava/io/File;
move-result-object v10
if-eqz v10, :cond_bd
move-object/from16 v0, v22
invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/googlecode/javacpp/Builder;->copyLibs:Z
move/from16 v28, v0
if-eqz v28, :cond_bd
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
move-object/from16 v28, v0
const/16 v29, 0x0
move-object/from16 v0, v28
move/from16 v1, v29
invoke-static {v5, v0, v1}, Lcom/googlecode/javacpp/Loader;->loadProperties([Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;
move-result-object v23
new-instance v24, Ljava/util/LinkedList;
invoke-direct/range {v24 .. v24}, Ljava/util/LinkedList;-><init>()V
const-string v28, "loader.preload"
move-object/from16 v0, v23
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v28
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
const-string v28, "compiler.link"
move-object/from16 v0, v23
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v28
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
move-object/from16 v28, v0
const/16 v29, 0x1
move-object/from16 v0, v28
move/from16 v1, v29
invoke-static {v5, v0, v1}, Lcom/googlecode/javacpp/Loader;->loadProperties([Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;
move-result-object v23
invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v8
invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v17
:cond_14b
:goto_14b
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
move-result v28
if-eqz v28, :cond_bd
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v25
check-cast v25, Ljava/lang/String;
const/16 v28, 0x0
move-object/from16 v0, v28
move-object/from16 v1, v23
move-object/from16 v2, v25
invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Loader;->findLibrary(Ljava/lang/Class;Lcom/googlecode/javacpp/Loader$ClassProperties;Ljava/lang/String;)[Ljava/net/URL;
move-result-object v27
:try_start_163
new-instance v11, Ljava/io/File;
const/16 v28, 0x0
aget-object v28, v27, v28
invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->toURI()Ljava/net/URI;
move-result-object v28
move-object/from16 v0, v28
invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V
:try_end_172
.catch Ljava/lang/Exception; {:try_start_163 .. :try_end_172} :catch_1cb
new-instance v14, Ljava/io/File;
invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v28
move-object/from16 v0, v28
invoke-direct {v14, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v11}, Ljava/io/File;->exists()Z
move-result v28
if-eqz v28, :cond_14b
move-object/from16 v0, v22
invoke-virtual {v0, v14}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
move-result v28
if-nez v28, :cond_14b
sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v29, Ljava/lang/StringBuilder;
invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V
const-string v30, "Copying library file: "
invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v29
move-object/from16 v0, v29
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v29
invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v29
invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
new-instance v13, Ljava/io/FileInputStream;
invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
new-instance v15, Ljava/io/FileOutputStream;
invoke-direct {v15, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v28, 0x400
move/from16 v0, v28
new-array v3, v0, [B
:goto_1b5
invoke-virtual {v13, v3}, Ljava/io/FileInputStream;->read([B)I
move-result v19
const/16 v28, -0x1
move/from16 v0, v19
move/from16 v1, v28
if-eq v0, v1, :cond_1ce
const/16 v28, 0x0
move/from16 v0, v28
move/from16 v1, v19
invoke-virtual {v15, v3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
goto :goto_1b5
:catch_1cb
move-exception v9
goto/16 :goto_14b
:cond_1ce
invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
move-object/from16 v0, v22
invoke-virtual {v0, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto/16 :goto_14b
:cond_1db
invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I
move-result v28
move/from16 v0, v28
new-array v0, v0, [Ljava/io/File;
move-object/from16 v28, v0
move-object/from16 v0, v22
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v12
check-cast v12, [Ljava/io/File;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->jarPrefix:Ljava/lang/String;
move-object/from16 v28, v0
if-eqz v28, :cond_11
array-length v0, v12
move/from16 v28, v0
if-lez v28, :cond_11
new-instance v18, Ljava/io/File;
new-instance v28, Ljava/lang/StringBuilder;
invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->jarPrefix:Ljava/lang/String;
move-object/from16 v29, v0
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
const-string v29, "-"
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
move-object/from16 v29, v0
const-string v30, "platform.name"
invoke-virtual/range {v29 .. v30}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v29
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v28
const-string v29, ".jar"
invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v28
move-object/from16 v0, v18
move-object/from16 v1, v28
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v7
if-eqz v7, :cond_243
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v28
if-nez v28, :cond_243
invoke-virtual {v7}, Ljava/io/File;->mkdir()Z
:cond_243
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;
move-object/from16 v28, v0
if-nez v28, :cond_262
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Lcom/googlecode/javacpp/Builder$ClassScanner;->getClassLoader()Lcom/googlecode/javacpp/Builder$UserClassLoader;
move-result-object v28
invoke-virtual/range {v28 .. v28}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->getPaths()[Ljava/lang/String;
move-result-object v28
:goto_259
move-object/from16 v0, v18
move-object/from16 v1, v28
invoke-static {v0, v1, v12}, Lcom/googlecode/javacpp/Builder;->createJar(Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V
goto/16 :goto_11
:cond_262
const/16 v28, 0x0
goto :goto_259
.end method
.method public classPaths(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 3
if-nez p1, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder;->classPaths([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
return-object p0
:cond_7
sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public varargs classPaths([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 3
iget-object v0, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
invoke-virtual {v0}, Lcom/googlecode/javacpp/Builder$ClassScanner;->getClassLoader()Lcom/googlecode/javacpp/Builder$UserClassLoader;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->addPaths([Ljava/lang/String;)V
return-object p0
.end method
.method public varargs classesOrPackages([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 9
if-nez p1, :cond_a
iget-object v4, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
const/4 v5, 0x0
const/4 v6, 0x1
invoke-virtual {v4, v5, v6}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addPackage(Ljava/lang/String;Z)V
:cond_9
return-object p0
:cond_a
move-object v0, p1
array-length v2, v0
const/4 v1, 0x0
:goto_d
if-ge v1, v2, :cond_9
aget-object v3, v0, v1
iget-object v4, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
invoke-virtual {v4, v3}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addClassOrPackage(Ljava/lang/String;)V
add-int/lit8 v1, v1, 0x1
goto :goto_d
.end method
.method public compile(Ljava/lang/String;Ljava/lang/String;Lcom/googlecode/javacpp/Loader$ClassProperties;)I
.registers 26
new-instance v4, Ljava/util/LinkedList;
invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/googlecode/javacpp/Builder;->header:Z
move/from16 v19, v0
move-object/from16 v0, p3
move/from16 v1, v19
invoke-static {v0, v1}, Lcom/googlecode/javacpp/Builder;->includeJavaPaths(Lcom/googlecode/javacpp/Loader$ClassProperties;Z)V
invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;
move-result-object v15
const-string v19, "compiler.path"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
const-string v19, "compiler.sysroot.prefix"
const-string v20, ""
move-object/from16 v0, p3
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const-string v19, "compiler.sysroot"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_3f
:cond_3f
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-eqz v19, :cond_90
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/lang/String;
new-instance v19, Ljava/io/File;
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z
move-result v19
if-eqz v19, :cond_3f
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_73
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v16
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_3f
:cond_73
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_3f
:cond_90
const-string v19, "compiler.includepath.prefix"
const-string v20, ""
move-object/from16 v0, p3
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const-string v19, "compiler.includepath"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_ac
:goto_ac
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-eqz v19, :cond_fd
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/lang/String;
new-instance v19, Ljava/io/File;
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z
move-result v19
if-eqz v19, :cond_ac
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_e0
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v16
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_ac
:cond_e0
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_ac
:cond_fd
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
const-string v19, "compiler.options"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z
move-result v19
if-eqz v19, :cond_119
const-string v19, "default"
move-object/from16 v0, v19
invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_119
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_11d
:goto_11d
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-eqz v19, :cond_195
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/lang/String;
if-eqz v16, :cond_11d
invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I
move-result v19
if-eqz v19, :cond_11d
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, "compiler.options."
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
move-object/from16 v0, p3
invoke-virtual {v0, v12}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
if-eqz v10, :cond_168
invoke-virtual {v10}, Ljava/lang/String;->length()I
move-result v19
if-lez v19, :cond_168
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
goto :goto_11d
:cond_168
const-string v19, "default"
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-nez v19, :cond_11d
sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string v21, "Warning: Could not get the property named \""
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "\""
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_11d
:cond_195
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->compilerOptions:Ljava/util/Collection;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
const-string v19, "compiler.output.prefix"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
if-eqz v11, :cond_1c3
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v19
if-lez v19, :cond_1c3
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
:cond_1c3
if-eqz v11, :cond_1d5
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v19
if-eqz v19, :cond_1d5
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_24e
:cond_1d5
move-object/from16 v0, p2
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:goto_1da
const-string v19, "compiler.linkpath.prefix"
const-string v20, ""
move-object/from16 v0, p3
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const-string v19, "compiler.linkpath.prefix2"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
const-string v19, "compiler.linkpath"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_200
:cond_200
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-eqz v19, :cond_2af
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/lang/String;
new-instance v19, Ljava/io/File;
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z
move-result v19
if-eqz v19, :cond_200
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_274
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v16
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:goto_233
if-eqz v13, :cond_200
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_291
invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v16
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_200
:cond_24e
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto/16 :goto_1da
:cond_274
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_233
:cond_291
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto/16 :goto_200
:cond_2af
const-string v19, "compiler.link.prefix"
const-string v20, ""
move-object/from16 v0, p3
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const-string v19, "compiler.link.suffix"
const-string v20, ""
move-object/from16 v0, p3
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
invoke-virtual {v4}, Ljava/util/LinkedList;->size()I
move-result v7
const-string v19, "compiler.link"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_2dd
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-eqz v19, :cond_3e8
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/lang/String;
const-string v19, "@"
move-object/from16 v0, v16
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v9
array-length v0, v9
move/from16 v19, v0
const/16 v20, 0x3
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_353
const/16 v19, 0x1
aget-object v19, v9, v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v19
if-nez v19, :cond_353
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const/16 v20, 0x0
aget-object v20, v9, v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const/16 v20, 0x2
aget-object v20, v9, v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
:goto_321
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_358
const-string v19, " "
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_358
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v7, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
add-int/lit8 v19, v7, 0x1
move/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v4, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
add-int/lit8 v19, v7, 0x2
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v20
move/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v4, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
goto :goto_2dd
:cond_353
const/16 v19, 0x0
aget-object v16, v9, v19
goto :goto_321
:cond_358
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_38f
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v7, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
add-int/lit8 v19, v7, 0x1
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
move/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v4, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
goto/16 :goto_2dd
:cond_38f
const-string v19, " "
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_3c2
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v7, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
add-int/lit8 v19, v7, 0x1
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v20
move/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v4, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
goto/16 :goto_2dd
:cond_3c2
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v7, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
goto/16 :goto_2dd
:cond_3e8
const-string v19, "compiler.framework.prefix"
const-string v20, ""
move-object/from16 v0, p3
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const-string v19, "compiler.framework.suffix"
const-string v20, ""
move-object/from16 v0, p3
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
const-string v19, "compiler.framework"
move-object/from16 v0, p3
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_412
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-eqz v19, :cond_4cf
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/lang/String;
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_448
const-string v19, " "
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_448
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v16
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_412
:cond_448
const-string v19, " "
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_47a
invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_412
:cond_47a
const-string v19, " "
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_4a9
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto/16 :goto_412
:cond_4a9
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto/16 :goto_412
:cond_4cf
const-string v19, "windows"
move-object/from16 v0, v19
invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v17
invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_4db
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-eqz v19, :cond_52b
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/lang/String;
const-string v19, " "
move-object/from16 v0, v16
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v19
if-lez v19, :cond_523
const/4 v6, 0x1
:goto_4f4
if-eqz v6, :cond_503
sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;
if-eqz v17, :cond_525
const-string v19, "\""
:goto_4fc
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
:cond_503
sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
if-eqz v6, :cond_51b
sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;
if-eqz v17, :cond_528
const-string v19, "\""
:goto_514
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
:cond_51b
sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v20, " "
invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
goto :goto_4db
:cond_523
const/4 v6, 0x0
goto :goto_4f4
:cond_525
const-string v19, "\'"
goto :goto_4fc
:cond_528
const-string v19, "\'"
goto :goto_514
:cond_52b
sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V
new-instance v14, Ljava/lang/ProcessBuilder;
invoke-direct {v14, v4}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->environmentVariables:Ljava/util/Map;
move-object/from16 v19, v0
if-eqz v19, :cond_54a
invoke-virtual {v14}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->environmentVariables:Ljava/util/Map;
move-object/from16 v20, v0
invoke-interface/range {v19 .. v20}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_54a
invoke-virtual {v14}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
move-result-object v12
new-instance v19, Lcom/googlecode/javacpp/Builder$Piper;
invoke-virtual {v12}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
move-result-object v20
sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-direct/range {v19 .. v21}, Lcom/googlecode/javacpp/Builder$Piper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacpp/Builder$Piper;->start()V
new-instance v19, Lcom/googlecode/javacpp/Builder$Piper;
invoke-virtual {v12}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
move-result-object v20
sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-direct/range {v19 .. v21}, Lcom/googlecode/javacpp/Builder$Piper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacpp/Builder$Piper;->start()V
invoke-virtual {v12}, Ljava/lang/Process;->waitFor()I
move-result v19
return v19
.end method
.method public compile(Z)Lcom/googlecode/javacpp/Builder;
.registers 2
iput-boolean p1, p0, Lcom/googlecode/javacpp/Builder;->compile:Z
return-object p0
.end method
.method public varargs compilerOptions([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 4
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/googlecode/javacpp/Builder;->compilerOptions:Ljava/util/Collection;
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
:cond_b
return-object p0
.end method
.method public copyLibs(Z)Lcom/googlecode/javacpp/Builder;
.registers 2
iput-boolean p1, p0, Lcom/googlecode/javacpp/Builder;->copyLibs:Z
return-object p0
.end method
.method public environmentVariables(Ljava/util/Map;)Lcom/googlecode/javacpp/Builder;
.registers 2
iput-object p1, p0, Lcom/googlecode/javacpp/Builder;->environmentVariables:Ljava/util/Map;
return-object p0
.end method
.method public generateAndCompile([Ljava/lang/Class;Ljava/lang/String;)Ljava/io/File;
.registers 31
const/4 v13, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
move-object/from16 v23, v0
const/16 v24, 0x1
move-object/from16 v0, p1
move-object/from16 v1, v23
move/from16 v2, v24
invoke-static {v0, v1, v2}, Lcom/googlecode/javacpp/Loader;->loadProperties([Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;
move-result-object v15
const-string v23, "platform.name"
move-object/from16 v0, v23
invoke-virtual {v15, v0}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
const-string v23, "source.suffix"
const-string v24, ".cpp"
move-object/from16 v0, v23
move-object/from16 v1, v24
invoke-virtual {v15, v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v22
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "library.prefix"
const-string v25, ""
move-object/from16 v0, v24
move-object/from16 v1, v25
invoke-virtual {v15, v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "library.suffix"
const-string v25, ""
move-object/from16 v0, v24
move-object/from16 v1, v25
invoke-virtual {v15, v0, v1}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;
move-object/from16 v23, v0
if-nez v23, :cond_14f
const/16 v23, 0x0
:try_start_62
aget-object v23, p1, v23
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
const/16 v25, 0x2f
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v24
const/16 v25, 0x0
aget-object v25, p1, v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v25
const/16 v26, 0x2e
const/16 v27, 0x2f
invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v25
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
const-string v25, ".class"
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
move-result-object v18
new-instance v23, Ljava/io/File;
invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->toURI()Ljava/net/URI;
move-result-object v24
invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/net/URI;)V
invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v16
new-instance v14, Ljava/io/File;
move-object/from16 v0, v16
move-object/from16 v1, v17
invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_c5
.catch Ljava/net/URISyntaxException; {:try_start_62 .. :try_end_c5} :catch_146
move-result-object v21
:goto_c6
invoke-virtual {v14}, Ljava/io/File;->exists()Z
move-result v23
if-nez v23, :cond_cf
invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z
:cond_cf
new-instance v7, Lcom/googlecode/javacpp/Generator;
invoke-direct {v7, v15}, Lcom/googlecode/javacpp/Generator;-><init>(Lcom/googlecode/javacpp/Loader$ClassProperties;)V
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v23
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/googlecode/javacpp/Builder;->header:Z
move/from16 v23, v0
if-eqz v23, :cond_174
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v23
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, ".h"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
:goto_10c
const-string v23, "java.class.path"
invoke-static/range {v23 .. v23}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;
move-object/from16 v23, v0
invoke-virtual/range {v23 .. v23}, Lcom/googlecode/javacpp/Builder$ClassScanner;->getClassLoader()Lcom/googlecode/javacpp/Builder$UserClassLoader;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->getPaths()[Ljava/lang/String;
move-result-object v3
array-length v10, v3
const/4 v9, 0x0
:goto_122
if-ge v9, v10, :cond_176
aget-object v19, v3, v9
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v23
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
sget-object v24, Ljava/io/File;->pathSeparator:Ljava/lang/String;
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
add-int/lit8 v9, v9, 0x1
goto :goto_122
:catch_146
move-exception v5
new-instance v23, Ljava/lang/RuntimeException;
move-object/from16 v0, v23
invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v23
:cond_14f
move-object/from16 v0, p0
iget-object v14, v0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
goto/16 :goto_c6
:cond_174
const/4 v8, 0x0
goto :goto_10c
:cond_176
sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
const-string v25, "Generating source file: "
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v7, v0, v8, v4, v1}, Lcom/googlecode/javacpp/Generator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
move-result v23
if-eqz v23, :cond_206
invoke-virtual {v7}, Lcom/googlecode/javacpp/Generator;->close()V
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/googlecode/javacpp/Builder;->compile:Z
move/from16 v23, v0
if-eqz v23, :cond_1fe
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
const-string v25, "Compiling library file: "
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v1, v11, v15}, Lcom/googlecode/javacpp/Builder;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/googlecode/javacpp/Loader$ClassProperties;)I
move-result v6
if-nez v6, :cond_1fa
new-instance v23, Ljava/io/File;
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
new-instance v13, Ljava/io/File;
invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:goto_1f9
return-object v13
:cond_1fa
invoke-static {v6}, Ljava/lang/System;->exit(I)V
goto :goto_1f9
:cond_1fe
new-instance v13, Ljava/io/File;
move-object/from16 v0, v20
invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_1f9
:cond_206
sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
const-string v25, "Source file not generated: "
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_1f9
.end method
.method public header(Z)Lcom/googlecode/javacpp/Builder;
.registers 2
iput-boolean p1, p0, Lcom/googlecode/javacpp/Builder;->header:Z
return-object p0
.end method
.method public jarPrefix(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 2
iput-object p1, p0, Lcom/googlecode/javacpp/Builder;->jarPrefix:Ljava/lang/String;
return-object p0
.end method
.method public outputDirectory(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;
.registers 2
iput-object p1, p0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;
return-object p0
.end method
.method public outputDirectory(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 3
if-nez p1, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder;->outputDirectory(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;
return-object p0
:cond_7
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_3
.end method
.method public outputName(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 2
iput-object p1, p0, Lcom/googlecode/javacpp/Builder;->outputName:Ljava/lang/String;
return-object p0
.end method
.method public parse(Ljava/lang/Class;)Ljava/io/File;
.registers 6
new-instance v0, Lcom/googlecode/javacpp/Parser$InfoMap;
invoke-direct {v0}, Lcom/googlecode/javacpp/Parser$InfoMap;-><init>()V
:try_start_5
invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v1
instance-of v2, v1, Lcom/googlecode/javacpp/Parser$InfoMapper;
if-eqz v2, :cond_12
check-cast v1, Lcom/googlecode/javacpp/Parser$InfoMapper;
invoke-interface {v1, v0}, Lcom/googlecode/javacpp/Parser$InfoMapper;->map(Lcom/googlecode/javacpp/Parser$InfoMap;)V
:cond_12
:goto_12
:try_end_12
.catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_12} :catch_22
.catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_12} :catch_20
new-instance v2, Lcom/googlecode/javacpp/Parser;
iget-object v3, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
invoke-direct {v2, v3, v0}, Lcom/googlecode/javacpp/Parser;-><init>(Ljava/util/Properties;Lcom/googlecode/javacpp/Parser$InfoMap;)V
iget-object v3, p0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;
invoke-virtual {v2, v3, p1}, Lcom/googlecode/javacpp/Parser;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/io/File;
move-result-object v2
return-object v2
:catch_20
move-exception v2
goto :goto_12
:catch_22
move-exception v2
goto :goto_12
.end method
.method public properties(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 3
if-nez p1, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder;->properties(Ljava/util/Properties;)Lcom/googlecode/javacpp/Builder;
return-object p0
:cond_7
invoke-static {p1}, Lcom/googlecode/javacpp/Loader;->loadProperties(Ljava/lang/String;)Ljava/util/Properties;
move-result-object v0
goto :goto_3
.end method
.method public properties(Ljava/util/Properties;)Lcom/googlecode/javacpp/Builder;
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
:cond_7
return-object p0
.end method
.method public property(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 5
const/16 v1, 0x3d
invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_e
const/16 v1, 0x3a
invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I
move-result v0
:cond_e
const/4 v1, 0x2
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
add-int/lit8 v2, v0, 0x1
invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v1, v2}, Lcom/googlecode/javacpp/Builder;->property(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
return-object p0
.end method
.method public property(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_11
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_11
iget-object v0, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_11
return-object p0
.end method
.method public propertyFile(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;
.registers 6
if-nez p1, :cond_3
:goto_2
return-object p0
:cond_3
new-instance v1, Ljava/io/FileInputStream;
invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
new-instance v2, Ljava/util/Properties;
iget-object v3, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
invoke-direct {v2, v3}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V
iput-object v2, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
:try_start_11
iget-object v2, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
new-instance v3, Ljava/io/InputStreamReader;
invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
:goto_1b
:try_end_1b
.catch Ljava/lang/NoSuchMethodError; {:try_start_11 .. :try_end_1b} :catch_1f
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
goto :goto_2
:catch_1f
move-exception v0
iget-object v2, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;
invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
goto :goto_1b
.end method
.method public propertyFile(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
.registers 3
if-nez p1, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder;->propertyFile(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;
return-object p0
:cond_7
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_3
.end method
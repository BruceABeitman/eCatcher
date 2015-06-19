.class final Lcom/ibm/icu/impl/ICUResourceBundle$1;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"
.implements Ljava/security/PrivilegedAction;
.field final synthetic val$baseName:Ljava/lang/String;
.field final synthetic val$root:Ljava/lang/ClassLoader;
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
.registers 3
iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$1;->val$baseName:Ljava/lang/String;
iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$1;->val$root:Ljava/lang/ClassLoader;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()Ljava/lang/Object;
.registers 20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$1;->val$baseName:Ljava/lang/String;
move-object/from16 v16, v0
const-string v17, "/"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v16
if-eqz v16, :cond_af
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$1;->val$baseName:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v3, v16
:try_start_16
:goto_16
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v16
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
const-string v17, "res_index"
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
const-string v17, ".txt"
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;
move-result-object v16
if-nez v16, :cond_cc
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$1;->val$root:Ljava/lang/ClassLoader;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v12
invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v13
:goto_45
if-eqz v13, :cond_7c
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Ljava/io/BufferedReader;
new-instance v16, Ljava/io/InputStreamReader;
const-string v17, "ASCII"
move-object/from16 v0, v16
move-object v1, v13
move-object/from16 v2, v17
invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
move-object v0, v4
move-object/from16 v1, v16
invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:cond_60
:goto_60
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_dd
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v16
if-eqz v16, :cond_60
const-string v16, "#"
move-object v0, v7
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v16
if-nez v16, :cond_60
invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_7a
.catch Ljava/io/IOException; {:try_start_16 .. :try_end_7a} :catch_7b
goto :goto_60
:catch_7b
move-exception v16
:cond_7c
invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;
move-result-object v16
if-nez v16, :cond_e0
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$1;->val$root:Ljava/lang/ClassLoader;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v3
invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
move-result-object v14
invoke-static {v14}, Lcom/ibm/icu/impl/URLHandler;->get(Ljava/net/URL;)Lcom/ibm/icu/impl/URLHandler;
move-result-object v5
if-eqz v5, :cond_11f
new-instance v15, Lcom/ibm/icu/impl/ICUResourceBundle$1$1;
move-object v0, v15
move-object/from16 v1, p0
move-object v2, v9
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle$1$1;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$1;Ljava/util/ArrayList;)V
const/16 v16, 0x0
move-object v0, v5
move-object v1, v15
move/from16 v2, v16
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/URLHandler;->guide(Lcom/ibm/icu/impl/URLHandler$URLVisitor;Z)V
move-object/from16 v16, v9
:goto_ae
return-object v16
:cond_af
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$1;->val$baseName:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
const-string v17, "/"
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v3, v16
goto/16 :goto_16
:cond_cc
:try_start_cc
invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;
move-result-object v16
const/16 v17, 0x0
move-object/from16 v0, v16
move-object v1, v12
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/ICUAndroidBridge;->open(Ljava/lang/String;Z)Ljava/io/InputStream;
:try_end_da
.catch Ljava/io/IOException; {:try_start_cc .. :try_end_da} :catch_7b
move-result-object v13
goto/16 :goto_45
:cond_dd
move-object/from16 v16, v8
goto :goto_ae
:cond_e0
invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;
move-result-object v16
new-instance v17, Lcom/ibm/icu/impl/ICUResourceBundle$1$2;
move-object/from16 v0, v17
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle$1$2;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$1;)V
move-object/from16 v0, v16
move-object v1, v3
move-object/from16 v2, v17
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/ICUAndroidBridge;->list(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/ArrayList;
move-result-object v9
const/4 v6, 0x0
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v10
:goto_fb
if-ge v6, v10, :cond_11c
invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/String;
const/16 v16, 0x0
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v17
const/16 v18, 0x4
sub-int v17, v17, v18
move-object v0, v11
move/from16 v1, v16
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v11
invoke-virtual {v9, v6, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
add-int/lit8 v6, v6, 0x1
goto :goto_fb
:cond_11c
move-object/from16 v16, v9
goto :goto_ae
:cond_11f
const/16 v16, 0x0
goto :goto_ae
.end method
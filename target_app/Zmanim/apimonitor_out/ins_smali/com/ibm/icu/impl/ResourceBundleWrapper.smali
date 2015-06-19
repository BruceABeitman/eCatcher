.class public Lcom/ibm/icu/impl/ResourceBundleWrapper;
.super Lcom/ibm/icu/util/UResourceBundle;
.source "ResourceBundleWrapper.java"
.field private static final DEBUG:Z
.field private baseName:Ljava/lang/String;
.field private bundle:Ljava/util/ResourceBundle;
.field private keys:Ljava/util/Vector;
.field private localeID:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "resourceBundleWrapper"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z
move-result v0
sput-boolean v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->DEBUG:Z
return-void
.end method
.method private constructor <init>(Ljava/util/ResourceBundle;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;
iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/Vector;
iput-object p1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;
return-void
.end method
.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
.registers 10
invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
if-nez v0, :cond_37
const-string v1, "_"
const/16 v2, 0x2f
invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-ltz v2, :cond_12
const-string v1, "/"
:cond_12
new-instance v2, Ljava/util/MissingResourceException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Could not find the bundle "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, ""
const-string v5, ""
invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v2
:cond_37
return-object v0
.end method
.method private initKeysVector()V
.registers 5
move-object v0, p0
new-instance v3, Ljava/util/Vector;
invoke-direct {v3}, Ljava/util/Vector;-><init>()V
iput-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/Vector;
:goto_8
if-eqz v0, :cond_31
iget-object v3, v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;
invoke-virtual {v3}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;
move-result-object v1
:goto_10
:cond_10
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v3
if-eqz v3, :cond_2a
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/Vector;
invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_10
iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/Vector;
invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_2a
invoke-virtual {v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getParent()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;
goto :goto_8
:cond_31
return-void
.end method
.method protected static declared-synchronized instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
.registers 14
const-class v7, Lcom/ibm/icu/impl/ResourceBundleWrapper;
monitor-enter v7
if-nez p2, :cond_9
:try_start_5
invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
move-result-object p2
:cond_9
move-object v3, p2
move-object v0, p0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_1ad
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v5, v0
:goto_2d
invoke-static {v3, v5, v4}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;
if-nez v0, :cond_1aa
const/4 v2, 0x0
const/16 v1, 0x5f
invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
const/4 v6, -0x1
if-eq v1, v6, :cond_8d
const/4 v2, 0x0
invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, "_"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v3, v2, v4}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
check-cast v2, Lcom/ibm/icu/impl/ResourceBundleWrapper;
if-nez v2, :cond_1a7
invoke-static {p0, v1, v3, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;
:try_end_69
.catchall {:try_start_5 .. :try_end_69} :catchall_146
:goto_69
move-object v6, v1
:goto_6a
:try_start_6a
invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/ResourceBundle;
new-instance v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;)V
:try_end_79
.catchall {:try_start_6a .. :try_end_79} :catchall_146
.catch Ljava/lang/ClassNotFoundException; {:try_start_6a .. :try_end_79} :catch_a5
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_79} :catch_149
if-eqz v6, :cond_7e
:try_start_7b
invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V
:cond_7e
iput-object p0, v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;
iput-object p1, v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
:try_end_82
.catchall {:try_start_7b .. :try_end_82} :catchall_146
.catch Ljava/lang/ClassNotFoundException; {:try_start_7b .. :try_end_82} :catch_197
.catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_18d
move-object p3, v1
:cond_83
:goto_83
:try_start_83
invoke-static {v3, v5, v4, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->addToCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/UResourceBundle;)V
:goto_86
if-eqz p3, :cond_163
invoke-direct {p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->initKeysVector()V
:cond_8b
:goto_8b
:try_end_8b
.catchall {:try_start_83 .. :try_end_8b} :catchall_146
monitor-exit v7
return-object p3
:cond_8d
:try_start_8d
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_1a4
invoke-static {v3, p0, v4}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;
if-nez v1, :cond_1a1
const-string v1, ""
invoke-static {p0, v1, v3, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;
move-object v6, v1
goto :goto_6a
:catch_a5
move-exception v1
move-object v9, v1
move-object v1, v0
move-object v0, v9
:goto_a9
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/16 v2, 0x2e
const/16 v8, 0x2f
invoke-virtual {v5, v2, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ".properties"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v2, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;
invoke-direct {v2, v3, v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/InputStream;
if-eqz v0, :cond_19c
new-instance v2, Ljava/io/BufferedInputStream;
invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_d6
.catchall {:try_start_8d .. :try_end_d6} :catchall_146
:try_start_d6
new-instance v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;
new-instance v8, Ljava/util/PropertyResourceBundle;
invoke-direct {v8, v2}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V
invoke-direct {v0, v8}, Lcom/ibm/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;)V
:try_end_e0
.catchall {:try_start_d6 .. :try_end_e0} :catchall_13f
.catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e0} :catch_135
if-eqz v6, :cond_e5
:try_start_e2
invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V
:cond_e5
iput-object p0, v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;
iput-object p1, v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
:try_end_e9
.catchall {:try_start_e2 .. :try_end_e9} :catchall_191
.catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e9} :catch_195
:try_start_e9
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_ec
.catchall {:try_start_e9 .. :try_end_ec} :catchall_146
.catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_132
move-object v1, v2
:goto_ed
if-nez v0, :cond_19a
:try_start_ef
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_19a
const/16 v2, 0x5f
invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-gez v2, :cond_19a
invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
const/4 v8, -0x1
if-ne v2, v8, :cond_19a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "_"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0, v4}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;
if-nez v0, :cond_19a
invoke-static {p0, v1, v3, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p3
check-cast p3, Lcom/ibm/icu/impl/ResourceBundleWrapper;
:goto_12d
:try_end_12d
.catchall {:try_start_ef .. :try_end_12d} :catchall_146
if-nez p3, :cond_83
move-object p3, v6
goto/16 :goto_83
:catch_132
move-exception v1
move-object v1, v2
goto :goto_ed
:catch_135
move-exception v0
move-object v0, v1
:try_start_137
:goto_137
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_13a
.catchall {:try_start_137 .. :try_end_13a} :catchall_146
.catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_13c
move-object v1, v2
goto :goto_ed
:catch_13c
move-exception v1
move-object v1, v2
goto :goto_ed
:catchall_13f
move-exception p0
move-object p1, p0
move-object p0, v1
:goto_142
:try_start_142
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_145
.catchall {:try_start_142 .. :try_end_145} :catchall_146
.catch Ljava/lang/Exception; {:try_start_142 .. :try_end_145} :catch_18b
:goto_145
:try_start_145
throw p1
:try_end_146
.catchall {:try_start_145 .. :try_end_146} :catchall_146
:catchall_146
move-exception p0
monitor-exit v7
throw p0
:catch_149
move-exception p3
move-object v9, p3
move-object p3, v0
move-object v0, v9
:try_start_14d
:goto_14d
sget-boolean v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;->DEBUG:Z
if-eqz v1, :cond_158
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v2, "failure"
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_158
sget-boolean v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;->DEBUG:Z
if-eqz v1, :cond_83
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
goto/16 :goto_83
:cond_163
sget-boolean v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->DEBUG:Z
if-eqz v0, :cond_8b
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Returning null for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
const-string v1, "_"
invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:try_end_189
.catchall {:try_start_14d .. :try_end_189} :catchall_146
goto/16 :goto_8b
:catch_18b
move-exception p0
goto :goto_145
:catch_18d
move-exception p3
move-object v0, p3
move-object p3, v1
goto :goto_14d
:catchall_191
move-exception p0
move-object p1, p0
move-object p0, v0
goto :goto_142
:catch_195
move-exception v1
goto :goto_137
:catch_197
move-exception v0
goto/16 :goto_a9
:cond_19a
move-object p3, v0
goto :goto_12d
:cond_19c
move-object v9, v0
move-object v0, v1
move-object v1, v9
goto/16 :goto_ed
:cond_1a1
move-object v6, v1
goto/16 :goto_6a
:cond_1a4
move-object v6, v2
goto/16 :goto_6a
:cond_1a7
move-object v1, v2
goto/16 :goto_69
:cond_1aa
move-object p3, v0
goto/16 :goto_86
:cond_1ad
move-object v5, v0
goto/16 :goto_2d
.end method
.method protected getBaseName()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const/16 v1, 0x2e
const/16 v2, 0x2f
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method protected getLocaleID()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
return-object v0
.end method
.method public getParent()Lcom/ibm/icu/util/UResourceBundle;
.registers 1
iget-object p0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->parent:Ljava/util/ResourceBundle;
check-cast p0, Lcom/ibm/icu/util/UResourceBundle;
return-object p0
.end method
.method public getULocale()Lcom/ibm/icu/util/ULocale;
.registers 3
new-instance v0, Lcom/ibm/icu/util/ULocale;
iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.registers 8
move-object v0, p0
const/4 v2, 0x0
:goto_2
if-eqz v0, :cond_a
:try_start_4
iget-object v3, v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;
invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
:try_end_9
.catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_9} :catch_39
move-result-object v2
:cond_a
if-nez v2, :cond_42
new-instance v3, Ljava/util/MissingResourceException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Can\'t find resource for bundle "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", key "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v4, v5, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v3
:catch_39
move-exception v3
move-object v1, v3
invoke-virtual {v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getParent()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;
goto :goto_2
:cond_42
return-object v2
.end method
.method protected setLoadingStatus(I)V
.registers 2
return-void
.end method
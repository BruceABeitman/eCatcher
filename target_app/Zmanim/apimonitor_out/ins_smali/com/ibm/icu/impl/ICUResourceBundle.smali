.class public Lcom/ibm/icu/impl/ICUResourceBundle;
.super Lcom/ibm/icu/util/UResourceBundle;
.source "ICUResourceBundle.java"
.field private static final DEBUG:Z = false
.field private static final DEFAULT_TAG:Ljava/lang/String; = "default"
.field public static final FROM_DEFAULT:I = 0x3
.field public static final FROM_FALLBACK:I = 0x1
.field public static final FROM_LOCALE:I = 0x4
.field public static final FROM_ROOT:I = 0x2
.field private static GET_AVAILABLE_CACHE:Ljava/lang/ref/SoftReference; = null
.field private static final HYPHEN:C = '-'
.field private static final ICUDATA:Ljava/lang/String; = "ICUDATA"
.field public static final ICU_BASE_NAME:Ljava/lang/String; = "com/ibm/icu/impl/data/icudt42b"
.field public static final ICU_BRKITR_BASE_NAME:Ljava/lang/String; = "com/ibm/icu/impl/data/icudt42b/brkitr"
.field public static final ICU_BRKITR_NAME:Ljava/lang/String; = "/brkitr"
.field public static final ICU_BUNDLE:Ljava/lang/String; = "data/icudt42b"
.field public static final ICU_COLLATION_BASE_NAME:Ljava/lang/String; = "com/ibm/icu/impl/data/icudt42b/coll"
.field public static final ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader; = null
.field protected static final ICU_DATA_PATH:Ljava/lang/String; = "com/ibm/icu/impl/"
.field public static final ICU_RBNF_BASE_NAME:Ljava/lang/String; = "com/ibm/icu/impl/data/icudt42b/rbnf"
.field private static final ICU_RESOURCE_INDEX:Ljava/lang/String; = "res_index"
.field public static final ICU_TRANSLIT_BASE_NAME:Ljava/lang/String; = "com/ibm/icu/impl/data/icudt42b/translit"
.field protected static final INSTALLED_LOCALES:Ljava/lang/String; = "InstalledLocales"
.field private static final LOCALE:Ljava/lang/String; = "LOCALE"
.field private static final MAX_INITIAL_LOOKUP_SIZE:I = 0x40
.field private static final RES_PATH_SEP_CHAR:C = '/'
.field private static final RES_PATH_SEP_STR:Ljava/lang/String; = "/"
.field protected static final UNSIGNED_INT_MASK:J = 0xffffffffL
.field protected baseName:Ljava/lang/String;
.field protected loader:Ljava/lang/ClassLoader;
.field private loadingStatus:I
.field protected localeID:Ljava/lang/String;
.field protected lookup:Lcom/ibm/icu/impl/ICUCache;
.field protected noFallback:Z
.field protected rawData:[B
.field protected resPath:Ljava/lang/String;
.field protected rootResource:J
.field protected ulocale:Lcom/ibm/icu/util/ULocale;
.method static constructor <clinit>()V
.registers 2
const-class v1, Lcom/ibm/icu/impl/ICUData;
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
if-nez v0, :cond_c
invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
:cond_c
sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
const-string v1, "localedata"
invoke-static {v1}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z
move-result v1
sput-boolean v1, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z
return-void
.end method
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->loadingStatus:I
return-void
.end method
.method protected static final RES_GET_INT(J)I
.registers 4
const/4 v0, 0x4
shl-long v0, p0, v0
long-to-int v0, v0
shr-int/lit8 v0, v0, 0x4
return v0
.end method
.method static final RES_GET_KEY([BI)Ljava/lang/StringBuffer;
.registers 5
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
:goto_5
aget-byte v2, p0, p1
int-to-char v0, v2
if-eqz v0, :cond_10
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 p1, p1, 0x1
goto :goto_5
:cond_10
return-object v1
.end method
.method protected static final RES_GET_OFFSET(J)I
.registers 5
const-wide/32 v0, 0xfffffff
and-long/2addr v0, p0
const/4 v2, 0x2
shl-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method
.method public static final RES_GET_TYPE(J)I
.registers 4
const/16 v0, 0x1c
shr-long v0, p0, v0
long-to-int v0, v0
return v0
.end method
.method static final RES_GET_UINT(J)J
.registers 6
const-wide/32 v2, 0xfffffff
and-long v0, p0, v2
return-wide v0
.end method
.method static synthetic access$000(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;
move-result-object v0
return-object v0
.end method
.method static synthetic access$100(Ljava/lang/String;)[Ljava/util/Locale;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->createLocaleList(Ljava/lang/String;)[Ljava/util/Locale;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Ljava/lang/String;)Ljava/util/Set;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->createLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method static synthetic access$300(Ljava/lang/String;)Ljava/util/Set;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->createFullLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method static final assign(Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;)V
.registers 4
iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->rawData:[B
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->rawData:[B
iget-wide v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->rootResource:J
iput-wide v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->rootResource:J
iget-boolean v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->noFallback:Z
iput-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->noFallback:Z
iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->baseName:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->baseName:Ljava/lang/String;
iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->localeID:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->localeID:Ljava/lang/String;
iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->ulocale:Lcom/ibm/icu/util/ULocale;
iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->loader:Ljava/lang/ClassLoader;
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->loader:Ljava/lang/ClassLoader;
iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;
return-void
.end method
.method public static createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
.registers 5
invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundleReader;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
invoke-static {v0, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundle(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v1
goto :goto_7
.end method
.method private static final createFullLocaleNameArray(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
.registers 4
new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundle$1;
invoke-direct {v1, p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle$1;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
return-object v0
.end method
.method private static createFullLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
.registers 7
sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->createFullLocaleNameArray(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
move-result-object v0
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
if-nez v0, :cond_19
new-instance v2, Ljava/util/MissingResourceException;
const-string v3, "Could not find res_index"
const-string v4, ""
const-string v5, ""
invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v2
:cond_19
invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v2
return-object v2
.end method
.method private static final createLocaleList(Ljava/lang/String;)[Ljava/util/Locale;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleList([Lcom/ibm/icu/util/ULocale;)[Ljava/util/Locale;
move-result-object v1
return-object v1
.end method
.method private static final createLocaleNameArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/lang/String;
.registers 10
const-string v6, "res_index"
const/4 v7, 0x1
invoke-static {p0, v6, p1, v7}, Lcom/ibm/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v6, "InstalledLocales"
invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I
move-result v4
const/4 v1, 0x0
new-array v5, v4, [Ljava/lang/String;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;
move-result-object v3
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->reset()V
:goto_1f
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_33
add-int/lit8 v2, v1, 0x1
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v1
move v1, v2
goto :goto_1f
:cond_33
const/4 v0, 0x0
return-object v5
.end method
.method private static createLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
.registers 7
:try_start_0
sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {p0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->createLocaleNameArray(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
:try_end_15
.catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_15} :catch_17
move-result-object v3
:goto_16
return-object v3
:catch_17
move-exception v3
move-object v0, v3
sget-boolean v3, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z
if-eqz v3, :cond_38
sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "couldn\'t find index for bundleName: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Thread;->dumpStack()V
:cond_38
sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
goto :goto_16
.end method
.method private static final createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;
.registers 10
const-string v6, "res_index"
const/4 v7, 0x1
invoke-static {p0, v6, p1, v7}, Lcom/ibm/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v6, "InstalledLocales"
invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I
move-result v4
const/4 v1, 0x0
new-array v5, v4, [Lcom/ibm/icu/util/ULocale;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;
move-result-object v3
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->reset()V
:goto_1f
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_38
add-int/lit8 v2, v1, 0x1
new-instance v6, Lcom/ibm/icu/util/ULocale;
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
invoke-virtual {v7}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
aput-object v6, v5, v1
move v1, v2
goto :goto_1f
:cond_38
const/4 v0, 0x0
return-object v5
.end method
.method private findResource(Ljava/lang/String;JLjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
.registers 26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->loader:Ljava/lang/ClassLoader;
move-object v11, v0
const/4 v12, 0x0
const/4 v10, 0x0
move-object/from16 v0, p0
move-wide/from16 v1, p2
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringValue(J)Ljava/lang/String;
move-result-object v13
if-nez p4, :cond_16
new-instance p4, Ljava/util/HashMap;
invoke-direct/range {p4 .. p4}, Ljava/util/HashMap;-><init>()V
:cond_16
move-object/from16 v0, p4
move-object v1, v13
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v17
if-eqz v17, :cond_27
new-instance v17, Ljava/lang/IllegalArgumentException;
const-string v18, "Circular references in the resource bundles"
invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v17
:cond_27
const-string v17, ""
move-object/from16 v0, p4
move-object v1, v13
move-object/from16 v2, v17
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/16 v17, 0x2f
move-object v0, v13
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v17
if-nez v17, :cond_164
const/16 v17, 0x2f
const/16 v18, 0x1
move-object v0, v13
move/from16 v1, v17
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I
move-result v7
const/16 v17, 0x2f
add-int/lit8 v18, v7, 0x1
move-object v0, v13
move/from16 v1, v17
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I
move-result v9
const/16 v17, 0x1
move-object v0, v13
move/from16 v1, v17
move v2, v7
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
add-int/lit8 v17, v7, 0x1
move-object v0, v13
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v12
const/16 v17, -0x1
move v0, v9
move/from16 v1, v17
if-eq v0, v1, :cond_89
add-int/lit8 v17, v7, 0x1
move-object v0, v13
move/from16 v1, v17
move v2, v9
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v12
add-int/lit8 v17, v9, 0x1
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v18
move-object v0, v13
move/from16 v1, v17
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v10
:cond_89
const-string v17, "ICUDATA"
move-object v0, v5
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_11d
const-string v5, "com/ibm/icu/impl/data/icudt42b"
sget-object v11, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
:cond_98
:goto_98
const/4 v4, 0x0
const/4 v15, 0x0
const-string v17, "LOCALE"
move-object v0, v5
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_191
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->baseName:Ljava/lang/String;
move-object v5, v0
move-object/from16 v0, p5
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
move-object v4, v0
const-string v17, "LOCALE"
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
move-result v17
add-int/lit8 v17, v17, 0x2
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v18
move-object v0, v13
move/from16 v1, v17
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v10
move-object/from16 v0, p5
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
move-object v6, v0
invoke-virtual {v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v12
const/16 v17, 0x0
move-object v0, v10
move-object/from16 v1, p5
move-object/from16 v2, v17
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v15
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "/"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual {v15}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
const-string v18, "/"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object v1, v10
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object v1, v15
iput-object v0, v1, Lcom/ibm/icu/impl/ICUResourceBundle;->resPath:Ljava/lang/String;
:goto_101
if-nez v15, :cond_1e8
new-instance v17, Ljava/util/MissingResourceException;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->localeID:Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->baseName:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, v17
move-object/from16 v1, v18
move-object/from16 v2, v19
move-object/from16 v3, p1
invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v17
:cond_11d
const-string v17, "ICUDATA"
move-object v0, v5
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v17
const/16 v18, -0x1
move/from16 v0, v17
move/from16 v1, v18
if-le v0, v1, :cond_98
const/16 v17, 0x2d
move-object v0, v5
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v8
const/16 v17, -0x1
move v0, v8
move/from16 v1, v17
if-le v0, v1, :cond_98
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "com/ibm/icu/impl/data/icudt42b/"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
add-int/lit8 v18, v8, 0x1
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v19
move-object v0, v5
move/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
sget-object v11, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
goto/16 :goto_98
:cond_164
const/16 v17, 0x2f
move-object v0, v13
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v7
add-int/lit8 v17, v7, 0x1
move-object v0, v13
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v10
const/16 v17, -0x1
move v0, v7
move/from16 v1, v17
if-eq v0, v1, :cond_18e
const/16 v17, 0x0
move-object v0, v13
move/from16 v1, v17
move v2, v7
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v12
:goto_187
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->baseName:Ljava/lang/String;
move-object v5, v0
goto/16 :goto_98
:cond_18e
move-object v12, v10
const/4 v10, 0x0
goto :goto_187
:cond_191
if-nez v12, :cond_1ce
const-string v17, ""
const/16 v18, 0x0
move-object v0, v5
move-object/from16 v1, v17
move-object v2, v11
move/from16 v3, v18
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;
:goto_1a3
if-eqz v10, :cond_1de
new-instance v14, Lcom/ibm/icu/util/StringTokenizer;
const-string v17, "/"
move-object v0, v14
move-object v1, v10
move-object/from16 v2, v17
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object v6, v4
:goto_1b1
invoke-virtual {v14}, Lcom/ibm/icu/util/StringTokenizer;->hasMoreTokens()Z
move-result v17
if-eqz v17, :cond_1ca
invoke-virtual {v14}, Lcom/ibm/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v16
move-object v0, v6
move-object/from16 v1, v16
move-object/from16 v2, p4
move-object/from16 v3, p5
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v15
check-cast v15, Lcom/ibm/icu/impl/ICUResourceBundle;
if-nez v15, :cond_1dc
:cond_1ca
:goto_1ca
iput-object v13, v15, Lcom/ibm/icu/impl/ICUResourceBundle;->resPath:Ljava/lang/String;
goto/16 :goto_101
:cond_1ce
const/16 v17, 0x0
move-object v0, v5
move-object v1, v12
move-object v2, v11
move/from16 v3, v17
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;
goto :goto_1a3
:cond_1dc
move-object v6, v15
goto :goto_1b1
:cond_1de
move-object v0, v4
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v15
check-cast v15, Lcom/ibm/icu/impl/ICUResourceBundle;
goto :goto_1ca
:cond_1e8
return-object v15
.end method
.method protected static final findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
.registers 10
const/4 v3, 0x0
if-nez p2, :cond_4
move-object p2, p1
:goto_4
:cond_4
if-eqz p1, :cond_26
new-instance v2, Lcom/ibm/icu/util/StringTokenizer;
const-string v5, "/"
invoke-direct {v2, p0, v5}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
move-object v1, v0
:goto_11
invoke-virtual {v2}, Lcom/ibm/icu/util/StringTokenizer;->hasMoreTokens()Z
move-result v5
if-eqz v5, :cond_24
invoke-virtual {v2}, Lcom/ibm/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v1, v4, v5, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
check-cast v3, Lcom/ibm/icu/impl/ICUResourceBundle;
if-nez v3, :cond_32
:cond_24
if-eqz v3, :cond_34
:cond_26
if-eqz v3, :cond_31
check-cast p2, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V
:cond_31
return-object v3
:cond_32
move-object v1, v3
goto :goto_11
:cond_34
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/ICUResourceBundle;->resPath:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
if-eqz v5, :cond_5d
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/ICUResourceBundle;->resPath:Ljava/lang/String;
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_5d
check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;
move-result-object p1
goto :goto_4
.end method
.method private static getAvailEntry(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Ljava/lang/ref/SoftReference;
if-eqz v2, :cond_16
sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Ljava/lang/ref/SoftReference;
invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map;
if-eqz v1, :cond_16
invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
:cond_16
if-nez v0, :cond_2e
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;-><init>(Ljava/lang/String;)V
if-nez v1, :cond_2f
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Ljava/lang/ref/SoftReference;
invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
sput-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Ljava/lang/ref/SoftReference;
:goto_2e
:cond_2e
return-object v0
:cond_2f
invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2e
.end method
.method public static getAvailableLocaleNameSet()Ljava/util/Set;
.registers 1
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public static getAvailableLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleNameSet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public static final getAvailableLocales()[Ljava/util/Locale;
.registers 1
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList()[Ljava/util/Locale;
move-result-object v0
return-object v0
.end method
.method public static final getAvailableLocales(Ljava/lang/String;)[Ljava/util/Locale;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList()[Ljava/util/Locale;
move-result-object v0
return-object v0
.end method
.method public static final getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 1
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;
move-result-object v0
return-object v0
.end method
.method public static final getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
return-object v0
.end method
.method private static getBundle(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
.registers 8
const-wide v0, 0xffffffffL
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getRootResource()I
move-result v2
int-to-long v2, v2
and-long/2addr v0, v2
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_40
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getSize()I
move-result p0
const/4 p2, 0x1
if-lt p0, p2, :cond_3e
const/4 p0, 0x0
const/4 p2, 0x0
const/4 p3, 0x0
invoke-virtual {v0, p0, p2, v0, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->handleGetImpl(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object p2
const-string p3, "%%ALIAS"
invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result p2
if-eqz p2, :cond_3c
invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object p0
invoke-static {p1, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;
:goto_3b
return-object p0
:cond_3c
move-object p0, v0
goto :goto_3b
:cond_3e
move-object p0, v0
goto :goto_3b
:cond_40
const/4 v1, 0x4
if-ne v0, v1, :cond_4a
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable32;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable32;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
move-object p0, v0
goto :goto_3b
:cond_4a
new-instance p0, Ljava/lang/IllegalStateException;
const-string p1, "Invalid format error"
invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw p0
.end method
.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
.registers 9
invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
if-nez v0, :cond_33
new-instance v1, Ljava/util/MissingResourceException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not find the bundle "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".res"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, ""
const-string v4, ""
invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
:cond_33
return-object v0
.end method
.method static getChar([BI)C
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->makeChar([BI)C
move-result v0
return v0
.end method
.method static final getCharOffset(I)I
.registers 2
shl-int/lit8 v0, p0, 0x1
return v0
.end method
.method public static getFullLocaleNameSet()Ljava/util/Set;
.registers 1
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public static getFullLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getFullLocaleNameSet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public static final getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[ZZ)Lcom/ibm/icu/util/ULocale;
.registers 23
move-object/from16 v0, p3
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v4
const/4 v7, 0x0
new-instance v12, Lcom/ibm/icu/util/ULocale;
invoke-direct {v12, v4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
const/4 v6, 0x0
const/16 p3, 0x0
const/4 v8, 0x0
const/4 v5, 0x0
const/4 v14, 0x0
if-eqz v9, :cond_28
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v10
if-eqz v10, :cond_28
const-string v10, "default"
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_200
:cond_28
const-string p3, ""
const/4 v9, 0x1
move v11, v9
move-object/from16 v10, p3
:goto_2e
const/16 p3, 0x0
move-object/from16 v0, p0
move-object v1, v12
invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v13
check-cast v13, Lcom/ibm/icu/impl/ICUResourceBundle;
if-eqz p4, :cond_1f6
const/16 p3, 0x0
const/4 v9, 0x0
aput-boolean v9, p4, p3
invoke-static/range {p0 .. p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
move-result-object p3
invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Lcom/ibm/icu/util/ULocale;
move-result-object p3
const/4 v9, 0x0
:goto_49
move-object/from16 v0, p3
array-length v0, v0
move v15, v0
if-ge v9, v15, :cond_1f6
aget-object v15, p3, v9
invoke-virtual {v12, v15}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v15
if-eqz v15, :cond_173
const/16 p3, 0x0
const/4 v9, 0x1
aput-boolean v9, p4, p3
move/from16 p3, v5
move v9, v11
move-object/from16 p4, v6
move-object v5, v7
move-object v7, v10
move-object v10, v13
:try_start_64
:goto_64
move-object v0, v10
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
check-cast v6, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v11, "default"
invoke-virtual {v6, v11}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_72
.catch Ljava/util/MissingResourceException; {:try_start_64 .. :try_end_72} :catch_177
move-result-object v5
const/4 v6, 0x1
if-ne v9, v6, :cond_1f2
move-object v6, v5
const/4 v7, 0x0
:goto_78
:try_start_78
invoke-virtual {v10}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
:try_end_7b
.catch Ljava/util/MissingResourceException; {:try_start_78 .. :try_end_7b} :catch_1cd
move-result-object p4
move-object v9, v6
move v6, v7
:goto_7e
if-nez p4, :cond_1ef
invoke-virtual {v10}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
check-cast v7, Lcom/ibm/icu/impl/ICUResourceBundle;
add-int/lit8 p3, p3, 0x1
:goto_88
if-eqz v7, :cond_8c
if-eqz p4, :cond_1ea
:cond_8c
new-instance v10, Lcom/ibm/icu/util/ULocale;
invoke-direct {v10, v4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
move-object v1, v10
invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
check-cast v6, Lcom/ibm/icu/impl/ICUResourceBundle;
move v11, v14
move-object/from16 v16, v6
move-object v6, v8
move-object/from16 v8, v16
:try_start_a0
:goto_a0
move-object v0, v8
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
check-cast v7, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {v7, v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
invoke-virtual {v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v6
if-eqz v6, :cond_c3
move v0, v11
move/from16 v1, p3
if-le v0, v1, :cond_c3
const-string v12, "default"
invoke-virtual {v7, v12}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
:try_end_c0
.catch Ljava/util/MissingResourceException; {:try_start_a0 .. :try_end_c0} :catch_1ca
move-result-object p4
move/from16 p3, v11
:goto_c3
:cond_c3
if-nez v6, :cond_1e6
invoke-virtual {v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
check-cast v7, Lcom/ibm/icu/impl/ICUResourceBundle;
add-int/lit8 v8, v11, 0x1
:goto_cd
if-eqz v7, :cond_d1
if-eqz v6, :cond_1e2
:cond_d1
if-nez v6, :cond_1d7
if-eqz v5, :cond_1d7
invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-nez v11, :cond_1d7
move-object v7, v5
new-instance v8, Lcom/ibm/icu/util/ULocale;
invoke-direct {v8, v4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
move-object v1, v8
invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;
const/4 v9, 0x0
move v10, v9
move-object v9, v4
move-object v4, v5
move-object v5, v6
:goto_ef
:try_start_ef
move-object v0, v9
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
check-cast v6, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {v6, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v11
invoke-virtual {v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v5
invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11}, Lcom/ibm/icu/util/UResourceBundle;->getLocale()Ljava/util/Locale;
move-result-object v11
invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-nez v11, :cond_113
const/4 v5, 0x0
:cond_113
if-eqz v5, :cond_126
move v0, v10
move/from16 v1, p3
if-le v0, v1, :cond_126
const-string v11, "default"
invoke-virtual {v6, v11}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
:try_end_123
.catch Ljava/util/MissingResourceException; {:try_start_ef .. :try_end_123} :catch_1c7
move-result-object p4
move/from16 p3, v10
:cond_126
:goto_126
if-nez v5, :cond_1d3
invoke-virtual {v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
check-cast v6, Lcom/ibm/icu/impl/ICUResourceBundle;
add-int/lit8 v9, v10, 0x1
:goto_130
if-eqz v6, :cond_134
if-eqz v5, :cond_1cf
:cond_134
move/from16 p1, p3
move-object/from16 p3, p4
move-object/from16 p4, v4
move-object v4, v5
move-object v5, v7
move-object v7, v6
move-object v6, v8
move v8, v9
:goto_13f
if-nez v4, :cond_17e
new-instance p1, Ljava/util/MissingResourceException;
const-string p3, "Could not find locale containing requested or default keyword."
new-instance p4, Ljava/lang/StringBuilder;
invoke-direct/range {p4 .. p4}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p4
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p2
const-string p4, "="
move-object/from16 v0, p2
move-object/from16 v1, p4
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p2
move-object/from16 v0, p2
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p2
invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
move-object/from16 v0, p1
move-object/from16 v1, p3
move-object/from16 v2, p0
move-object/from16 v3, p2
invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw p1
:cond_173
add-int/lit8 v9, v9, 0x1
goto/16 :goto_49
:catch_177
move-exception v6
move-object v6, v7
move v7, v9
:goto_17a
move-object v9, v6
move v6, v7
goto/16 :goto_7e
:cond_17e
if-eqz p5, :cond_191
move-object/from16 v0, p4
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result p0
if-eqz p0, :cond_191
move v0, v8
move/from16 v1, p1
if-gt v0, v1, :cond_191
move-object/from16 p0, v4
:goto_190
return-object p0
:cond_191
new-instance p0, Lcom/ibm/icu/util/ULocale;
new-instance p1, Ljava/lang/StringBuilder;
invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object p3
move-object/from16 v0, p1
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p1
const-string p3, "@"
move-object/from16 v0, p1
move-object/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p1
invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p1
const-string p2, "="
invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p1
move-object/from16 v0, p1
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p1
invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
goto :goto_190
:catch_1c7
move-exception v6
goto/16 :goto_126
:catch_1ca
move-exception v7
goto/16 :goto_c3
:catch_1cd
move-exception v9
goto :goto_17a
:cond_1cf
move v10, v9
move-object v9, v6
goto/16 :goto_ef
:cond_1d3
move-object v6, v9
move v9, v10
goto/16 :goto_130
:cond_1d7
move/from16 p1, p3
move-object v4, v6
move-object/from16 p3, p4
move-object v6, v10
move-object/from16 p4, v5
move-object v5, v9
goto/16 :goto_13f
:cond_1e2
move v11, v8
move-object v8, v7
goto/16 :goto_a0
:cond_1e6
move-object v7, v8
move v8, v11
goto/16 :goto_cd
:cond_1ea
move-object v10, v7
move-object v7, v9
move v9, v6
goto/16 :goto_64
:cond_1ef
move-object v7, v10
goto/16 :goto_88
:cond_1f2
move-object v6, v7
move v7, v9
goto/16 :goto_78
:cond_1f6
move/from16 p3, v5
move v9, v11
move-object/from16 p4, v6
move-object v5, v7
move-object v7, v10
move-object v10, v13
goto/16 :goto_64
:cond_200
move/from16 v11, p3
move-object v10, v9
goto/16 :goto_2e
.end method
.method protected static final getIndex(Ljava/lang/String;)I
.registers 3
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x1
if-lt v0, v1, :cond_10
invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_f
return v0
:cond_10
const/4 v0, -0x1
goto :goto_f
.end method
.method private getIndexOfKey(Ljava/lang/String;)I
.registers 7
const/4 v4, -0x1
iget-wide v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resource:J
invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I
move-result v2
const/4 v3, 0x2
if-eq v2, v3, :cond_c
move v2, v4
:goto_b
return v2
:cond_c
const/4 v1, 0x0
:goto_d
iget v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
if-ge v1, v2, :cond_20
invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1d
move v2, v1
goto :goto_b
:cond_1d
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_20
move v2, v4
goto :goto_b
.end method
.method protected static getInt([BI)I
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->makeInt([BI)I
move-result v0
return v0
.end method
.method protected static final getIntOffset(I)I
.registers 2
shl-int/lit8 v0, p0, 0x2
return v0
.end method
.method private getKey(I)Ljava/lang/String;
.registers 5
iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
if-le p1, v1, :cond_7
const-string v1, ""
:goto_6
return-object v1
:cond_7
iget-wide v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resource:J
invoke-static {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_OFFSET(J)I
move-result v0
const/4 v1, 0x1
invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getCharOffset(I)I
move-result v1
add-int/2addr v0, v1
invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getOffset(II)I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->rawData:[B
invoke-static {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_KEY([BI)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_6
.end method
.method public static final getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.registers 11
new-instance v5, Ljava/util/HashSet;
invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
sget-object v8, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {p0, v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;
move-result-object v6
const/4 v3, 0x0
:goto_c
array-length v8, v6
if-ge v3, v8, :cond_41
:try_start_f
aget-object v8, v6, v3
invoke-static {p0, v8}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/ibm/icu/util/UResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/ibm/icu/impl/ICUResourceBundle;
move-object v0, v8
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
move-object v4, v0
invoke-virtual {v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;
move-result-object v2
:goto_23
:cond_23
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v8
if-eqz v8, :cond_3e
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v7
instance-of v8, v7, Ljava/lang/String;
if-eqz v8, :cond_23
const-string v8, "default"
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_23
invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_3c
.catch Ljava/lang/Throwable; {:try_start_f .. :try_end_3c} :catch_3d
goto :goto_23
:catch_3d
move-exception v8
:cond_3e
add-int/lit8 v3, v3, 0x1
goto :goto_c
:cond_41
const/4 v8, 0x0
new-array v8, v8, [Ljava/lang/String;
invoke-interface {v5, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
return-object p0
.end method
.method public static final getLocaleList([Lcom/ibm/icu/util/ULocale;)[Ljava/util/Locale;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
const/4 v0, 0x0
:goto_b
array-length v4, p0
if-ge v0, v4, :cond_23
aget-object v4, p0, v0
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_20
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_23
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v4
new-array v4, v4, [Ljava/util/Locale;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/util/Locale;
check-cast p0, [Ljava/util/Locale;
return-object p0
.end method
.method private getResourceHandle(I)J
.registers 7
iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
if-le p1, v1, :cond_7
const-wide/16 v1, -0x1
:goto_6
return-wide v1
:cond_7
iget-wide v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resource:J
invoke-static {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_OFFSET(J)I
move-result v0
const/4 v1, 0x1
invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getCharOffset(I)I
move-result v1
add-int/2addr v0, v1
iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getCharOffset(I)I
move-result v1
add-int/2addr v0, v1
iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
xor-int/lit8 v1, v1, -0x1
and-int/lit8 v1, v1, 0x1
invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getCharOffset(I)I
move-result v1
add-int/2addr v0, v1
invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIntOffset(I)I
move-result v1
add-int/2addr v0, v1
const-wide v1, 0xffffffffL
iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->rawData:[B
invoke-static {v3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getInt([BI)I
move-result v3
int-to-long v3, v3
and-long/2addr v1, v3
goto :goto_6
.end method
.method protected static declared-synchronized instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
.registers 13
const-class v6, Lcom/ibm/icu/impl/ICUResourceBundle;
monitor-enter v6
:try_start_3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
move-object v0, p1
const/16 v2, 0x40
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-lez v2, :cond_141
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
move-object v3, p1
:goto_15
invoke-static {p0, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p2, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p1
check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;
const/16 v0, 0x2e
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v4, -0x1
if-ne v0, v4, :cond_b2
const-string v0, "root"
move-object v5, v0
:goto_2b
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object v0
const-string v4, ""
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3c
move-object v3, v5
:cond_3c
sget-boolean v4, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z
if-eqz v4, :cond_62
sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Creating "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " currently b is "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_62
if-nez p1, :cond_12e
invoke-static {p0, v3, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object p1
sget-boolean v4, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z
if-eqz v4, :cond_a1
sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "The bundle created is: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " and disableFallback="
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " and bundle.getNoFallback="
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
if-eqz p1, :cond_b7
invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getNoFallback()Z
move-result v8
if-eqz v8, :cond_b7
const/4 v8, 0x1
:goto_96
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_a1
if-nez p3, :cond_ab
if-eqz p1, :cond_b9
invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getNoFallback()Z
move-result v4
if-eqz v4, :cond_b9
:cond_ab
invoke-static {p2, v2, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->addToCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/UResourceBundle;)V
:try_end_ae
.catchall {:try_start_3 .. :try_end_ae} :catchall_f7
move-object p0, p1
move-object p2, v3
:goto_b0
monitor-exit v6
return-object p1
:cond_b2
:try_start_b2
const-string v0, ""
move-object v5, v0
goto/16 :goto_2b
:cond_b7
const/4 v8, 0x0
goto :goto_96
:cond_b9
if-nez p1, :cond_10b
const/16 v1, 0x5f
invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_e3
const/4 p1, 0x0
invoke-virtual {v3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;
if-eqz p0, :cond_df
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object p2
invoke-virtual {p2, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result p1
if-eqz p1, :cond_df
const/4 p1, 0x1
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
:cond_df
:goto_df
move-object p1, v3
:goto_e0
move-object p2, p1
move-object p1, p0
goto :goto_b0
:cond_e3
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_fa
invoke-static {p0, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;
if-eqz p0, :cond_df
const/4 p1, 0x3
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
:try_end_f6
.catchall {:try_start_b2 .. :try_end_f6} :catchall_f7
goto :goto_df
:catchall_f7
move-exception p0
monitor-exit v6
throw p0
:try_start_fa
:cond_fa
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result p3
if-eqz p3, :cond_13f
invoke-static {p0, v5, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object p0
if-eqz p0, :cond_df
const/4 p1, 0x2
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
goto :goto_df
:cond_10b
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v3
const/16 v0, 0x5f
invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
invoke-static {p2, v2, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->addToCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/UResourceBundle;)V
const/4 v1, -0x1
if-eq v0, v1, :cond_131
const/4 v1, 0x0
invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
:goto_125
invoke-virtual {p1, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->equals(Ljava/lang/Object;)Z
move-result p2
if-nez p2, :cond_12e
invoke-virtual {p1, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->setParent(Ljava/util/ResourceBundle;)V
:cond_12e
move-object p0, p1
move-object p1, v3
goto :goto_e0
:cond_131
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result p3
if-nez p3, :cond_13d
const/4 p3, 0x1
invoke-static {p0, v5, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
:try_end_13b
.catchall {:try_start_fa .. :try_end_13b} :catchall_f7
move-result-object p0
goto :goto_125
:cond_13d
move-object p0, v4
goto :goto_125
:cond_13f
move-object p0, p1
goto :goto_df
:cond_141
move-object v3, v0
goto/16 :goto_15
.end method
.method private static final makeChar([BI)C
.registers 5
add-int/lit8 v0, p1, 0x1
aget-byte v1, p0, p1
shl-int/lit8 v1, v1, 0x8
aget-byte v2, p0, v0
and-int/lit16 v2, v2, 0xff
or-int/2addr v1, v2
int-to-char v1, v1
return v1
.end method
.method private static final makeInt([BI)I
.registers 5
add-int/lit8 v0, p1, 0x1
aget-byte v1, p0, p1
shl-int/lit8 v1, v1, 0x18
add-int/lit8 p1, v0, 0x1
aget-byte v2, p0, v0
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v2, v2, 0x10
or-int/2addr v1, v2
add-int/lit8 v0, p1, 0x1
aget-byte v2, p0, p1
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v2, v2, 0x8
or-int/2addr v1, v2
aget-byte v2, p0, v0
and-int/lit16 v2, v2, 0xff
or-int/2addr v1, v2
return v1
.end method
.method protected final createBundleObject(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;[Z)Lcom/ibm/icu/impl/ICUResourceBundle;
.registers 15
const/4 v1, 0x0
if-eqz p8, :cond_5
aput-boolean v1, p8, v1
:cond_5
invoke-static {p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I
move-result v0
packed-switch v0, :pswitch_data_6a
:pswitch_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The resource type is unknown"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_14
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;
move-object v1, p1
move-object v2, p4
move-wide v3, p2
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
:goto_1d
return-object v0
:pswitch_1e
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;
move-object v1, p1
move-object v2, p4
move-wide v3, p2
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
goto :goto_1d
:pswitch_28
if-eqz p8, :cond_2d
const/4 v0, 0x1
aput-boolean v0, p8, v1
:cond_2d
move-object v0, p0
move-object v1, p1
move-wide v2, p2
move-object v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResource(Ljava/lang/String;JLjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
goto :goto_1d
:pswitch_37
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;
move-object v1, p1
move-object v2, p4
move-wide v3, p2
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
goto :goto_1d
:pswitch_41
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;
move-object v1, p1
move-object v2, p4
move-wide v3, p2
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
goto :goto_1d
:pswitch_4b
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;
move-object v1, p1
move-object v2, p4
move-wide v3, p2
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
goto :goto_1d
:pswitch_55
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable32;
move-object v1, p1
move-object v2, p4
move-wide v3, p2
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable32;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
goto :goto_1d
:pswitch_5f
new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;
move-object v1, p1
move-object v2, p4
move-wide v3, p2
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
goto :goto_1d
nop
:pswitch_data_6a
.packed-switch 0x0
:pswitch_14
:pswitch_1e
:pswitch_5f
:pswitch_28
:pswitch_55
:pswitch_c
:pswitch_c
:pswitch_37
:pswitch_4b
:pswitch_c
:pswitch_c
:pswitch_c
:pswitch_c
:pswitch_c
:pswitch_41
.end packed-switch
.end method
.method protected createLookupCache()V
.registers 5
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
const/4 v1, 0x1
iget v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
mul-int/lit8 v2, v2, 0x2
const/16 v3, 0x40
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/SimpleCache;-><init>(II)V
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
instance-of v2, p1, Lcom/ibm/icu/impl/ICUResourceBundle;
if-eqz v2, :cond_26
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
move-object v1, v0
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
const/4 v2, 0x1
:goto_25
return v2
:cond_26
const/4 v2, 0x0
goto :goto_25
.end method
.method  findKey(IILcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)I
.registers 15
const/4 v4, 0x0
const/4 v6, 0x0
move v3, p1
const/4 v2, -0x1
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v8
:goto_8
add-int v9, v6, v3
shr-int/lit8 v4, v9, 0x1
if-ne v2, v4, :cond_10
const/4 v9, -0x1
:goto_f
return v9
:cond_10
move v2, v4
invoke-virtual {p3, p2, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getOffset(II)I
move-result v5
const/4 v1, 0x0
:goto_16
if-ge v1, v8, :cond_30
invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
iget-object v9, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->rawData:[B
aget-byte v9, v9, v5
int-to-char v0, v9
if-eqz v0, :cond_25
if-le v7, v0, :cond_27
:cond_25
move v6, v4
goto :goto_8
:cond_27
if-ge v7, v0, :cond_2b
move v3, v4
goto :goto_8
:cond_2b
add-int/lit8 v5, v5, 0x1
add-int/lit8 v1, v1, 0x1
goto :goto_16
:cond_30
iget-object v9, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->rawData:[B
aget-byte v9, v9, v5
int-to-char v0, v9
if-eqz v0, :cond_39
move v3, v4
goto :goto_8
:cond_39
move v9, v4
goto :goto_f
.end method
.method  get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
.registers 9
invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;
if-nez v1, :cond_4f
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;
if-eqz v1, :cond_16
invoke-virtual {v1, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;
:cond_16
if-nez v1, :cond_4f
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/util/MissingResourceException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Can\'t find resource for bundle "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", key "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v2
:cond_4f
check-cast p3, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V
return-object v1
.end method
.method public getAliasPath()Ljava/lang/String;
.registers 3
iget-wide v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resource:J
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringValue(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getAliasPath(I)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->isAlias(I)Z
move-result v0
if-eqz v0, :cond_a
iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
if-le p1, v0, :cond_d
:cond_a
const-string v0, ""
:goto_c
return-object v0
:cond_d
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResourceHandle(I)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringValue(J)Ljava/lang/String;
move-result-object v0
goto :goto_c
.end method
.method public getAliasPath(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIndexOfKey(Ljava/lang/String;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAliasPath(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected getBaseName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->baseName:Ljava/lang/String;
return-object v0
.end method
.method public getKeysSafe()Ljava/util/Enumeration;
.registers 6
iget-wide v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resource:J
invoke-static {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I
move-result v3
const/4 v4, 0x2
if-eq v3, v4, :cond_e
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;
move-result-object v3
:goto_d
return-object v3
:cond_e
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
const/4 v1, 0x0
:goto_14
iget v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
if-ge v1, v3, :cond_22
invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_14
:cond_22
invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v3
goto :goto_d
.end method
.method public getLoadingStatus()I
.registers 2
iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->loadingStatus:I
return v0
.end method
.method public getLocale()Ljava/util/Locale;
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;
move-result-object v0
return-object v0
.end method
.method protected getLocaleID()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->localeID:Ljava/lang/String;
return-object v0
.end method
.method protected getNoFallback()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->noFallback:Z
return v0
.end method
.method public getOffset(II)I
.registers 4
const/4 v0, -0x1
return v0
.end method
.method public getParent()Lcom/ibm/icu/util/UResourceBundle;
.registers 1
iget-object p0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;
check-cast p0, Lcom/ibm/icu/util/UResourceBundle;
return-object p0
.end method
.method public getResPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resPath:Ljava/lang/String;
return-object v0
.end method
.method  getStringValue(J)Ljava/lang/String;
.registers 10
const-wide/16 v5, 0x0
cmp-long v5, p1, v5
if-nez v5, :cond_9
const-string v5, ""
:goto_8
return-object v5
:cond_9
invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_OFFSET(J)I
move-result v3
iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->rawData:[B
invoke-static {v5, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getInt([BI)I
move-result v2
const/4 v5, 0x1
invoke-static {v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIntOffset(I)I
move-result v5
add-int v4, v3, v5
new-array v0, v2, [C
const/4 v1, 0x0
:goto_1d
if-ge v1, v2, :cond_2f
iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->rawData:[B
invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getCharOffset(I)I
move-result v6
add-int/2addr v6, v4
invoke-static {v5, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getChar([BI)C
move-result v5
aput-char v5, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_1d
:cond_2f
new-instance v5, Ljava/lang/String;
invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V
goto :goto_8
.end method
.method public getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getULocale()Lcom/ibm/icu/util/ULocale;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->ulocale:Lcom/ibm/icu/util/ULocale;
return-object v0
.end method
.method public getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
.registers 7
const/4 v1, 0x0
move-object v0, p0
const/4 v2, 0x0
invoke-static {p1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v1
if-nez v1, :cond_3c
new-instance v2, Ljava/util/MissingResourceException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Can\'t find resource for bundle "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", key "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v2
:cond_3c
return-object v1
.end method
.method protected handleGet(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
.registers 9
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
if-eqz v3, :cond_12
invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->integerValueOf(I)Ljava/lang/Integer;
move-result-object v1
iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v3, v1}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/util/UResourceBundle;
:cond_12
if-nez v2, :cond_34
const/4 v3, 0x1
new-array v0, v3, [Z
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGetImpl(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
if-eqz v2, :cond_34
iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
if-eqz v3, :cond_34
const/4 v3, 0x0
aget-boolean v3, v0, v3
if-nez v3, :cond_34
iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v3, v1, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_34
return-object v2
.end method
.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
.registers 12
const/4 v1, 0x1
const/4 v7, 0x0
const/4 v6, 0x0
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v0, p1}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/ibm/icu/util/UResourceBundle;
:cond_f
if-nez v6, :cond_37
new-array v4, v1, [I
new-array v5, v1, [Z
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGetImpl(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[I[Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
if-eqz v6, :cond_37
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
if-eqz v0, :cond_37
aget-boolean v0, v5, v7
if-nez v0, :cond_37
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v0, p1, v6}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->lookup:Lcom/ibm/icu/impl/ICUCache;
aget v1, v4, v7
invoke-static {v1}, Lcom/ibm/icu/impl/Utility;->integerValueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1, v6}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_37
return-object v6
.end method
.method protected handleGetImpl(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[Z)Lcom/ibm/icu/util/UResourceBundle;
.registers 6
const/4 v0, 0x0
return-object v0
.end method
.method protected handleGetImpl(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[I[Z)Lcom/ibm/icu/util/UResourceBundle;
.registers 7
const/4 v0, 0x0
return-object v0
.end method
.method public isAlias()Z
.registers 3
iget-wide v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resource:J
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public isAlias(I)Z
.registers 7
const/4 v4, 0x0
iget v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
if-le p1, v2, :cond_7
move v2, v4
:goto_6
return v2
:cond_7
iget-wide v2, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resource:J
invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I
move-result v2
const/4 v3, 0x2
if-eq v2, v3, :cond_12
move v2, v4
goto :goto_6
:cond_12
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResourceHandle(I)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I
move-result v2
const/4 v3, 0x3
if-ne v2, v3, :cond_1f
const/4 v2, 0x1
goto :goto_6
:cond_1f
move v2, v4
goto :goto_6
.end method
.method public isAlias(Ljava/lang/String;)Z
.registers 6
const/4 v3, 0x0
iget-wide v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->resource:J
invoke-static {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I
move-result v1
const/4 v2, 0x2
if-eq v1, v2, :cond_c
move v1, v3
:goto_b
return v1
:cond_c
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIndexOfKey(Ljava/lang/String;)I
move-result v0
iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->size:I
if-gt v0, v1, :cond_16
if-gez v0, :cond_18
:cond_16
move v1, v3
goto :goto_b
:cond_18
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->isAlias(I)Z
move-result v1
goto :goto_b
.end method
.method public setLoadingStatus(I)V
.registers 2
iput p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->loadingStatus:I
return-void
.end method
.method public setLoadingStatus(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;
move-result-object v0
const-string v1, "root"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_11
const/4 v1, 0x2
invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
:goto_10
return-void
:cond_11
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1c
const/4 v1, 0x4
invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
goto :goto_10
:cond_1c
const/4 v1, 0x1
invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
goto :goto_10
.end method
.method protected setParent(Ljava/util/ResourceBundle;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;
return-void
.end method
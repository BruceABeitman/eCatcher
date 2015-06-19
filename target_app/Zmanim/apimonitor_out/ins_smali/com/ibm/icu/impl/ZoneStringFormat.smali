.class public Lcom/ibm/icu/impl/ZoneStringFormat;
.super Ljava/lang/Object;
.source "ZoneStringFormat.java"
.field private static final DAYLIGHT_LONG:I = 0x20
.field private static final DAYLIGHT_SHORT:I = 0x40
.field private static final DST_CHECK_RANGE:J = 0x3b3922000L
.field private static final GENERIC_LONG:I = 0x2
.field private static final GENERIC_SHORT:I = 0x4
.field private static final INDEXMAP:[I = null
.field private static final LOCATION:I = 0x1
.field private static final NAMETYPEMAP:[I = null
.field private static final RESKEY_COMMONLY_USED:Ljava/lang/String; = "cu"
.field private static final RESKEY_EXEMPLAR_CITY:Ljava/lang/String; = "ec"
.field private static final RESKEY_LONG_DAYLIGHT:Ljava/lang/String; = "ld"
.field private static final RESKEY_LONG_GENERIC:Ljava/lang/String; = "lg"
.field private static final RESKEY_LONG_STANDARD:Ljava/lang/String; = "ls"
.field private static final RESKEY_SHORT_DAYLIGHT:Ljava/lang/String; = "sd"
.field private static final RESKEY_SHORT_GENERIC:Ljava/lang/String; = "sg"
.field private static final RESKEY_SHORT_STANDARD:Ljava/lang/String; = "ss"
.field private static final STANDARD_LONG:I = 0x8
.field private static final STANDARD_SHORT:I = 0x10
.field private static TZFORMAT_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
.field private static final ZSIDX_LOCATION:I = 0x0
.field private static final ZSIDX_LONG_DAYLIGHT:I = 0x3
.field private static final ZSIDX_LONG_GENERIC:I = 0x5
.field private static final ZSIDX_LONG_STANDARD:I = 0x1
.field private static final ZSIDX_MAX:I = 0x7
.field private static final ZSIDX_SHORT_DAYLIGHT:I = 0x4
.field private static final ZSIDX_SHORT_GENERIC:I = 0x6
.field private static final ZSIDX_SHORT_STANDARD:I = 0x2
.field private isFullyLoaded:Z
.field private locale:Lcom/ibm/icu/util/ULocale;
.field private mzidToStrings:Ljava/util/Map;
.field private transient region:Ljava/lang/String;
.field private tzidToStrings:Ljava/util/Map;
.field private zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V
sput-object v0, Lcom/ibm/icu/impl/ZoneStringFormat;->TZFORMAT_CACHE:Lcom/ibm/icu/impl/ICUCache;
const/16 v0, 0x8
new-array v0, v0, [I
fill-array-data v0, :array_1a
sput-object v0, Lcom/ibm/icu/impl/ZoneStringFormat;->INDEXMAP:[I
const/4 v0, 0x7
new-array v0, v0, [I
fill-array-data v0, :array_2e
sput-object v0, Lcom/ibm/icu/impl/ZoneStringFormat;->NAMETYPEMAP:[I
return-void
nop
:array_2e
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x10t 0x0t 0x0t 0x0t
0x20t 0x0t 0x0t 0x0t
0x40t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_1a
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
.end array-data
.end method
.method protected constructor <init>(Lcom/ibm/icu/util/ULocale;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
iput-object p1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->mzidToStrings:Ljava/util/Map;
new-instance v0, Lcom/ibm/icu/impl/TextTrieMap;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V
iput-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
return-void
.end method
.method public constructor <init>([[Ljava/lang/String;)V
.registers 16
const/4 v13, 0x0
const/4 v10, 0x0
const/4 v12, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v13, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
new-instance v9, Ljava/util/HashMap;
invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
iput-object v9, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
new-instance v9, Lcom/ibm/icu/impl/TextTrieMap;
invoke-direct {v9, v12}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V
iput-object v9, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
const/4 v1, 0x0
:goto_17
array-length v9, p1
if-ge v1, v9, :cond_64
aget-object v9, p1, v1
aget-object v6, v9, v13
const/4 v9, 0x7
new-array v3, v9, [Ljava/lang/String;
const/4 v2, 0x1
:goto_22
aget-object v9, p1, v1
array-length v9, v9
if-ge v2, v9, :cond_53
aget-object v9, p1, v1
aget-object v9, v9, v2
if-eqz v9, :cond_50
invoke-static {v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getNameTypeIndex(I)I
move-result v5
const/4 v9, -0x1
if-eq v5, v9, :cond_50
aget-object v9, p1, v1
aget-object v9, v9, v2
aput-object v9, v3, v5
invoke-static {v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getNameType(I)I
move-result v4
new-instance v7, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
aget-object v9, p1, v1
aget-object v9, v9, v2
invoke-direct {v7, v6, v9, v4, v10}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/ibm/icu/impl/ZoneStringFormat$1;)V
iget-object v9, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
aget-object v11, p1, v1
aget-object v11, v11, v2
invoke-virtual {v9, v11, v7}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
:cond_50
add-int/lit8 v2, v2, 0x1
goto :goto_22
:cond_53
new-instance v8, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
move-object v0, v10
check-cast v0, [[Ljava/lang/String;
move-object v9, v0
invoke-direct {v8, v3, v12, v9, v10}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;-><init>([Ljava/lang/String;Z[[Ljava/lang/String;Lcom/ibm/icu/impl/ZoneStringFormat$1;)V
iget-object v9, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_64
iput-boolean v12, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
return-void
.end method
.method private addSingleZone(Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/MessageFormat;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;)V
.registers 45
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
move-object/from16 v33, v0
move-object/from16 v0, v33
move-object/from16 v1, p1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_11
:cond_10
return-void
:cond_11
const/16 v33, 0x2f
const/16 v34, 0x3a
move-object/from16 v0, p1
move/from16 v1, v33
move/from16 v2, v34
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v30
const/16 v33, 0x1
const-string v34, "ls"
move-object/from16 v0, p2
move-object/from16 v1, v30
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
const/16 v33, 0x2
const-string v34, "ss"
move-object/from16 v0, p2
move-object/from16 v1, v30
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
const/16 v33, 0x3
const-string v34, "ld"
move-object/from16 v0, p2
move-object/from16 v1, v30
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
const/16 v33, 0x4
const-string v34, "sd"
move-object/from16 v0, p2
move-object/from16 v1, v30
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
const/16 v33, 0x5
const-string v34, "lg"
move-object/from16 v0, p2
move-object/from16 v1, v30
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
const/16 v33, 0x6
const-string v34, "sg"
move-object/from16 v0, p2
move-object/from16 v1, v30
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const/4 v8, 0x0
const/4 v6, 0x0
if-eqz v9, :cond_231
const-string v33, "ec"
move-object/from16 v0, p2
move-object/from16 v1, v30
move-object/from16 v2, v33
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
if-nez v6, :cond_b1
const/16 v33, 0x2f
move-object/from16 v0, p1
move/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v33
add-int/lit8 v33, v33, 0x1
move-object/from16 v0, p1
move/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v33
const/16 v34, 0x5f
const/16 v35, 0x20
invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v6
:cond_b1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
move-object/from16 v33, v0
move-object v0, v9
move-object/from16 v1, v33
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;->getLocalizedCountry(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v8
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/impl/ZoneMeta;->getSingleCountry(Ljava/lang/String;)Ljava/lang/String;
move-result-object v33
if-eqz v33, :cond_213
const/16 v33, 0x0
const/16 v34, 0x1
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
aput-object v8, v34, v35
move-object/from16 v0, p4
move-object/from16 v1, v34
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
:goto_dc
move-object/from16 v0, p2
move-object/from16 v1, v30
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;->isCommonlyUsed(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Z
move-result v7
const/16 v18, 0x0
invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getOlsonToMetaMap()Ljava/util/Map;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, p1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/util/List;
if-eqz v16, :cond_34f
invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_fa
:cond_fa
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v33
if-eqz v33, :cond_34f
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->mzidToStrings:Ljava/util/Map;
move-object/from16 v33, v0
move-object/from16 v0, v22
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;
move-object/from16 v34, v0
invoke-interface/range {v33 .. v34}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v19
check-cast v19, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
if-nez v19, :cond_284
new-instance v33, Ljava/lang/StringBuilder;
invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V
const-string v34, "meta:"
invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v33
move-object/from16 v0, v22
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;
move-object/from16 v34, v0
invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v33
invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
move-object/from16 v0, p2
move-object/from16 v1, v21
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;->isCommonlyUsed(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Z
move-result v17
const/16 v33, 0x1
const-string v34, "ls"
move-object/from16 v0, p2
move-object/from16 v1, v21
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p6, v33
const/16 v33, 0x2
const-string v34, "ss"
move-object/from16 v0, p2
move-object/from16 v1, v21
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p6, v33
const/16 v33, 0x3
const-string v34, "ld"
move-object/from16 v0, p2
move-object/from16 v1, v21
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p6, v33
const/16 v33, 0x4
const-string v34, "sd"
move-object/from16 v0, p2
move-object/from16 v1, v21
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p6, v33
const/16 v33, 0x5
const-string v34, "lg"
move-object/from16 v0, p2
move-object/from16 v1, v21
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p6, v33
const/16 v33, 0x6
const-string v34, "sg"
move-object/from16 v0, p2
move-object/from16 v1, v21
move-object/from16 v2, v34
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v34
aput-object v34, p6, v33
const/16 v33, 0x0
const/16 v34, 0x0
aput-object v34, p6, v33
new-instance v19, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
const/16 p4, 0x0
check-cast p4, [[Ljava/lang/String;
const/16 v33, 0x0
move-object/from16 v0, v19
move-object/from16 v1, p6
move/from16 v2, v17
move-object/from16 v3, p4
move-object/from16 v4, v33
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;-><init>([Ljava/lang/String;Z[[Ljava/lang/String;Lcom/ibm/icu/impl/ZoneStringFormat$1;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->mzidToStrings:Ljava/util/Map;
move-object/from16 v33, v0
move-object/from16 v0, v22
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;
move-object/from16 v34, v0
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object/from16 v2, v19
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object/from16 v0, v22
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;
move-object/from16 v33, v0
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getRegion()Ljava/lang/String;
move-result-object v34
invoke-static/range {v33 .. v34}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIdByMetazone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v25
const/4 v12, 0x0
:goto_1da
move-object/from16 v0, p6
array-length v0, v0
move/from16 v33, v0
move v0, v12
move/from16 v1, v33
if-ge v0, v1, :cond_284
aget-object v33, p6, v12
if-eqz v33, :cond_210
invoke-static {v12}, Lcom/ibm/icu/impl/ZoneStringFormat;->getNameType(I)I
move-result v29
new-instance v31, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
aget-object v33, p6, v12
const/16 v34, 0x0
move-object/from16 v0, v31
move-object/from16 v1, v25
move-object/from16 v2, v33
move/from16 v3, v29
move-object/from16 v4, v34
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/ibm/icu/impl/ZoneStringFormat$1;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
move-object/from16 v33, v0
aget-object v34, p6, v12
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object/from16 v2, v31
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
:cond_210
add-int/lit8 v12, v12, 0x1
goto :goto_1da
:cond_213
const/16 v33, 0x0
const/16 v34, 0x2
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
aput-object v6, v34, v35
const/16 v35, 0x1
aput-object v8, v34, v35
move-object/from16 v0, p3
move-object/from16 v1, v34
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
goto/16 :goto_dc
:cond_231
const-string v33, "Etc/"
move-object/from16 v0, p1
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v33
if-eqz v33, :cond_245
const/16 v33, 0x0
const/16 v34, 0x0
aput-object v34, p5, v33
goto/16 :goto_dc
:cond_245
move-object/from16 v14, p1
const/16 v33, 0x2f
move-object v0, v14
move/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v28
const/16 v33, -0x1
move/from16 v0, v28
move/from16 v1, v33
if-ne v0, v1, :cond_260
const/16 v33, 0x0
const/16 v34, 0x0
aput-object v34, p5, v33
goto/16 :goto_dc
:cond_260
add-int/lit8 v33, v28, 0x1
move-object/from16 v0, p1
move/from16 v1, v33
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v14
const/16 v33, 0x0
const/16 v34, 0x1
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
aput-object v14, v34, v35
move-object/from16 v0, p4
move-object/from16 v1, v34
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v34
aput-object v34, p5, v33
goto/16 :goto_dc
:cond_284
const/16 v33, 0x5
move-object/from16 v0, v19
move/from16 v1, v33
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v13
const/16 v33, 0x6
move-object/from16 v0, v19
move/from16 v1, v33
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v26
if-nez v13, :cond_29c
if-eqz v26, :cond_fa
:cond_29c
const/4 v5, 0x1
const/4 v12, 0x0
:goto_29e
move v0, v12
move/from16 v1, v18
if-ge v0, v1, :cond_2b6
aget-object v33, p7, v12
const/16 v34, 0x0
aget-object v33, v33, v34
move-object/from16 v0, v22
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;
move-object/from16 v34, v0
invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_349
const/4 v5, 0x0
:cond_2b6
if-eqz v5, :cond_fa
const/4 v15, 0x0
move-object/from16 v0, v22
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;
move-object/from16 v33, v0
move-object/from16 v0, v33
move-object v1, v9
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIdByMetazone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
move-object/from16 v0, p1
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v33
if-eqz v33, :cond_34d
move-object v15, v8
:goto_2d1
aget-object v33, p7, v18
const/16 v34, 0x0
move-object/from16 v0, v22
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;
move-object/from16 v35, v0
aput-object v35, v33, v34
aget-object v33, p7, v18
const/16 v34, 0x1
const/16 v35, 0x0
aput-object v35, v33, v34
aget-object v33, p7, v18
const/16 v34, 0x2
const/16 v35, 0x0
aput-object v35, v33, v34
aget-object v33, p7, v18
const/16 v34, 0x3
const/16 v35, 0x0
aput-object v35, v33, v34
if-eqz v15, :cond_345
if-eqz v13, :cond_317
aget-object v33, p7, v18
const/16 v34, 0x1
const/16 v35, 0x2
move/from16 v0, v35
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v35, v0
const/16 v36, 0x0
aput-object v15, v35, v36
const/16 v36, 0x1
aput-object v13, v35, v36
move-object/from16 v0, p3
move-object/from16 v1, v35
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v35
aput-object v35, v33, v34
:cond_317
if-eqz v26, :cond_345
aget-object v33, p7, v18
const/16 v34, 0x2
const/16 v35, 0x2
move/from16 v0, v35
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v35, v0
const/16 v36, 0x0
aput-object v15, v35, v36
const/16 v36, 0x1
aput-object v26, v35, v36
move-object/from16 v0, p3
move-object/from16 v1, v35
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v35
aput-object v35, v33, v34
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->isShortFormatCommonlyUsed()Z
invoke-static/range {v19 .. v19}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$300(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;)Z
move-result v27
if-eqz v27, :cond_345
aget-object v33, p7, v18
const/16 v34, 0x3
const-string v35, "1"
aput-object v35, v33, v34
:cond_345
add-int/lit8 v18, v18, 0x1
goto/16 :goto_fa
:cond_349
add-int/lit8 v12, v12, 0x1
goto/16 :goto_29e
:cond_34d
move-object v15, v6
goto :goto_2d1
:cond_34f
const/4 v10, 0x0
check-cast v10, [[Ljava/lang/String;
if-eqz v18, :cond_370
move/from16 v0, v18
new-array v0, v0, [[Ljava/lang/String;
move-object v10, v0
const/16 v20, 0x0
:goto_35b
move/from16 v0, v20
move/from16 v1, v18
if-ge v0, v1, :cond_370
aget-object v33, p7, v20
invoke-virtual/range {v33 .. v33}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object p2
check-cast p2, [Ljava/lang/String;
check-cast p2, [Ljava/lang/String;
aput-object p2, v10, v20
add-int/lit8 v20, v20, 0x1
goto :goto_35b
:cond_370
new-instance v32, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
const/16 v33, 0x0
move-object/from16 v0, v32
move-object/from16 v1, p5
move v2, v7
move-object v3, v10
move-object/from16 v4, v33
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;-><init>([Ljava/lang/String;Z[[Ljava/lang/String;Lcom/ibm/icu/impl/ZoneStringFormat$1;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
move-object/from16 v33, v0
move-object/from16 v0, v33
move-object/from16 v1, p1
move-object/from16 v2, v32
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p5, :cond_3ca
const/4 v12, 0x0
:goto_391
move-object/from16 v0, p5
array-length v0, v0
move/from16 v33, v0
move v0, v12
move/from16 v1, v33
if-ge v0, v1, :cond_3ca
aget-object v33, p5, v12
if-eqz v33, :cond_3c7
invoke-static {v12}, Lcom/ibm/icu/impl/ZoneStringFormat;->getNameType(I)I
move-result v29
new-instance v31, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
aget-object v33, p5, v12
const/16 v34, 0x0
move-object/from16 v0, v31
move-object/from16 v1, p1
move-object/from16 v2, v33
move/from16 v3, v29
move-object/from16 v4, v34
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/ibm/icu/impl/ZoneStringFormat$1;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
move-object/from16 v33, v0
aget-object v34, p5, v12
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object/from16 v2, v31
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
:cond_3c7
add-int/lit8 v12, v12, 0x1
goto :goto_391
:cond_3ca
if-eqz v10, :cond_10
const/4 v12, 0x0
:goto_3cd
move-object v0, v10
array-length v0, v0
move/from16 v33, v0
move v0, v12
move/from16 v1, v33
if-ge v0, v1, :cond_10
aget-object v33, v10, v12
const/16 v34, 0x1
aget-object v33, v33, v34
if-eqz v33, :cond_40c
new-instance v31, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
aget-object v33, v10, v12
const/16 v34, 0x1
aget-object v33, v33, v34
const/16 v34, 0x2
const/16 v35, 0x0
move-object/from16 v0, v31
move-object/from16 v1, p1
move-object/from16 v2, v33
move/from16 v3, v34
move-object/from16 v4, v35
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/ibm/icu/impl/ZoneStringFormat$1;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
move-object/from16 v33, v0
aget-object v34, v10, v12
const/16 v35, 0x1
aget-object v34, v34, v35
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object/from16 v2, v31
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
:cond_40c
aget-object v33, v10, v12
const/16 v34, 0x2
aget-object v33, v33, v34
if-eqz v33, :cond_442
new-instance v31, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
aget-object v33, v10, v12
const/16 v34, 0x1
aget-object v33, v33, v34
const/16 v34, 0x4
const/16 v35, 0x0
move-object/from16 v0, v31
move-object/from16 v1, p1
move-object/from16 v2, v33
move/from16 v3, v34
move-object/from16 v4, v35
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/ibm/icu/impl/ZoneStringFormat$1;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
move-object/from16 v33, v0
aget-object v34, v10, v12
const/16 v35, 0x2
aget-object v34, v34, v35
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object/from16 v2, v31
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
:cond_442
add-int/lit8 v12, v12, 0x1
goto :goto_3cd
.end method
.method private find(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
.registers 7
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ZoneStringFormat;->subFind(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v1
iget-boolean v2, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
if-eqz v2, :cond_a
move-object v2, v1
:goto_9
return-object v2
:cond_a
if-eqz v1, :cond_1d
invoke-virtual {v1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
sub-int/2addr v2, p2
if-ne v2, v0, :cond_1d
move-object v2, v1
goto :goto_9
:cond_1d
invoke-direct {p0}, Lcom/ibm/icu/impl/ZoneStringFormat;->loadFull()V
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ZoneStringFormat;->subFind(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v2
goto :goto_9
.end method
.method private static getFallbackFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;
.registers 3
const-string v1, "fallbackFormat"
invoke-static {p0, v1}, Lcom/ibm/icu/impl/ZoneMeta;->getTZLocalizationInfo(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a
const-string v0, "{1} ({0})"
:cond_a
new-instance v1, Lcom/ibm/icu/text/MessageFormat;
invoke-direct {v1, v0, p0}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
return-object v1
.end method
.method private getGenericPartialLocationString(Ljava/lang/String;ZJZ)Ljava/lang/String;
.registers 10
iget-boolean v3, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
if-nez v3, :cond_7
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ZoneStringFormat;->loadZone(Ljava/lang/String;)V
:cond_7
const/4 v1, 0x0
invoke-static {p1, p3, p4}, Lcom/ibm/icu/impl/ZoneMeta;->getMetazoneID(Ljava/lang/String;J)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v3, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
if-eqz v2, :cond_1c
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getGenericPartialLocationString(Ljava/lang/String;ZZ)Ljava/lang/String;
invoke-static {v2, v0, p2, p5}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$400(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;Ljava/lang/String;ZZ)Ljava/lang/String;
move-result-object v1
:cond_1c
return-object v1
.end method
.method private getGenericString(Lcom/ibm/icu/util/Calendar;ZZ)Ljava/lang/String;
.registers 37
const/16 v28, 0x0
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v30
invoke-virtual/range {v30 .. v30}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
move v5, v0
if-nez v5, :cond_17
move-object/from16 v0, p0
move-object v1, v6
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;->loadZone(Ljava/lang/String;)V
:cond_17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
move-object v5, v0
invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v32
check-cast v32, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
if-nez v32, :cond_40
invoke-static {v6}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalSystemID(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
if-eqz v19, :cond_40
move-object/from16 v0, v19
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_40
move-object/from16 v6, v19
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
move-object v5, v0
invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v32
check-cast v32, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
:cond_40
if-eqz v32, :cond_54
if-eqz p2, :cond_169
if-eqz p3, :cond_4c
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->isShortFormatCommonlyUsed()Z
invoke-static/range {v32 .. v32}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$300(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;)Z
move-result v5
if-eqz v5, :cond_54
:cond_4c
const/4 v5, 0x6
move-object/from16 v0, v32
move v1, v5
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v28
:goto_54
:cond_54
if-nez v28, :cond_159
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->mzidToStrings:Ljava/util/Map;
move-object v5, v0
if-eqz v5, :cond_159
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v8
invoke-static {v6, v8, v9}, Lcom/ibm/icu/impl/ZoneMeta;->getMetazoneID(Ljava/lang/String;J)Ljava/lang/String;
move-result-object v21
if-eqz v21, :cond_159
const/16 v31, 0x0
const/16 v5, 0x10
move-object/from16 v0, p1
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v5
if-nez v5, :cond_a9
const/16 v31, 0x1
move-object/from16 v0, v30
instance-of v0, v0, Lcom/ibm/icu/util/BasicTimeZone;
move v5, v0
if-eqz v5, :cond_19a
move-object/from16 v0, v30
check-cast v0, Lcom/ibm/icu/util/BasicTimeZone;
move-object/from16 v18, v0
const/4 v5, 0x1
move-object/from16 v0, v18
move-wide v1, v8
move v3, v5
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
move-result-object v17
if-eqz v17, :cond_173
invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J
move-result-wide v10
sub-long v10, v8, v10
const-wide v12, 0x3b3922000L
cmp-long v5, v10, v12
if-gez v5, :cond_173
invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;
move-result-object v5
invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I
move-result v5
if-eqz v5, :cond_173
const/16 v31, 0x0
:goto_a9
:cond_a9
if-eqz v31, :cond_d3
if-eqz p2, :cond_1d3
const/4 v5, 0x2
move v7, v5
:goto_af
move-object/from16 v5, p0
move/from16 v10, p3
invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v28
if-eqz v28, :cond_d3
if-eqz p2, :cond_1d7
const/4 v5, 0x6
move v7, v5
:goto_bd
move-object/from16 v5, p0
move/from16 v10, p3
invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v20
if-eqz v20, :cond_d3
move-object/from16 v0, v28
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_d3
const/16 v28, 0x0
:cond_d3
if-nez v28, :cond_159
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/ZoneStringFormat;->mzidToStrings:Ljava/util/Map;
move-object v5, v0
move-object v0, v5
move-object/from16 v1, v21
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
if-eqz v22, :cond_f7
if-eqz p2, :cond_1db
if-eqz p3, :cond_ef
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->isShortFormatCommonlyUsed()Z
invoke-static/range {v22 .. v22}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$300(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;)Z
move-result v5
if-eqz v5, :cond_f7
:cond_ef
const/4 v5, 0x6
move-object/from16 v0, v22
move v1, v5
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v28
:cond_f7
:goto_f7
if-eqz v28, :cond_159
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getRegion()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, v21
move-object v1, v5
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIdByMetazone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
move-object v0, v6
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_159
const/16 v5, 0xf
move-object/from16 v0, p1
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v27
const/16 v5, 0x10
move-object/from16 v0, p1
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v29
invoke-static/range {v24 .. v24}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
move-result-object v26
const/4 v5, 0x2
move v0, v5
new-array v0, v0, [I
move-object/from16 v25, v0
move/from16 v0, v27
int-to-long v0, v0
move-wide v10, v0
add-long/2addr v10, v8
move/from16 v0, v29
int-to-long v0, v0
move-wide v12, v0
add-long/2addr v10, v12
const/4 v5, 0x1
move-object/from16 v0, v26
move-wide v1, v10
move v3, v5
move-object/from16 v4, v25
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V
const/4 v5, 0x0
aget v5, v25, v5
move/from16 v0, v27
move v1, v5
if-ne v0, v1, :cond_14d
const/4 v5, 0x1
aget v5, v25, v5
move/from16 v0, v29
move v1, v5
if-eq v0, v1, :cond_159
:cond_14d
move-object/from16 v0, v32
move-object/from16 v1, v21
move/from16 v2, p2
move/from16 v3, p3
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getGenericPartialLocationString(Ljava/lang/String;ZZ)Ljava/lang/String;
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$400(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;Ljava/lang/String;ZZ)Ljava/lang/String;
move-result-object v28
:cond_159
if-nez v28, :cond_168
const/4 v12, 0x0
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v13
const/4 v15, 0x0
move-object/from16 v10, p0
move-object v11, v6
invoke-direct/range {v10 .. v15}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v28
:cond_168
return-object v28
:cond_169
const/4 v5, 0x5
move-object/from16 v0, v32
move v1, v5
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v28
goto/16 :goto_54
:cond_173
const/4 v5, 0x0
move-object/from16 v0, v18
move-wide v1, v8
move v3, v5
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
move-result-object v16
if-eqz v16, :cond_a9
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J
move-result-wide v10
sub-long/2addr v10, v8
const-wide v12, 0x3b3922000L
cmp-long v5, v10, v12
if-gez v5, :cond_a9
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;
move-result-object v5
invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I
move-result v5
if-eqz v5, :cond_a9
const/16 v31, 0x0
goto/16 :goto_a9
:cond_19a
const/4 v5, 0x2
move v0, v5
new-array v0, v0, [I
move-object/from16 v23, v0
const-wide v10, 0x3b3922000L
sub-long v10, v8, v10
const/4 v5, 0x0
move-object/from16 v0, v30
move-wide v1, v10
move v3, v5
move-object/from16 v4, v23
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V
const/4 v5, 0x1
aget v5, v23, v5
if-eqz v5, :cond_1ba
const/16 v31, 0x0
goto/16 :goto_a9
:cond_1ba
const-wide v10, 0x3b3922000L
add-long/2addr v10, v8
const/4 v5, 0x0
move-object/from16 v0, v30
move-wide v1, v10
move v3, v5
move-object/from16 v4, v23
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V
const/4 v5, 0x1
aget v5, v23, v5
if-eqz v5, :cond_a9
const/16 v31, 0x0
goto/16 :goto_a9
:cond_1d3
const/4 v5, 0x1
move v7, v5
goto/16 :goto_af
:cond_1d7
const/4 v5, 0x5
move v7, v5
goto/16 :goto_bd
:cond_1db
const/4 v5, 0x5
move-object/from16 v0, v22
move v1, v5
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v28
goto/16 :goto_f7
.end method
.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/ZoneStringFormat;
.registers 3
sget-object v1, Lcom/ibm/icu/impl/ZoneStringFormat;->TZFORMAT_CACHE:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v1, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ZoneStringFormat;
if-nez v0, :cond_14
new-instance v0, Lcom/ibm/icu/impl/ZoneStringFormat;
invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ZoneStringFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V
sget-object v1, Lcom/ibm/icu/impl/ZoneStringFormat;->TZFORMAT_CACHE:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v1, p0, v0}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_14
return-object v0
.end method
.method private static getLocalizedCountry(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
if-eqz p0, :cond_45
const-string v3, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v3, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v2
sget-object v3, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
invoke-virtual {v2, v3}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_3c
invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3c
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "xx_"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v0
:cond_3c
if-eqz v0, :cond_44
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_45
:cond_44
move-object v0, p0
:cond_45
return-object v0
.end method
.method private static getNameType(I)I
.registers 3
const/4 v0, -0x1
if-ltz p0, :cond_c
sget-object v1, Lcom/ibm/icu/impl/ZoneStringFormat;->NAMETYPEMAP:[I
array-length v1, v1
if-ge p0, v1, :cond_c
sget-object v1, Lcom/ibm/icu/impl/ZoneStringFormat;->NAMETYPEMAP:[I
aget v0, v1, p0
:cond_c
return v0
.end method
.method private static getNameTypeIndex(I)I
.registers 3
const/4 v0, -0x1
const/4 v1, 0x1
if-lt p0, v1, :cond_d
sget-object v1, Lcom/ibm/icu/impl/ZoneStringFormat;->INDEXMAP:[I
array-length v1, v1
if-ge p0, v1, :cond_d
sget-object v1, Lcom/ibm/icu/impl/ZoneStringFormat;->INDEXMAP:[I
aget v0, v1, p0
:cond_d
return v0
.end method
.method private getRegion()Ljava/lang/String;
.registers 3
iget-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->region:Ljava/lang/String;
if-nez v1, :cond_24
iget-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->region:Ljava/lang/String;
iget-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->region:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_24
iget-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->region:Ljava/lang/String;
:goto_24
:cond_24
iget-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->region:Ljava/lang/String;
return-object v1
:cond_27
const-string v1, ""
iput-object v1, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->region:Ljava/lang/String;
goto :goto_24
.end method
.method private static getRegionFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;
.registers 3
const-string v1, "regionFormat"
invoke-static {p0, v1}, Lcom/ibm/icu/impl/ZoneMeta;->getTZLocalizationInfo(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a
const-string v0, "{0}"
:cond_a
new-instance v1, Lcom/ibm/icu/text/MessageFormat;
invoke-direct {v1, v0, p0}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
return-object v1
.end method
.method private getString(Ljava/lang/String;IJZ)Ljava/lang/String;
.registers 12
iget-boolean v5, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
if-nez v5, :cond_7
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ZoneStringFormat;->loadZone(Ljava/lang/String;)V
:cond_7
const/4 v3, 0x0
iget-object v5, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
if-nez v4, :cond_27
invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalSystemID(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_27
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_27
move-object p1, v0
iget-object v5, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
:cond_27
if-eqz v4, :cond_2c
packed-switch p2, :pswitch_data_6c
:goto_2c
:cond_2c
if-nez v3, :cond_47
iget-object v5, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->mzidToStrings:Ljava/util/Map;
if-eqz v5, :cond_47
if-eqz p2, :cond_47
invoke-static {p1, p3, p4}, Lcom/ibm/icu/impl/ZoneMeta;->getMetazoneID(Ljava/lang/String;J)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_47
iget-object v5, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->mzidToStrings:Ljava/util/Map;
invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;
if-eqz v2, :cond_47
packed-switch p2, :pswitch_data_7e
:cond_47
:goto_47
return-object v3
:pswitch_48
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v4, p2}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v3
goto :goto_2c
:pswitch_4d
if-eqz p5, :cond_55
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->isShortFormatCommonlyUsed()Z
invoke-static {v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$300(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;)Z
move-result v5
if-eqz v5, :cond_2c
:cond_55
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v4, p2}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v3
goto :goto_2c
:pswitch_5a
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v2, p2}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v3
goto :goto_47
:pswitch_5f
if-eqz p5, :cond_67
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->isShortFormatCommonlyUsed()Z
invoke-static {v2}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$300(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;)Z
move-result v5
if-eqz v5, :cond_47
:cond_67
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->getString(I)Ljava/lang/String;
invoke-static {v2, p2}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;->access$200(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStrings;I)Ljava/lang/String;
move-result-object v3
goto :goto_47
:pswitch_data_6c
.packed-switch 0x0
:pswitch_48
:pswitch_48
:pswitch_4d
:pswitch_48
:pswitch_4d
:pswitch_48
:pswitch_4d
.end packed-switch
:pswitch_data_7e
.packed-switch 0x1
:pswitch_5a
:pswitch_5f
:pswitch_5a
:pswitch_5f
:pswitch_5a
:pswitch_5f
.end packed-switch
.end method
.method private static getZoneStringFromBundle(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
if-eqz p0, :cond_1e
:try_start_3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
:try_end_1d
.catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_1d} :catch_1f
move-result-object v0
:goto_1e
:cond_1e
return-object v0
:catch_1f
move-exception v1
goto :goto_1e
.end method
.method private getZoneStrings(J)[[Ljava/lang/String;
.registers 12
const/4 v8, 0x0
invoke-direct {p0}, Lcom/ibm/icu/impl/ZoneStringFormat;->loadFull()V
iget-object v5, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->size()I
move-result v5
const/16 v6, 0x8
filled-new-array {v5, v6}, [I
move-result-object v5
const-class v6, Ljava/lang/String;
invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v4
check-cast v4, [[Ljava/lang/String;
const/4 v0, 0x0
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_21
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_73
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
aget-object v5, v4, v0
aput-object v2, v5, v8
aget-object v5, v4, v0
const/4 v6, 0x1
invoke-virtual {p0, v2, p1, p2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getLongStandard(Ljava/lang/String;J)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
aget-object v5, v4, v0
const/4 v6, 0x2
invoke-virtual {p0, v2, p1, p2, v8}, Lcom/ibm/icu/impl/ZoneStringFormat;->getShortStandard(Ljava/lang/String;JZ)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
aget-object v5, v4, v0
const/4 v6, 0x3
invoke-virtual {p0, v2, p1, p2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getLongDaylight(Ljava/lang/String;J)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
aget-object v5, v4, v0
const/4 v6, 0x4
invoke-virtual {p0, v2, p1, p2, v8}, Lcom/ibm/icu/impl/ZoneStringFormat;->getShortDaylight(Ljava/lang/String;JZ)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
aget-object v5, v4, v0
const/4 v6, 0x5
invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getGenericLocation(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
aget-object v5, v4, v0
const/4 v6, 0x6
invoke-virtual {p0, v2, p1, p2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getLongGenericNonLocation(Ljava/lang/String;J)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
aget-object v5, v4, v0
const/4 v6, 0x7
invoke-virtual {p0, v2, p1, p2, v8}, Lcom/ibm/icu/impl/ZoneStringFormat;->getShortGenericNonLocation(Ljava/lang/String;JZ)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_73
return-object v4
.end method
.method private static isCommonlyUsed(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Z
.registers 7
const/4 v0, 0x0
if-eqz p0, :cond_28
:try_start_3
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "cu"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I
:try_end_23
.catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_23} :catch_2c
move-result v2
if-eqz v2, :cond_29
const/4 v3, 0x1
move v0, v3
:cond_28
:goto_28
return v0
:cond_29
const/4 v3, 0x0
move v0, v3
goto :goto_28
:catch_2c
move-exception v3
goto :goto_28
.end method
.method private declared-synchronized loadFull()V
.registers 12
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_61
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:cond_7
const/4 v2, 0x0
:try_start_8
const-string v0, "com/ibm/icu/impl/data/icudt42b"
iget-object v3, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v8
check-cast v8, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v0, "zoneStrings"
invoke-virtual {v8, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_61
.catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_17} :catch_68
move-result-object v2
:goto_18
:try_start_18
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;
move-result-object v10
const/4 v0, 0x7
new-array v5, v0, [Ljava/lang/String;
const/4 v0, 0x7
new-array v6, v0, [Ljava/lang/String;
const/16 v0, 0xa
const/4 v3, 0x4
filled-new-array {v0, v3}, [I
move-result-object v0
const-class v3, Ljava/lang/String;
invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v7
check-cast v7, [[Ljava/lang/String;
const/4 v9, 0x0
:goto_32
array-length v0, v10
if-ge v9, v0, :cond_64
aget-object v0, v10, v9
invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalSystemID(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_45
aget-object v0, v10, v9
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_48
:goto_45
:cond_45
add-int/lit8 v9, v9, 0x1
goto :goto_32
:cond_48
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_45
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getFallbackFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;
move-result-object v3
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getRegionFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;
move-result-object v4
move-object v0, p0
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/impl/ZoneStringFormat;->addSingleZone(Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/MessageFormat;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;)V
:try_end_60
.catchall {:try_start_18 .. :try_end_60} :catchall_61
goto :goto_45
:catchall_61
move-exception v0
monitor-exit p0
throw v0
:cond_64
const/4 v0, 0x1
:try_start_65
iput-boolean v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
:try_end_67
.catchall {:try_start_65 .. :try_end_67} :catchall_61
goto :goto_5
:catch_68
move-exception v0
goto :goto_18
.end method
.method private declared-synchronized loadZone(Ljava/lang/String;)V
.registers 11
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->isFullyLoaded:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_4c
if-eqz v0, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalSystemID(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_5
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->tzidToStrings:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
:try_end_12
.catchall {:try_start_7 .. :try_end_12} :catchall_4c
move-result v0
if-nez v0, :cond_5
const/4 v2, 0x0
:try_start_16
const-string v0, "com/ibm/icu/impl/data/icudt42b"
iget-object v3, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v8
check-cast v8, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v0, "zoneStrings"
invoke-virtual {v8, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
:try_end_25
.catchall {:try_start_16 .. :try_end_25} :catchall_4c
.catch Ljava/util/MissingResourceException; {:try_start_16 .. :try_end_25} :catch_4f
move-result-object v2
:goto_26
const/4 v0, 0x7
:try_start_27
new-array v5, v0, [Ljava/lang/String;
const/4 v0, 0x7
new-array v6, v0, [Ljava/lang/String;
const/16 v0, 0xa
const/4 v3, 0x4
filled-new-array {v0, v3}, [I
move-result-object v0
const-class v3, Ljava/lang/String;
invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v7
check-cast v7, [[Ljava/lang/String;
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getFallbackFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;
move-result-object v3
iget-object v0, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getRegionFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MessageFormat;
move-result-object v4
move-object v0, p0
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/impl/ZoneStringFormat;->addSingleZone(Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/MessageFormat;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;)V
:try_end_4b
.catchall {:try_start_27 .. :try_end_4b} :catchall_4c
goto :goto_5
:catchall_4c
move-exception v0
monitor-exit p0
throw v0
:catch_4f
move-exception v0
goto :goto_26
.end method
.method private subFind(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
.registers 12
const/4 v4, 0x0
new-instance v1, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringSearchResultHandler;
const/4 v6, 0x0
invoke-direct {v1, v6}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringSearchResultHandler;-><init>(Lcom/ibm/icu/impl/ZoneStringFormat$1;)V
iget-object v6, p0, Lcom/ibm/icu/impl/ZoneStringFormat;->zoneStringsTrie:Lcom/ibm/icu/impl/TextTrieMap;
invoke-virtual {v6, p1, p2, v1}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/String;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
invoke-virtual {v1}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringSearchResultHandler;->getMatchedZoneStrings()Ljava/util/List;
move-result-object v3
const/4 v0, 0x0
if-eqz v3, :cond_9e
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v6
if-lez v6, :cond_9e
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1d
:cond_1d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_9e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
#calls: Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getType()I
invoke-static {v5}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->access$600(Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;)I
move-result v6
and-int/2addr v6, p3
if-eqz v6, :cond_66
if-eqz v4, :cond_44
invoke-virtual {v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {v5}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v7
if-ge v6, v7, :cond_46
:cond_44
move-object v4, v5
goto :goto_1d
:cond_46
invoke-virtual {v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {v5}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v7
if-ne v6, v7, :cond_1d
invoke-virtual {v5}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->isGeneric()Z
move-result v6
if-eqz v6, :cond_1d
invoke-virtual {v4}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->isGeneric()Z
move-result v6
if-nez v6, :cond_1d
move-object v4, v5
goto :goto_1d
:cond_66
if-nez v4, :cond_1d
if-eqz v0, :cond_7c
invoke-virtual {v0}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {v5}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v7
if-ge v6, v7, :cond_7e
:cond_7c
move-object v0, v5
goto :goto_1d
:cond_7e
invoke-virtual {v0}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {v5}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v7
if-ne v6, v7, :cond_1d
invoke-virtual {v5}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->isGeneric()Z
move-result v6
if-eqz v6, :cond_1d
invoke-virtual {v0}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->isGeneric()Z
move-result v6
if-nez v6, :cond_1d
move-object v0, v5
goto :goto_1d
:cond_9e
if-nez v4, :cond_a3
if-eqz v0, :cond_a3
move-object v4, v0
:cond_a3
return-object v4
.end method
.method public findGenericLocation(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->find(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v0
return-object v0
.end method
.method public findGenericLong(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
.registers 4
const/16 v0, 0xb
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->find(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v0
return-object v0
.end method
.method public findGenericShort(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
.registers 4
const/16 v0, 0x15
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->find(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v0
return-object v0
.end method
.method public findSpecificLong(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
.registers 4
const/16 v0, 0x28
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->find(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v0
return-object v0
.end method
.method public findSpecificShort(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
.registers 4
const/16 v0, 0x50
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->find(Ljava/lang/String;II)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v0
return-object v0
.end method
.method public getGenericLocation(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v2, 0x0
const-wide/16 v3, 0x0
move-object v0, p0
move-object v1, p1
move v5, v2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getGenericLocationString(Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
.registers 8
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v3
move-object v0, p0
move v5, v2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getGenericLongString(Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0, v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getGenericString(Lcom/ibm/icu/util/Calendar;ZZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getGenericShortString(Lcom/ibm/icu/util/Calendar;Z)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getGenericString(Lcom/ibm/icu/util/Calendar;ZZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLongDaylight(Ljava/lang/String;J)Ljava/lang/String;
.registers 10
const/4 v2, 0x3
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-wide v3, p2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLongGenericNonLocation(Ljava/lang/String;J)Ljava/lang/String;
.registers 10
const/4 v2, 0x5
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-wide v3, p2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLongGenericPartialLocation(Ljava/lang/String;J)Ljava/lang/String;
.registers 10
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-wide v3, p2
move v5, v2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getGenericPartialLocationString(Ljava/lang/String;ZJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLongStandard(Ljava/lang/String;J)Ljava/lang/String;
.registers 10
const/4 v2, 0x1
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-wide v3, p2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getShortDaylight(Ljava/lang/String;JZ)Ljava/lang/String;
.registers 11
const/4 v2, 0x4
move-object v0, p0
move-object v1, p1
move-wide v3, p2
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getShortGenericNonLocation(Ljava/lang/String;JZ)Ljava/lang/String;
.registers 11
const/4 v2, 0x6
move-object v0, p0
move-object v1, p1
move-wide v3, p2
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getShortGenericPartialLocation(Ljava/lang/String;JZ)Ljava/lang/String;
.registers 11
const/4 v2, 0x1
move-object v0, p0
move-object v1, p1
move-wide v3, p2
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getGenericPartialLocationString(Ljava/lang/String;ZJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getShortStandard(Ljava/lang/String;JZ)Ljava/lang/String;
.registers 11
const/4 v2, 0x2
move-object v0, p0
move-object v1, p1
move-wide v3, p2
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSpecificLongString(Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
.registers 8
const/4 v5, 0x0
const/16 v0, 0x10
invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v0
if-nez v0, :cond_1c
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v3
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x3
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v3
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
goto :goto_1b
.end method
.method public getSpecificShortString(Lcom/ibm/icu/util/Calendar;Z)Ljava/lang/String;
.registers 9
const/16 v0, 0x10
invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v0
if-nez v0, :cond_1c
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v3
move-object v0, p0
move v5, p2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x4
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v3
move-object v0, p0
move v5, p2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ZoneStringFormat;->getString(Ljava/lang/String;IJZ)Ljava/lang/String;
move-result-object v0
goto :goto_1b
.end method
.method public getZoneStrings()[[Ljava/lang/String;
.registers 3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStrings(J)[[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
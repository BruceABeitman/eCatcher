.class public abstract Lcom/ibm/icu/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"
.implements Ljava/lang/Cloneable;
.field private static final DEBUG:Z = false
.field public static final DONE:I = -0x1
.field public static final KIND_CHARACTER:I = 0x0
.field private static final KIND_COUNT:I = 0x5
.field public static final KIND_LINE:I = 0x2
.field public static final KIND_SENTENCE:I = 0x3
.field public static final KIND_TITLE:I = 0x4
.field public static final KIND_WORD:I = 0x1
.field private static final iterCache:[Ljava/lang/ref/SoftReference;
.field private static shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
.field private actualLocale:Lcom/ibm/icu/util/ULocale;
.field private validLocale:Lcom/ibm/icu/util/ULocale;
.method static constructor <clinit>()V
.registers 1
const-string v0, "breakiterator"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z
move-result v0
sput-boolean v0, Lcom/ibm/icu/text/BreakIterator;->DEBUG:Z
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/ref/SoftReference;
sput-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
.registers 2
const-class v0, Lcom/ibm/icu/text/BreakIterator;
monitor-enter v0
:try_start_3
invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableLocales()[Ljava/util/Locale;
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_d
move-result-object v1
monitor-exit v0
return-object v1
:catchall_d
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 2
const-class v0, Lcom/ibm/icu/text/BreakIterator;
monitor-enter v0
:try_start_3
invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_d
move-result-object v1
monitor-exit v0
return-object v1
:catchall_d
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
.registers 6
sget-object v2, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;
aget-object v2, v2, p1
if-eqz v2, :cond_21
sget-object v2, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;
aget-object v2, v2, p1
invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;
if-eqz v0, :cond_21
invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Lcom/ibm/icu/util/ULocale;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_21
invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->createBreakInstance()Lcom/ibm/icu/text/BreakIterator;
move-result-object v2
:goto_20
return-object v2
:cond_21
invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
move-result-object v2
invoke-virtual {v2, p0, p1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->createBreakIterator(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v1
new-instance v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/BreakIterator;)V
sget-object v2, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;
new-instance v3, Ljava/lang/ref/SoftReference;
invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
aput-object v3, v2, p1
move-object v2, v1
goto :goto_20
.end method
.method public static getCharacterInstance()Lcom/ibm/icu/text/BreakIterator;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getCharacterInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getCharacterInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getCharacterInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getLineInstance()Lcom/ibm/icu/text/BreakIterator;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getLineInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getLineInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
.registers 2
const/4 v0, 0x2
invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getLineInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x2
invoke-static {v0, v1}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getSentenceInstance()Lcom/ibm/icu/text/BreakIterator;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
.registers 2
const/4 v0, 0x3
invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getSentenceInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x3
invoke-static {v0, v1}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method private static getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
.registers 4
sget-object v2, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
if-nez v2, :cond_12
:try_start_4
const-string v2, "com.ibm.icu.text.BreakIteratorFactory"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
sput-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
:cond_12
:try_end_12
.catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_12} :catch_15
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_18
sget-object v2, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
return-object v2
:catch_15
move-exception v2
move-object v1, v2
throw v1
:catch_18
move-exception v2
move-object v1, v2
sget-boolean v2, Lcom/ibm/icu/text/BreakIterator;->DEBUG:Z
if-eqz v2, :cond_21
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:cond_21
new-instance v2, Ljava/lang/RuntimeException;
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public static getTitleInstance()Lcom/ibm/icu/text/BreakIterator;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getTitleInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getTitleInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
.registers 2
const/4 v0, 0x4
invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getTitleInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x4
invoke-static {v0, v1}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getWordInstance()Lcom/ibm/icu/text/BreakIterator;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static getWordInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
return-object v0
.end method
.method public static registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
.registers 6
sget-object v1, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;
aget-object v1, v1, p2
if-eqz v1, :cond_21
sget-object v1, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;
aget-object v1, v1, p2
invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;
if-eqz v0, :cond_21
invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_21
sget-object v1, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;
const/4 v2, 0x0
aput-object v2, v1, p2
:cond_21
invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
move-result-object v1
invoke-virtual {v1, p0, p1, p2}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
move-result-object v1
return-object v1
.end method
.method public static registerInstance(Lcom/ibm/icu/text/BreakIterator;Ljava/util/Locale;I)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {p0, v0, p2}, Lcom/ibm/icu/text/BreakIterator;->registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public static unregister(Ljava/lang/Object;)Z
.registers 4
if-nez p0, :cond_a
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "registry key must not be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
sget-object v1, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
if-eqz v1, :cond_21
const/4 v0, 0x0
:goto_f
const/4 v1, 0x5
if-ge v0, v1, :cond_1a
sget-object v1, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;
const/4 v2, 0x0
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1a
sget-object v1, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
invoke-virtual {v1, p0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->unregister(Ljava/lang/Object;)Z
move-result v1
:goto_20
return v1
:cond_21
const/4 v1, 0x0
goto :goto_20
.end method
.method public clone()Ljava/lang/Object;
.registers 3
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
:try_end_3
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
return-object v1
:catch_5
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
.end method
.method public abstract current()I
.end method
.method public abstract first()I
.end method
.method public abstract following(I)I
.end method
.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
.registers 3
sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
if-ne p1, v0, :cond_7
iget-object v0, p0, Lcom/ibm/icu/text/BreakIterator;->actualLocale:Lcom/ibm/icu/util/ULocale;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/ibm/icu/text/BreakIterator;->validLocale:Lcom/ibm/icu/util/ULocale;
goto :goto_6
.end method
.method public abstract getText()Ljava/text/CharacterIterator;
.end method
.method public isBoundary(I)Z
.registers 4
const/4 v1, 0x1
if-nez p1, :cond_5
move v0, v1
:goto_4
return v0
:cond_5
sub-int v0, p1, v1
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->following(I)I
move-result v0
if-ne v0, p1, :cond_f
move v0, v1
goto :goto_4
:cond_f
const/4 v0, 0x0
goto :goto_4
.end method
.method public abstract last()I
.end method
.method public abstract next()I
.end method
.method public abstract next(I)I
.end method
.method public preceding(I)I
.registers 4
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I
move-result v0
:goto_4
if-lt v0, p1, :cond_e
const/4 v1, -0x1
if-eq v0, v1, :cond_e
invoke-virtual {p0}, Lcom/ibm/icu/text/BreakIterator;->previous()I
move-result v0
goto :goto_4
:cond_e
return v0
.end method
.method public abstract previous()I
.end method
.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
if-nez p1, :cond_10
move v0, v2
:goto_5
if-nez p2, :cond_8
move v1, v2
:cond_8
if-eq v0, v1, :cond_12
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_10
move v0, v1
goto :goto_5
:cond_12
iput-object p1, p0, Lcom/ibm/icu/text/BreakIterator;->validLocale:Lcom/ibm/icu/util/ULocale;
iput-object p2, p0, Lcom/ibm/icu/text/BreakIterator;->actualLocale:Lcom/ibm/icu/util/ULocale;
return-void
.end method
.method public setText(Ljava/lang/String;)V
.registers 3
new-instance v0, Ljava/text/StringCharacterIterator;
invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V
return-void
.end method
.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
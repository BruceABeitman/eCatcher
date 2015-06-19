.class public final Lcom/google/analytics/tracking/android/bd;
.super Ljava/lang/Object;
.source "StandardExceptionParser.java"
.implements Lcom/google/analytics/tracking/android/r;
.field private final a:Ljava/util/TreeSet;
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iput-object v0, p0, Lcom/google/analytics/tracking/android/bd;->a:Ljava/util/TreeSet;
invoke-direct {p0, p1, p2}, Lcom/google/analytics/tracking/android/bd;->a(Landroid/content/Context;Ljava/util/Collection;)V
return-void
.end method
.method private static a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
.registers 2
:goto_0
invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object p0
goto :goto_0
:cond_b
return-object p0
.end method
.method private a(Landroid/content/Context;Ljava/util/Collection;)V
.registers 10
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/analytics/tracking/android/bd;->a:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
if-eqz p2, :cond_10
invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
:cond_10
if-eqz p1, :cond_45
:try_start_12
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/google/analytics/tracking/android/bd;->a:Ljava/util/TreeSet;
invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const/16 v4, 0xf
invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
if-eqz v2, :cond_45
array-length v4, v2
move v0, v3
:goto_33
if-ge v0, v4, :cond_45
aget-object v5, v2, v0
iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_3c
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_3c} :catch_3f
add-int/lit8 v0, v0, 0x1
goto :goto_33
:catch_3f
move-exception v0
const-string v0, "No package found"
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->b(Ljava/lang/String;)V
:cond_45
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_49
:goto_49
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_84
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/analytics/tracking/android/bd;->a:Ljava/util/TreeSet;
invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v5
move v2, v1
:goto_5d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_7a
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_82
invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_7a
iget-object v5, p0, Lcom/google/analytics/tracking/android/bd;->a:Ljava/util/TreeSet;
invoke-virtual {v5, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
:cond_7a
if-eqz v2, :cond_49
iget-object v1, p0, Lcom/google/analytics/tracking/android/bd;->a:Ljava/util/TreeSet;
invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
goto :goto_49
:cond_82
move v2, v3
goto :goto_5d
:cond_84
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
.registers 13
const/4 v9, 0x1
const/4 v3, 0x0
invoke-static {p2}, Lcom/google/analytics/tracking/android/bd;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v4
invoke-static {p2}, Lcom/google/analytics/tracking/android/bd;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v5
if-eqz v5, :cond_13
array-length v0, v5
if-nez v0, :cond_6f
:cond_13
const/4 v0, 0x0
:goto_14
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v0, :cond_5b
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v1
const-string v4, "\\."
invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
const-string v1, "unknown"
if-eqz v4, :cond_3c
array-length v5, v4
if-lez v5, :cond_3c
array-length v1, v4
add-int/lit8 v1, v1, -0x1
aget-object v1, v4, v1
:cond_3c
const-string v4, " (@%s:%s:%s)"
const/4 v5, 0x3
new-array v5, v5, [Ljava/lang/Object;
aput-object v1, v5, v3
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v1
aput-object v1, v5, v9
const/4 v1, 0x2
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v5, v1
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5b
if-eqz p1, :cond_6a
const-string v0, " {%s}"
new-array v1, v9, [Ljava/lang/Object;
aput-object p1, v1, v3
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_6a
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_6f
array-length v6, v5
move v2, v3
:goto_71
if-ge v2, v6, :cond_97
aget-object v1, v5, v2
invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v7
iget-object v0, p0, Lcom/google/analytics/tracking/android/bd;->a:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_7f
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_93
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7f
move-object v0, v1
goto :goto_14
:cond_93
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_71
:cond_97
aget-object v0, v5, v3
goto/16 :goto_14
.end method
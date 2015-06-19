.class public Lcom/google/android/gms/analytics/StandardExceptionParser;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/ExceptionParser;
.field private final xa:Ljava/util/TreeSet;
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xa:Ljava/util/TreeSet;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/analytics/StandardExceptionParser;->setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V
return-void
.end method
.method protected getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;
.registers 10
const/4 v3, 0x0
invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v4
if-eqz v4, :cond_a
array-length v0, v4
if-nez v0, :cond_c
:cond_a
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
array-length v5, v4
move v2, v3
:goto_e
if-ge v2, v5, :cond_34
aget-object v1, v4, v2
invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v6
iget-object v0, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xa:Ljava/util/TreeSet;
invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_1c
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1c
move-object v0, v1
goto :goto_b
:cond_30
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_e
:cond_34
aget-object v0, v4, v3
goto :goto_b
.end method
.method protected getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
.registers 3
:goto_0
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object p1
goto :goto_0
:cond_b
return-object p1
.end method
.method public getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
.registers 5
invoke-virtual {p0, p2}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
invoke-virtual {p0, p2}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;
move-result-object v1
invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v6, 0x1
const/4 v5, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz p2, :cond_49
invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v0
const-string v2, "\\."
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const-string v0, "unknown"
if-eqz v2, :cond_2a
array-length v3, v2
if-lez v3, :cond_2a
array-length v0, v2
add-int/lit8 v0, v0, -0x1
aget-object v0, v2, v0
:cond_2a
const-string v2, " (@%s:%s:%s)"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
aput-object v0, v3, v5
invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v6
const/4 v0, 0x2
invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_49
if-eqz p3, :cond_58
const-string v0, " {%s}"
new-array v2, v6, [Ljava/lang/Object;
aput-object p3, v2, v5
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_58
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V
.registers 10
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xa:Ljava/util/TreeSet;
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
iget-object v2, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xa:Ljava/util/TreeSet;
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
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V
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
iget-object v2, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xa:Ljava/util/TreeSet;
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
iget-object v5, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xa:Ljava/util/TreeSet;
invoke-virtual {v5, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
:cond_7a
if-eqz v2, :cond_49
iget-object v1, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xa:Ljava/util/TreeSet;
invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
goto :goto_49
:cond_82
move v2, v3
goto :goto_5d
:cond_84
return-void
.end method
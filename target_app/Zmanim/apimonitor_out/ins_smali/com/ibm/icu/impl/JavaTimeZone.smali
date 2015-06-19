.class public Lcom/ibm/icu/impl/JavaTimeZone;
.super Lcom/ibm/icu/util/TimeZone;
.source "JavaTimeZone.java"
.field private static final AVAILABLESET:Ljava/util/TreeSet; = null
.field private static final serialVersionUID:J = 0x60d4e0281a0a2e14L
.field private transient javacal:Ljava/util/Calendar;
.field private javatz:Ljava/util/TimeZone;
.method static constructor <clinit>()V
.registers 4
new-instance v2, Ljava/util/TreeSet;
invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V
sput-object v2, Lcom/ibm/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;
invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
:goto_c
array-length v2, v0
if-ge v1, v2, :cond_19
sget-object v2, Lcom/ibm/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;
aget-object v3, v0, v1
invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_19
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/util/TimeZone;-><init>()V
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/JavaTimeZone;->setID(Ljava/lang/String;)V
new-instance v0, Ljava/util/GregorianCalendar;
iget-object v1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
iput-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 14
const/4 v11, 0x3
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
invoke-direct {p0}, Lcom/ibm/icu/util/TimeZone;-><init>()V
sget-object v4, Lcom/ibm/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;
invoke-virtual {v4, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_15
invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v4
iput-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
:cond_15
iget-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
if-nez v4, :cond_31
new-array v2, v9, [Z
invoke-static {p1, v2}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;
move-result-object v0
aget-boolean v4, v2, v8
if-eqz v4, :cond_31
sget-object v4, Lcom/ibm/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;
invoke-virtual {v4, v0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_31
invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v4
iput-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
:cond_31
iget-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
if-nez v4, :cond_65
const/4 v4, 0x4
new-array v1, v4, [I
invoke-static {p1, v1}, Lcom/ibm/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z
move-result v4
if-eqz v4, :cond_65
aget v4, v1, v9
aget v5, v1, v10
aget v6, v1, v11
aget v7, v1, v8
if-gez v7, :cond_7e
move v7, v9
:goto_49
invoke-static {v4, v5, v6, v7}, Lcom/ibm/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;
move-result-object p1
aget v4, v1, v8
aget v5, v1, v9
mul-int/lit8 v5, v5, 0x3c
aget v6, v1, v10
add-int/2addr v5, v6
mul-int/lit8 v5, v5, 0x3c
aget v6, v1, v11
add-int/2addr v5, v6
mul-int/2addr v4, v5
mul-int/lit16 v3, v4, 0x3e8
new-instance v4, Ljava/util/SimpleTimeZone;
invoke-direct {v4, v3, p1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V
iput-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
:cond_65
iget-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
if-nez v4, :cond_71
const-string p1, "GMT"
invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v4
iput-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
:cond_71
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/JavaTimeZone;->setID(Ljava/lang/String;)V
new-instance v4, Ljava/util/GregorianCalendar;
iget-object v5, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
iput-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
return-void
:cond_7e
move v7, v8
goto :goto_49
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 4
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
new-instance v0, Ljava/util/GregorianCalendar;
iget-object v1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
iput-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 3
invoke-super {p0}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/JavaTimeZone;
iget-object v1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/util/TimeZone;
iput-object p0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
return-object v0
.end method
.method public getDSTSavings()I
.registers 7
invoke-super {p0}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I
move-result v2
const/4 v4, 0x0
:try_start_5
new-array v0, v4, [Ljava/lang/Object;
const/4 v4, 0x0
new-array v1, v4, [Ljava/lang/Class;
iget-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
const-string v5, "getDSTSavings"
invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
iget-object v4, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Integer;
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
:try_end_21
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_23
move-result v2
:goto_22
return v2
:catch_23
move-exception v4
goto :goto_22
.end method
.method public getOffset(IIIIII)I
.registers 14
iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I
move-result v0
return v0
.end method
.method public getOffset(JZ[I)V
.registers 26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object/from16 v20, v0
monitor-enter v20
if-eqz p3, :cond_f4
const/4 v3, 0x6
:try_start_a
new-array v13, v3, [I
move-wide/from16 v0, p1
move-object v2, v13
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I
const/4 v3, 0x5
aget v19, v13, v3
move/from16 v0, v19
rem-int/lit16 v0, v0, 0x3e8
move v15, v0
move/from16 v0, v19
div-int/lit16 v0, v0, 0x3e8
move/from16 v19, v0
rem-int/lit8 v9, v19, 0x3c
div-int/lit8 v19, v19, 0x3c
rem-int/lit8 v8, v19, 0x3c
div-int/lit8 v7, v19, 0x3c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
invoke-virtual {v3}, Ljava/util/Calendar;->clear()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
const/4 v4, 0x0
aget v4, v13, v4
const/4 v5, 0x1
aget v5, v13, v5
const/4 v6, 0x2
aget v6, v13, v6
invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
const/16 v4, 0xe
invoke-virtual {v3, v4, v15}, Ljava/util/Calendar;->set(II)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
const/4 v4, 0x6
invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I
move-result v12
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
const/16 v4, 0xb
invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I
move-result v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
const/16 v4, 0xc
invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I
move-result v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
const/16 v4, 0xd
invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I
move-result v18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
const/16 v4, 0xe
invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I
move-result v16
const/4 v3, 0x4
aget v3, v13, v3
if-ne v3, v12, :cond_97
if-ne v7, v14, :cond_97
move v0, v8
move/from16 v1, v17
if-ne v0, v1, :cond_97
move v0, v9
move/from16 v1, v18
if-ne v0, v1, :cond_97
move v0, v15
move/from16 v1, v16
if-eq v0, v1, :cond_cf
:cond_97
const/4 v3, 0x4
aget v3, v13, v3
sub-int v3, v12, v3
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v3
const/4 v4, 0x1
if-le v3, v4, :cond_ed
const/4 v3, 0x1
move v10, v3
:goto_a5
mul-int/lit8 v3, v10, 0x18
add-int/2addr v3, v14
sub-int/2addr v3, v7
mul-int/lit8 v3, v3, 0x3c
add-int v3, v3, v17
sub-int/2addr v3, v8
mul-int/lit8 v3, v3, 0x3c
add-int v3, v3, v18
sub-int/2addr v3, v9
mul-int/lit16 v3, v3, 0x3e8
add-int v3, v3, v16
sub-int v11, v3, v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v4, v0
invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v4
int-to-long v6, v11
sub-long/2addr v4, v6
const-wide/16 v6, 0x1
sub-long/2addr v4, v6
invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V
:goto_cf
:cond_cf
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v4, v0
const/16 v5, 0xf
invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I
move-result v4
aput v4, p4, v3
const/4 v3, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v4, v0
const/16 v5, 0x10
invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I
move-result v4
aput v4, p4, v3
monitor-exit v20
return-void
:cond_ed
const/4 v3, 0x4
aget v3, v13, v3
sub-int v3, v12, v3
move v10, v3
goto :goto_a5
:cond_f4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;
move-object v3, v0
move-object v0, v3
move-wide/from16 v1, p1
invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V
goto :goto_cf
:catchall_100
move-exception v3
monitor-exit v20
:try_end_102
.catchall {:try_start_a .. :try_end_102} :catchall_100
throw v3
.end method
.method public getRawOffset()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I
move-result v0
return v0
.end method
.method public hashCode()I
.registers 3
invoke-super {p0}, Lcom/ibm/icu/util/TimeZone;->hashCode()I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public inDaylightTime(Ljava/util/Date;)Z
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v0, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z
move-result v0
return v0
.end method
.method public setRawOffset(I)V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v0, p1}, Ljava/util/TimeZone;->setRawOffset(I)V
return-void
.end method
.method public unwrap()Ljava/util/TimeZone;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
return-object v0
.end method
.method public useDaylightTime()Z
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;
invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z
move-result v0
return v0
.end method
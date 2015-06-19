.class  Lorg/apache/log4j/a/q;
.super Ljavax/swing/table/AbstractTableModel;
.source "SourceFile"
.field static a:Ljava/lang/Class;
.field static b:Ljava/lang/Class;
.field static c:Ljava/lang/Class;
.field private static final d:Lorg/apache/log4j/aa;
.field private static final e:Ljava/util/Comparator;
.field private static final f:[Ljava/lang/String;
.field private static final g:[Lorg/apache/log4j/a/j;
.field private static final h:Ljava/text/DateFormat;
.field private final i:Ljava/lang/Object;
.field private final j:Ljava/util/SortedSet;
.field private k:[Lorg/apache/log4j/a/j;
.field private final l:Ljava/util/List;
.field private m:Z
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:Ljava/lang/String;
.field private q:Ljava/lang/String;
.field private r:Lorg/apache/log4j/ag;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x0
sget-object v0, Lorg/apache/log4j/a/q;->a:Ljava/lang/Class;
if-nez v0, :cond_47
const-string v0, "org.apache.log4j.a.q"
invoke-static {v0}, Lorg/apache/log4j/a/q;->e(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/q;->a:Ljava/lang/Class;
:goto_f
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/q;->d:Lorg/apache/log4j/aa;
new-instance v0, Lorg/apache/log4j/a/r;
invoke-direct {v0}, Lorg/apache/log4j/a/r;-><init>()V
sput-object v0, Lorg/apache/log4j/a/q;->e:Ljava/util/Comparator;
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/String;
const-string v1, "Time"
aput-object v1, v0, v3
const/4 v1, 0x1
const-string v2, "Priority"
aput-object v2, v0, v1
const-string v1, "Trace"
aput-object v1, v0, v4
const-string v1, "Category"
aput-object v1, v0, v5
const/4 v1, 0x4
const-string v2, "NDC"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "Message"
aput-object v2, v0, v1
sput-object v0, Lorg/apache/log4j/a/q;->f:[Ljava/lang/String;
new-array v0, v3, [Lorg/apache/log4j/a/j;
sput-object v0, Lorg/apache/log4j/a/q;->g:[Lorg/apache/log4j/a/j;
invoke-static {v5, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/q;->h:Ljava/text/DateFormat;
return-void
:cond_47
sget-object v0, Lorg/apache/log4j/a/q;->a:Ljava/lang/Class;
goto :goto_f
.end method
.method constructor <init>()V
.registers 4
invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
new-instance v0, Ljava/util/TreeSet;
sget-object v1, Lorg/apache/log4j/a/q;->e:Ljava/util/Comparator;
invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
iput-object v0, p0, Lorg/apache/log4j/a/q;->j:Ljava/util/SortedSet;
sget-object v0, Lorg/apache/log4j/a/q;->g:[Lorg/apache/log4j/a/j;
iput-object v0, p0, Lorg/apache/log4j/a/q;->k:[Lorg/apache/log4j/a/j;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/a/q;->l:Ljava/util/List;
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/a/q;->m:Z
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/a/q;->n:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/a/q;->o:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/a/q;->p:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/a/q;->q:Ljava/lang/String;
sget-object v0, Lorg/apache/log4j/ag;->z:Lorg/apache/log4j/ag;
iput-object v0, p0, Lorg/apache/log4j/a/q;->r:Lorg/apache/log4j/ag;
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lorg/apache/log4j/a/s;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lorg/apache/log4j/a/s;-><init>(Lorg/apache/log4j/a/q;Lorg/apache/log4j/a/r;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method static a(Lorg/apache/log4j/a/q;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
return-object v0
.end method
.method static a(Lorg/apache/log4j/a/q;Z)V
.registers 2
invoke-direct {p0, p1}, Lorg/apache/log4j/a/q;->a(Z)V
return-void
.end method
.method private a(Z)V
.registers 10
const/4 v7, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lorg/apache/log4j/a/q;->j:Ljava/util/SortedSet;
invoke-interface {v0}, Ljava/util/SortedSet;->size()I
move-result v5
iget-object v0, p0, Lorg/apache/log4j/a/q;->j:Ljava/util/SortedSet;
invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_16
:goto_16
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a/j;
invoke-direct {p0, v0}, Lorg/apache/log4j/a/q;->b(Lorg/apache/log4j/a/j;)Z
move-result v6
if-eqz v6, :cond_16
invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_16
:cond_2c
iget-object v0, p0, Lorg/apache/log4j/a/q;->k:[Lorg/apache/log4j/a/j;
array-length v0, v0
if-nez v0, :cond_7c
const/4 v0, 0x0
move-object v1, v0
:goto_33
sget-object v0, Lorg/apache/log4j/a/q;->g:[Lorg/apache/log4j/a/j;
invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lorg/apache/log4j/a/j;
check-cast v0, [Lorg/apache/log4j/a/j;
iput-object v0, p0, Lorg/apache/log4j/a/q;->k:[Lorg/apache/log4j/a/j;
if-eqz p1, :cond_88
if-eqz v1, :cond_88
invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v0
const/4 v1, 0x1
if-ge v0, v1, :cond_82
sget-object v0, Lorg/apache/log4j/a/q;->d:Lorg/apache/log4j/aa;
const-string v1, "In strange state"
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V
invoke-virtual {p0}, Lorg/apache/log4j/a/q;->fireTableDataChanged()V
:goto_54
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-object v4, Lorg/apache/log4j/a/q;->d:Lorg/apache/log4j/aa;
new-instance v6, Ljava/lang/StringBuffer;
invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
const-string v7, "Total time [ms]: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v6
sub-long/2addr v0, v2
invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, " in update, size: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
return-void
:cond_7c
iget-object v0, p0, Lorg/apache/log4j/a/q;->k:[Lorg/apache/log4j/a/j;
aget-object v0, v0, v7
move-object v1, v0
goto :goto_33
:cond_82
add-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v7, v0}, Lorg/apache/log4j/a/q;->fireTableRowsInserted(II)V
goto :goto_54
:cond_88
invoke-virtual {p0}, Lorg/apache/log4j/a/q;->fireTableDataChanged()V
goto :goto_54
.end method
.method static a(Lorg/apache/log4j/a/q;Lorg/apache/log4j/a/j;)Z
.registers 3
invoke-direct {p0, p1}, Lorg/apache/log4j/a/q;->b(Lorg/apache/log4j/a/j;)Z
move-result v0
return v0
.end method
.method private b(Lorg/apache/log4j/a/j;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p1}, Lorg/apache/log4j/a/j;->b()Lorg/apache/log4j/ag;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/a/q;->r:Lorg/apache/log4j/ag;
invoke-virtual {v2, v3}, Lorg/apache/log4j/ag;->a(Lorg/apache/log4j/ag;)Z
move-result v2
if-eqz v2, :cond_5b
invoke-virtual {p1}, Lorg/apache/log4j/a/j;->e()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/a/q;->n:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_5b
invoke-virtual {p1}, Lorg/apache/log4j/a/j;->c()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/a/q;->q:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_5b
iget-object v2, p0, Lorg/apache/log4j/a/q;->p:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_40
invoke-virtual {p1}, Lorg/apache/log4j/a/j;->d()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_5b
invoke-virtual {p1}, Lorg/apache/log4j/a/j;->d()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/a/q;->p:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_5b
:cond_40
invoke-virtual {p1}, Lorg/apache/log4j/a/j;->f()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_51
iget-object v2, p0, Lorg/apache/log4j/a/q;->o:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_4f
:goto_4e
:cond_4e
return v0
:cond_4f
move v0, v1
goto :goto_4e
:cond_51
iget-object v3, p0, Lorg/apache/log4j/a/q;->o:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-gez v2, :cond_4e
move v0, v1
goto :goto_4e
:cond_5b
move v0, v1
goto :goto_4e
.end method
.method static b(Lorg/apache/log4j/a/q;)Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/a/q;->m:Z
return v0
.end method
.method static c(Lorg/apache/log4j/a/q;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/a/q;->l:Ljava/util/List;
return-object v0
.end method
.method static d(Lorg/apache/log4j/a/q;)Ljava/util/SortedSet;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/a/q;->j:Ljava/util/SortedSet;
return-object v0
.end method
.method static e(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public a()I
.registers 3
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/a/q;->k:[Lorg/apache/log4j/a/j;
array-length v0, v0
monitor-exit v1
return v0
:catchall_8
move-exception v0
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_8
throw v0
.end method
.method public a(II)Ljava/lang/Object;
.registers 9
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/a/q;->k:[Lorg/apache/log4j/a/j;
aget-object v0, v0, p1
if-nez p2, :cond_1a
sget-object v2, Lorg/apache/log4j/a/q;->h:Ljava/text/DateFormat;
new-instance v3, Ljava/util/Date;
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->a()J
move-result-wide v4
invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
monitor-exit v1
:goto_19
return-object v0
:cond_1a
const/4 v2, 0x1
if-ne p2, v2, :cond_26
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->b()Lorg/apache/log4j/ag;
move-result-object v0
monitor-exit v1
goto :goto_19
:catchall_23
move-exception v0
monitor-exit v1
:try_end_25
.catchall {:try_start_3 .. :try_end_25} :catchall_23
throw v0
:cond_26
const/4 v2, 0x2
if-ne p2, v2, :cond_36
:try_start_29
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->h()[Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_33
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
:goto_31
monitor-exit v1
goto :goto_19
:cond_33
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_31
:cond_36
const/4 v2, 0x3
if-ne p2, v2, :cond_3f
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->c()Ljava/lang/String;
move-result-object v0
monitor-exit v1
goto :goto_19
:cond_3f
const/4 v2, 0x4
if-ne p2, v2, :cond_48
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->d()Ljava/lang/String;
move-result-object v0
monitor-exit v1
goto :goto_19
:cond_48
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->f()Ljava/lang/String;
move-result-object v0
monitor-exit v1
:try_end_4d
.catchall {:try_start_29 .. :try_end_4d} :catchall_23
goto :goto_19
.end method
.method public a(I)Ljava/lang/String;
.registers 3
sget-object v0, Lorg/apache/log4j/a/q;->f:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/q;->n:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/log4j/a/q;->a(Z)V
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_f
throw v0
.end method
.method public a(Lorg/apache/log4j/a/j;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/a/q;->l:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public a(Lorg/apache/log4j/ag;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Lorg/apache/log4j/a/q;->r:Lorg/apache/log4j/ag;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/log4j/a/q;->a(Z)V
monitor-exit v1
return-void
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public b()I
.registers 2
sget-object v0, Lorg/apache/log4j/a/q;->f:[Ljava/lang/String;
array-length v0, v0
return v0
.end method
.method public b(I)Ljava/lang/Class;
.registers 3
const/4 v0, 0x2
if-ne p1, v0, :cond_13
sget-object v0, Lorg/apache/log4j/a/q;->b:Ljava/lang/Class;
if-nez v0, :cond_10
const-string v0, "java.lang.Boolean"
invoke-static {v0}, Lorg/apache/log4j/a/q;->e(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/q;->b:Ljava/lang/Class;
:goto_f
return-object v0
:cond_10
sget-object v0, Lorg/apache/log4j/a/q;->b:Ljava/lang/Class;
goto :goto_f
:cond_13
sget-object v0, Lorg/apache/log4j/a/q;->c:Ljava/lang/Class;
if-nez v0, :cond_20
const-string v0, "java.lang.Object"
invoke-static {v0}, Lorg/apache/log4j/a/q;->e(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/q;->c:Ljava/lang/Class;
goto :goto_f
:cond_20
sget-object v0, Lorg/apache/log4j/a/q;->c:Ljava/lang/Class;
goto :goto_f
.end method
.method public b(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/q;->o:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/log4j/a/q;->a(Z)V
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_f
throw v0
.end method
.method public c(I)Lorg/apache/log4j/a/j;
.registers 4
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/a/q;->k:[Lorg/apache/log4j/a/j;
aget-object v0, v0, p1
monitor-exit v1
return-object v0
:catchall_9
move-exception v0
monitor-exit v1
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_9
throw v0
.end method
.method public c()V
.registers 3
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/a/q;->j:Ljava/util/SortedSet;
invoke-interface {v0}, Ljava/util/SortedSet;->clear()V
const/4 v0, 0x0
new-array v0, v0, [Lorg/apache/log4j/a/j;
iput-object v0, p0, Lorg/apache/log4j/a/q;->k:[Lorg/apache/log4j/a/j;
iget-object v0, p0, Lorg/apache/log4j/a/q;->l:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-virtual {p0}, Lorg/apache/log4j/a/q;->fireTableDataChanged()V
monitor-exit v1
return-void
:catchall_17
move-exception v0
monitor-exit v1
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_17
throw v0
.end method
.method public c(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/q;->p:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/log4j/a/q;->a(Z)V
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_f
throw v0
.end method
.method public d()V
.registers 3
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lorg/apache/log4j/a/q;->m:Z
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_8
iput-boolean v0, p0, Lorg/apache/log4j/a/q;->m:Z
monitor-exit v1
return-void
:cond_c
const/4 v0, 0x0
goto :goto_8
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method
.method public d(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/q;->q:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/log4j/a/q;->a(Z)V
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_f
throw v0
.end method
.method public e()Z
.registers 3
iget-object v1, p0, Lorg/apache/log4j/a/q;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lorg/apache/log4j/a/q;->m:Z
monitor-exit v1
return v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
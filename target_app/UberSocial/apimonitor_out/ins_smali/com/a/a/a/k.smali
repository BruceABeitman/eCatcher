.class final Lcom/a/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/a/a/a/x;
.field private final b:Lcom/a/a/a/bi;
.field private c:Lcom/a/a/a/al;
.field private final d:Lcom/a/a/a/bk;
.field private final e:I
.field private f:Ljava/util/List;
.method constructor <init>(Lcom/a/a/a/x;Lcom/a/a/a/bi;Lcom/a/a/a/bk;)V
.registers 5
const/16 v0, 0x64
invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/a/k;-><init>(Lcom/a/a/a/x;Lcom/a/a/a/bi;Lcom/a/a/a/bk;I)V
return-void
.end method
.method private constructor <init>(Lcom/a/a/a/x;Lcom/a/a/a/bi;Lcom/a/a/a/bk;I)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/a/a/a/k;->f:Ljava/util/List;
iput-object p1, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/x;
iput-object p3, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
iput-object p2, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/bi;
iget-object v0, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/bi;
invoke-virtual {v0}, Lcom/a/a/a/bi;->a()J
const/16 v0, 0x64
iput v0, p0, Lcom/a/a/a/k;->e:I
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/a/a/a/k;->f:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/a/a/a/bl;
:try_start_12
invoke-interface {v0}, Lcom/a/a/a/bl;->c()V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v2
const-string v3, "Crashlytics"
const-string v4, "One of the roll over listeners threw an exception"
invoke-interface {v2, v3, v4, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6
:cond_27
return-void
.end method
.method private static b(Ljava/lang/String;)J
.registers 6
const-wide/16 v0, 0x0
const-string v2, "_"
invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
const/4 v4, 0x3
if-eq v3, v4, :cond_d
:goto_c
return-wide v0
:cond_d
const/4 v3, 0x2
:try_start_e
aget-object v2, v2, v3
invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
:try_end_17
.catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_17} :catch_19
move-result-wide v0
goto :goto_c
:catch_19
move-exception v2
goto :goto_c
.end method
.method private e()I
.registers 2
iget-object v0, p0, Lcom/a/a/a/k;->c:Lcom/a/a/a/al;
if-nez v0, :cond_7
const/16 v0, 0x1f40
:goto_6
return v0
:cond_7
iget-object v0, p0, Lcom/a/a/a/k;->c:Lcom/a/a/a/al;
iget v0, v0, Lcom/a/a/a/al;->c:I
goto :goto_6
.end method
.method final a(Lcom/a/a/a/al;)V
.registers 2
iput-object p1, p0, Lcom/a/a/a/k;->c:Lcom/a/a/a/al;
return-void
.end method
.method final a(Lcom/a/a/a/bl;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/a/a/a/k;->f:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_7
return-void
.end method
.method final a(Lcom/a/a/a/v;)V
.registers 9
iget-object v0, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/x;
invoke-virtual {v0, p1}, Lcom/a/a/a/x;->a(Lcom/a/a/a/v;)[B
move-result-object v0
array-length v1, v0
iget-object v2, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-direct {p0}, Lcom/a/a/a/k;->e()I
move-result v3
invoke-virtual {v2, v1, v3}, Lcom/a/a/a/bk;->a(II)Z
move-result v2
if-nez v2, :cond_44
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v3, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v6}, Lcom/a/a/a/bk;->a()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v4, v5
const/4 v1, 0x2
invoke-direct {p0}, Lcom/a/a/a/k;->e()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v1
invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x4
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(ILjava/lang/String;)V
invoke-virtual {p0}, Lcom/a/a/a/k;->a()Z
:cond_44
iget-object v1, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v1, v0}, Lcom/a/a/a/bk;->a([B)V
return-void
.end method
.method final a(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v0, p1}, Lcom/a/a/a/bk;->a(Ljava/util/List;)V
return-void
.end method
.method final a()Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v0, 0x0
iget-object v3, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v3}, Lcom/a/a/a/bk;->b()Z
move-result v3
if-nez v3, :cond_5a
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "sa"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v4, "_"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "_"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/bi;
invoke-virtual {v0}, Lcom/a/a/a/bi;->a()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v0, ".tap"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v3, v0}, Lcom/a/a/a/bk;->a(Ljava/lang/String;)V
const/4 v3, 0x4
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v5, "generated new to-send analytics file %s"
new-array v6, v1, [Ljava/lang/Object;
aput-object v0, v6, v2
invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v3, v2}, Lcom/a/a/a/bc;->a(ILjava/lang/String;)V
iget-object v2, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/bi;
invoke-virtual {v2}, Lcom/a/a/a/bi;->a()J
:goto_56
invoke-direct {p0, v0}, Lcom/a/a/a/k;->a(Ljava/lang/String;)V
return v1
:cond_5a
move v1, v2
goto :goto_56
.end method
.method final b()Ljava/util/List;
.registers 3
iget-object v0, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/a/a/a/bk;->a(I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method final c()V
.registers 3
iget-object v0, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
iget-object v1, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v1}, Lcom/a/a/a/bk;->c()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/a/a/a/bk;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v0}, Lcom/a/a/a/bk;->d()V
return-void
.end method
.method final d()V
.registers 8
iget-object v0, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v0}, Lcom/a/a/a/bk;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
iget v2, p0, Lcom/a/a/a/k;->e:I
if-gt v1, v2, :cond_f
:goto_e
return-void
:cond_f
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
iget v2, p0, Lcom/a/a/a/k;->e:I
sub-int/2addr v1, v2
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v3, "Found %d files in session analytics roll over directory, this is greater than %d, deleting %d oldest files"
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
iget v6, p0, Lcom/a/a/a/k;->e:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V
new-instance v2, Ljava/util/TreeSet;
new-instance v3, Lcom/a/a/a/l;
invoke-direct {v3, p0}, Lcom/a/a/a/l;-><init>(Lcom/a/a/a/k;)V
invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_4d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/a/a/a/k;->b(Ljava/lang/String;)J
move-result-wide v4
new-instance v6, Lcom/a/a/a/m;
invoke-direct {v6, p0, v0, v4, v5}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/k;Ljava/io/File;J)V
invoke-virtual {v2, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
goto :goto_4d
:cond_6a
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_73
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/a/a/a/m;
iget-object v0, v0, Lcom/a/a/a/m;->a:Ljava/io/File;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
if-ne v0, v1, :cond_73
:cond_8a
iget-object v0, p0, Lcom/a/a/a/k;->d:Lcom/a/a/a/bk;
invoke-virtual {v0, v3}, Lcom/a/a/a/bk;->a(Ljava/util/List;)V
goto/16 :goto_e
.end method
.class public Lorg/apache/log4j/f/b/a;
.super Ljavax/swing/table/AbstractTableModel;
.source "SourceFile"
.field protected a:Lorg/apache/log4j/f/h;
.field protected b:Ljava/util/List;
.field protected c:Ljava/util/List;
.field protected d:I
.field protected e:[Ljava/lang/String;
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V
new-instance v0, Lorg/apache/log4j/f/i;
invoke-direct {v0}, Lorg/apache/log4j/f/i;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/f/b/a;->a:Lorg/apache/log4j/f/h;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
const/16 v0, 0x1388
iput v0, p0, Lorg/apache/log4j/f/b/a;->d:I
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "Date"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "Thread"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "Message #"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "Level"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "NDC"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "Category"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "Message"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "Location"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "Thrown"
aput-object v2, v0, v1
iput-object v0, p0, Lorg/apache/log4j/f/b/a;->e:[Ljava/lang/String;
return-void
.end method
.method private m()I
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Lorg/apache/log4j/f/b/a;->d:I
sub-int/2addr v0, v1
return v0
.end method
.method public a(II)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a;->c(I)Lorg/apache/log4j/f/g;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lorg/apache/log4j/f/b/a;->a(ILorg/apache/log4j/f/g;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected a(ILorg/apache/log4j/f/g;)Ljava/lang/Object;
.registers 6
if-nez p2, :cond_5
const-string v0, "NULL Column"
:goto_4
return-object v0
:cond_5
new-instance v0, Ljava/util/Date;
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->h()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;
move-result-object v0
packed-switch p1, :pswitch_data_84
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "The column number "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "must be between 0 and 8"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_34
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, " ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->h()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_56
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->i()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_5b
new-instance v0, Ljava/lang/Long;
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->g()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
goto :goto_4
:pswitch_65
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->b()Lorg/apache/log4j/f/e;
move-result-object v0
goto :goto_4
:pswitch_6a
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->l()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_6f
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->e()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_74
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->f()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_79
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->m()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_7e
invoke-virtual {p2}, Lorg/apache/log4j/f/g;->j()Ljava/lang/String;
move-result-object v0
goto :goto_4
nop
:pswitch_data_84
.packed-switch 0x0
:pswitch_34
:pswitch_56
:pswitch_5b
:pswitch_65
:pswitch_6a
:pswitch_6f
:pswitch_74
:pswitch_79
:pswitch_7e
.end packed-switch
.end method
.method public a(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->e:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method public a()Lorg/apache/log4j/f/h;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->a:Lorg/apache/log4j/f/h;
return-object v0
.end method
.method public a(Lorg/apache/log4j/f/h;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/a;->a:Lorg/apache/log4j/f/h;
return-void
.end method
.method public declared-synchronized a(Lorg/apache/log4j/f/g;)Z
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->a:Lorg/apache/log4j/f/h;
invoke-interface {v0, p1}, Lorg/apache/log4j/f/h;->a(Lorg/apache/log4j/f/g;)Z
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_28
move-result v0
if-nez v0, :cond_11
const/4 v0, 0x0
:goto_f
monitor-exit p0
return v0
:cond_11
:try_start_11
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->h()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->c()I
move-result v0
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->c()I
move-result v1
invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/f/b/a;->fireTableRowsInserted(II)V
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->j()V
:try_end_26
.catchall {:try_start_11 .. :try_end_26} :catchall_28
const/4 v0, 0x1
goto :goto_f
:catchall_28
move-exception v0
monitor-exit p0
throw v0
.end method
.method public b()I
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->e:[Ljava/lang/String;
array-length v0, v0
return v0
.end method
.method public b(I)V
.registers 2
if-lez p1, :cond_4
iput p1, p0, Lorg/apache/log4j/f/b/a;->d:I
:cond_4
return-void
.end method
.method public c()I
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->h()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method protected c(I)Lorg/apache/log4j/f/g;
.registers 4
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->h()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-ge p1, v1, :cond_11
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/g;
:goto_10
return-object v0
:cond_11
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/g;
goto :goto_10
.end method
.method public d()I
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public declared-synchronized e()V
.registers 2
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->i()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/f/b/a;->c:Ljava/util/List;
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->fireTableDataChanged()V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized f()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->c:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/f/b/a;->fireTableRowsDeleted(II)V
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_e
monitor-exit p0
return-void
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized g()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->fireTableDataChanged()V
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
monitor-exit p0
return-void
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected h()Ljava/util/List;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->c:Ljava/util/List;
if-nez v0, :cond_7
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->e()V
:cond_7
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->c:Ljava/util/List;
return-object v0
.end method
.method protected i()Ljava/util/List;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/g;
iget-object v3, p0, Lorg/apache/log4j/f/b/a;->a:Lorg/apache/log4j/f/h;
invoke-interface {v3, v0}, Lorg/apache/log4j/f/h;->a(Lorg/apache/log4j/f/g;)Z
move-result v3
if-eqz v3, :cond_b
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_23
return-object v1
.end method
.method protected j()V
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->k()Z
move-result v0
if-eqz v0, :cond_9
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->l()V
:cond_9
return-void
.end method
.method protected k()Z
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Lorg/apache/log4j/f/b/a;->d:I
if-le v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method protected l()V
.registers 5
iget-object v1, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Lorg/apache/log4j/f/b/a;->m()I
move-result v0
const/4 v2, 0x1
if-le v0, v2, :cond_19
iget-object v2, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->e()V
:goto_17
monitor-exit v1
return-void
:cond_19
iget-object v0, p0, Lorg/apache/log4j/f/b/a;->b:Ljava/util/List;
const/4 v2, 0x0
invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a;->f()V
goto :goto_17
:catchall_23
move-exception v0
monitor-exit v1
:try_end_25
.catchall {:try_start_3 .. :try_end_25} :catchall_23
throw v0
.end method
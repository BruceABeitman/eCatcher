.class public Lcom/twidroid/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.field public static final c:I = 0x2
.field private static final g:Ljava/lang/String; = "WidgetsItemsContainer"
.field private static h:Lcom/twidroid/widget/o;
.field public d:I
.field public e:I
.field public f:I
.field private i:Ljava/util/List;
.field private j:Ljava/util/List;
.field private k:Ljava/util/List;
.field private l:Z
.field private m:Z
.field private n:Z
.field private o:Ljava/util/List;
.field private p:Ljava/util/List;
.field private q:Ljava/util/List;
.field private r:Ljava/util/HashMap;
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
iput-boolean v1, p0, Lcom/twidroid/widget/o;->l:Z
iput-boolean v1, p0, Lcom/twidroid/widget/o;->m:Z
iput-boolean v1, p0, Lcom/twidroid/widget/o;->n:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/widget/o;->o:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/widget/o;->p:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/widget/o;->q:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/twidroid/widget/o;->r:Ljava/util/HashMap;
iput v1, p0, Lcom/twidroid/widget/o;->d:I
iput v1, p0, Lcom/twidroid/widget/o;->e:I
iput v1, p0, Lcom/twidroid/widget/o;->f:I
return-void
.end method
.method public static declared-synchronized a()Lcom/twidroid/widget/o;
.registers 2
const-class v1, Lcom/twidroid/widget/o;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/twidroid/widget/o;->h:Lcom/twidroid/widget/o;
if-nez v0, :cond_e
new-instance v0, Lcom/twidroid/widget/o;
invoke-direct {v0}, Lcom/twidroid/widget/o;-><init>()V
sput-object v0, Lcom/twidroid/widget/o;->h:Lcom/twidroid/widget/o;
:cond_e
sget-object v0, Lcom/twidroid/widget/o;->h:Lcom/twidroid/widget/o;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public a(I)Ljava/util/List;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/widget/o;->b(I)I
move-result v0
packed-switch v0, :pswitch_data_10
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
:goto_9
return-object v0
:pswitch_a
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
goto :goto_9
:pswitch_d
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
goto :goto_9
:pswitch_data_10
.packed-switch 0x1
:pswitch_d
:pswitch_a
.end packed-switch
.end method
.method public a(II)V
.registers 6
iget-object v0, p0, Lcom/twidroid/widget/o;->r:Ljava/util/HashMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(ILjava/util/List;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/twidroid/widget/o;->b(I)I
move-result v0
packed-switch v0, :pswitch_data_10
iput-object p2, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
:goto_9
return-void
:pswitch_a
iput-object p2, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
goto :goto_9
:pswitch_d
iput-object p2, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
goto :goto_9
:pswitch_data_10
.packed-switch 0x1
:pswitch_d
:pswitch_a
.end packed-switch
.end method
.method public a(Lcom/twidroid/widget/k;I)V
.registers 4
packed-switch p2, :pswitch_data_16
iget-object v0, p0, Lcom/twidroid/widget/o;->o:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_8
return-void
:pswitch_9
iget-object v0, p0, Lcom/twidroid/widget/o;->p:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_8
:pswitch_f
iget-object v0, p0, Lcom/twidroid/widget/o;->q:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_8
nop
:pswitch_data_16
.packed-switch 0x1
:pswitch_f
:pswitch_9
.end packed-switch
.end method
.method public declared-synchronized a(Ljava/util/List;)V
.registers 8
monitor-enter p0
:try_start_1
const-string v0, "WidgetsItemsContainer"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "WIDGETDEBUG New Tweets in Widget: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_65
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v0, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
move-wide v1, v0
:goto_31
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/widget/o;->d:I
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_49
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v4, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v0, v4, v1
if-lez v0, :cond_69
iget v0, p0, Lcom/twidroid/widget/o;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/twidroid/widget/o;->d:I
:try_end_61
.catchall {:try_start_1 .. :try_end_61} :catchall_62
goto :goto_49
:catchall_62
move-exception v0
monitor-exit p0
throw v0
:cond_65
const-wide/16 v0, 0x0
move-wide v1, v0
goto :goto_31
:try_start_69
:cond_69
const-string v0, "WidgetsItemsContainer"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "WIDGETDEBUG newTweetsCount: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/twidroid/widget/o;->d:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_83
.catchall {:try_start_69 .. :try_end_83} :catchall_62
monitor-exit p0
return-void
.end method
.method public declared-synchronized a(ZI)V
.registers 4
monitor-enter p0
packed-switch p2, :pswitch_data_12
:goto_4
monitor-exit p0
return-void
:try_start_6
:pswitch_6
iput-boolean p1, p0, Lcom/twidroid/widget/o;->l:Z
:try_end_8
.catchall {:try_start_6 .. :try_end_8} :catchall_9
goto :goto_4
:catchall_9
move-exception v0
monitor-exit p0
throw v0
:pswitch_c
:try_start_c
iput-boolean p1, p0, Lcom/twidroid/widget/o;->m:Z
goto :goto_4
:pswitch_f
iput-boolean p1, p0, Lcom/twidroid/widget/o;->n:Z
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_9
goto :goto_4
:pswitch_data_12
.packed-switch 0x0
:pswitch_6
:pswitch_f
:pswitch_c
.end packed-switch
.end method
.method public b(I)I
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/twidroid/widget/o;->r:Ljava/util/HashMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
iget-object v0, p0, Lcom/twidroid/widget/o;->r:Ljava/util/HashMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_1d
return v0
:cond_1e
iget-object v1, p0, Lcom/twidroid/widget/o;->r:Ljava/util/HashMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1d
.end method
.method public declared-synchronized b()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized b(Ljava/util/List;)V
.registers 9
monitor-enter p0
if-eqz p1, :cond_39
:try_start_3
invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_a
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-object v1, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-eqz v1, :cond_2f
iget-object v1, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v3, v1, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
iget-wide v5, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v1, v3, v5
if-gez v1, :cond_a
:cond_2f
iget-object v1, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
:try_end_35
.catchall {:try_start_3 .. :try_end_35} :catchall_36
goto :goto_a
:catchall_36
move-exception v0
monitor-exit p0
throw v0
:cond_39
monitor-exit p0
return-void
.end method
.method public b(ZI)V
.registers 5
const/4 v0, 0x0
packed-switch p2, :pswitch_data_64
iput-boolean v0, p0, Lcom/twidroid/widget/o;->l:Z
if-eqz p1, :cond_5e
iget-object v0, p0, Lcom/twidroid/widget/o;->o:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/widget/k;
invoke-interface {v0}, Lcom/twidroid/widget/k;->a()V
goto :goto_e
:pswitch_1e
iput-boolean v0, p0, Lcom/twidroid/widget/o;->m:Z
if-eqz p1, :cond_38
iget-object v0, p0, Lcom/twidroid/widget/o;->p:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_28
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/widget/k;
invoke-interface {v0}, Lcom/twidroid/widget/k;->a()V
goto :goto_28
:cond_38
iget-object v0, p0, Lcom/twidroid/widget/o;->p:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
:goto_3d
return-void
:pswitch_3e
iput-boolean v0, p0, Lcom/twidroid/widget/o;->n:Z
if-eqz p1, :cond_58
iget-object v0, p0, Lcom/twidroid/widget/o;->q:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_48
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_58
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/widget/k;
invoke-interface {v0}, Lcom/twidroid/widget/k;->a()V
goto :goto_48
:cond_58
iget-object v0, p0, Lcom/twidroid/widget/o;->q:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
goto :goto_3d
:cond_5e
iget-object v0, p0, Lcom/twidroid/widget/o;->o:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
goto :goto_3d
:pswitch_data_64
.packed-switch 0x1
:pswitch_3e
:pswitch_1e
.end packed-switch
.end method
.method public declared-synchronized c()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput v0, p0, Lcom/twidroid/widget/o;->f:I
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/widget/o;->e:I
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/widget/o;->d:I
:try_end_a
.catchall {:try_start_2 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized c(Ljava/util/List;)V
.registers 8
monitor-enter p0
:try_start_1
const-string v0, "WidgetsItemsContainer"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "WIDGETDEBUG New Mentions in Widget: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_65
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v0, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
move-wide v1, v0
:goto_31
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/widget/o;->e:I
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_49
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v4, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v0, v4, v1
if-lez v0, :cond_69
iget v0, p0, Lcom/twidroid/widget/o;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/twidroid/widget/o;->e:I
:try_end_61
.catchall {:try_start_1 .. :try_end_61} :catchall_62
goto :goto_49
:catchall_62
move-exception v0
monitor-exit p0
throw v0
:cond_65
const-wide/16 v0, 0x0
move-wide v1, v0
goto :goto_31
:try_start_69
:cond_69
const-string v0, "WidgetsItemsContainer"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "WIDGETDEBUG newMentionsCount: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/twidroid/widget/o;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_83
.catchall {:try_start_69 .. :try_end_83} :catchall_62
monitor-exit p0
return-void
.end method
.method public declared-synchronized c(I)Z
.registers 3
monitor-enter p0
packed-switch p1, :pswitch_data_12
:try_start_4
iget-boolean v0, p0, Lcom/twidroid/widget/o;->l:Z
:goto_6
:try_end_6
.catchall {:try_start_4 .. :try_end_6} :catchall_e
monitor-exit p0
return v0
:pswitch_8
:try_start_8
iget-boolean v0, p0, Lcom/twidroid/widget/o;->m:Z
goto :goto_6
:pswitch_b
iget-boolean v0, p0, Lcom/twidroid/widget/o;->n:Z
:try_end_d
.catchall {:try_start_8 .. :try_end_d} :catchall_e
goto :goto_6
:catchall_e
move-exception v0
monitor-exit p0
throw v0
nop
:pswitch_data_12
.packed-switch 0x1
:pswitch_b
:pswitch_8
.end packed-switch
.end method
.method public declared-synchronized d()Ljava/util/List;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/widget/o;->i:Ljava/util/List;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized d(Ljava/util/List;)V
.registers 9
monitor-enter p0
if-eqz p1, :cond_39
:try_start_3
invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_a
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-object v1, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-eqz v1, :cond_2f
iget-object v1, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v3, v1, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
iget-wide v5, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v1, v3, v5
if-gez v1, :cond_a
:cond_2f
iget-object v1, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
:try_end_35
.catchall {:try_start_3 .. :try_end_35} :catchall_36
goto :goto_a
:catchall_36
move-exception v0
monitor-exit p0
throw v0
:cond_39
monitor-exit p0
return-void
.end method
.method public declared-synchronized e()Ljava/util/List;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized e(Ljava/util/List;)V
.registers 8
monitor-enter p0
:try_start_1
const-string v0, "WidgetsItemsContainer"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "WIDGETDEBUG New Direct Messages in Widget: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_65
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v0, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
move-wide v1, v0
:goto_31
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/widget/o;->f:I
iget-object v0, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_49
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v4, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v0, v4, v1
if-lez v0, :cond_69
iget v0, p0, Lcom/twidroid/widget/o;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/twidroid/widget/o;->f:I
:try_end_61
.catchall {:try_start_1 .. :try_end_61} :catchall_62
goto :goto_49
:catchall_62
move-exception v0
monitor-exit p0
throw v0
:cond_65
const-wide/16 v0, 0x0
move-wide v1, v0
goto :goto_31
:try_start_69
:cond_69
const-string v0, "WidgetsItemsContainer"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "WIDGETDEBUG newDMCount: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/twidroid/widget/o;->f:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_83
.catchall {:try_start_69 .. :try_end_83} :catchall_62
monitor-exit p0
return-void
.end method
.method public declared-synchronized f()Ljava/util/List;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/widget/o;->j:Ljava/util/List;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized f(Ljava/util/List;)V
.registers 10
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v2
if-eqz p1, :cond_4a
invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_12
:goto_12
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-object v1, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v4, v1, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
iget-wide v6, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v1, v4, v6
if-gez v1, :cond_12
:cond_37
iget-object v1, p0, Lcom/twidroid/widget/o;->k:Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->h()J
move-result-wide v0
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J
:try_end_44
.catchall {:try_start_1 .. :try_end_44} :catchall_4c
move-result-wide v4
cmp-long v0, v0, v4
if-eqz v0, :cond_12
goto :goto_12
:cond_4a
monitor-exit p0
return-void
:catchall_4c
move-exception v0
monitor-exit p0
throw v0
.end method
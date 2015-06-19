.class public Lcom/google/android/gms/internal/mc;
.super Ljava/lang/Object;
.field protected final amV:Ljava/lang/Class;
.field protected final amW:Z
.field protected final tag:I
.field protected final type:I
.method private constructor <init>(ILjava/lang/Class;IZ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/mc;->type:I
iput-object p2, p0, Lcom/google/android/gms/internal/mc;->amV:Ljava/lang/Class;
iput p3, p0, Lcom/google/android/gms/internal/mc;->tag:I
iput-boolean p4, p0, Lcom/google/android/gms/internal/mc;->amW:Z
return-void
.end method
.method public static a(ILjava/lang/Class;I)Lcom/google/android/gms/internal/mc;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/mc;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/mc;-><init>(ILjava/lang/Class;IZ)V
return-object v0
.end method
.method protected a(Lcom/google/android/gms/internal/mh;Ljava/util/List;)V
.registers 4
iget-object v0, p1, Lcom/google/android/gms/internal/mh;->amZ:[B
invoke-static {v0}, Lcom/google/android/gms/internal/lz;->p([B)Lcom/google/android/gms/internal/lz;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mc;->u(Lcom/google/android/gms/internal/lz;)Ljava/lang/Object;
move-result-object v0
invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method protected eM(I)Z
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/mc;->tag:I
if-ne p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method final i(Ljava/util/List;)Ljava/lang/Object;
.registers 8
const/4 v2, 0x0
const/4 v3, 0x0
if-nez p1, :cond_6
move-object v0, v3
:goto_5
:cond_5
return-object v0
:cond_6
iget-boolean v0, p0, Lcom/google/android/gms/internal/mc;->amW:Z
if-eqz v0, :cond_54
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
move v1, v2
:goto_10
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_30
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mh;
iget v5, v0, Lcom/google/android/gms/internal/mh;->tag:I
invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mc;->eM(I)Z
move-result v5
if-eqz v5, :cond_2c
iget-object v5, v0, Lcom/google/android/gms/internal/mh;->amZ:[B
array-length v5, v5
if-eqz v5, :cond_2c
invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/mc;->a(Lcom/google/android/gms/internal/mh;Ljava/util/List;)V
:cond_2c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10
:cond_30
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v1
if-nez v1, :cond_38
move-object v0, v3
goto :goto_5
:cond_38
iget-object v0, p0, Lcom/google/android/gms/internal/mc;->amV:Ljava/lang/Class;
iget-object v3, p0, Lcom/google/android/gms/internal/mc;->amV:Ljava/lang/Class;
invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v3
invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_48
if-ge v2, v1, :cond_5
invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
add-int/lit8 v2, v2, 0x1
goto :goto_48
:cond_54
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v2, v0
move-object v1, v3
:goto_5c
if-nez v1, :cond_78
if-ltz v2, :cond_78
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mh;
iget v4, v0, Lcom/google/android/gms/internal/mh;->tag:I
invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/mc;->eM(I)Z
move-result v4
if-eqz v4, :cond_8e
iget-object v4, v0, Lcom/google/android/gms/internal/mh;->amZ:[B
array-length v4, v4
if-eqz v4, :cond_8e
:goto_73
add-int/lit8 v1, v2, -0x1
move v2, v1
move-object v1, v0
goto :goto_5c
:cond_78
if-nez v1, :cond_7c
move-object v0, v3
goto :goto_5
:cond_7c
iget-object v0, p0, Lcom/google/android/gms/internal/mc;->amV:Ljava/lang/Class;
iget-object v1, v1, Lcom/google/android/gms/internal/mh;->amZ:[B
invoke-static {v1}, Lcom/google/android/gms/internal/lz;->p([B)Lcom/google/android/gms/internal/lz;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mc;->u(Lcom/google/android/gms/internal/lz;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto/16 :goto_5
:cond_8e
move-object v0, v1
goto :goto_73
.end method
.method protected u(Lcom/google/android/gms/internal/lz;)Ljava/lang/Object;
.registers 7
iget-boolean v0, p0, Lcom/google/android/gms/internal/mc;->amW:Z
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/google/android/gms/internal/mc;->amV:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
move-object v1, v0
:goto_b
:try_start_b
iget v0, p0, Lcom/google/android/gms/internal/mc;->type:I
packed-switch v0, :pswitch_data_86
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unknown type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lcom/google/android/gms/internal/mc;->type:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_2b
.catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_2b} :catch_2b
.catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2b} :catch_63
.catch Ljava/io/IOException; {:try_start_b .. :try_end_2b} :catch_7d
:catch_2b
move-exception v0
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Error creating instance of class "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_45
iget-object v0, p0, Lcom/google/android/gms/internal/mc;->amV:Ljava/lang/Class;
move-object v1, v0
goto :goto_b
:pswitch_49
:try_start_49
invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mf;
iget v2, p0, Lcom/google/android/gms/internal/mc;->tag:I
invoke-static {v2}, Lcom/google/android/gms/internal/mi;->eO(I)I
move-result v2
invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;I)V
:goto_58
return-object v0
:pswitch_59
invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mf;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
:try_end_62
.catch Ljava/lang/InstantiationException; {:try_start_49 .. :try_end_62} :catch_2b
.catch Ljava/lang/IllegalAccessException; {:try_start_49 .. :try_end_62} :catch_63
.catch Ljava/io/IOException; {:try_start_49 .. :try_end_62} :catch_7d
goto :goto_58
:catch_63
move-exception v0
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Error creating instance of class "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catch_7d
move-exception v0
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Error reading extension field"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:pswitch_data_86
.packed-switch 0xa
:pswitch_49
:pswitch_59
.end packed-switch
.end method
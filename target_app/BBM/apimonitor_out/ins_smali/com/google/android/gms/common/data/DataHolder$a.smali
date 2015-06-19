.class final Lcom/google/android/gms/common/data/DataHolder$a;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.field private final Ao:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->Ao:Ljava/lang/String;
return-void
.end method
.method public final a(Ljava/util/HashMap;Ljava/util/HashMap;)I
.registers 7
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->Ao:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder$a;->Ao:Ljava/lang/String;
invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1c
const/4 v0, 0x0
:goto_1b
return v0
:cond_1c
instance-of v2, v0, Ljava/lang/Boolean;
if-eqz v2, :cond_29
check-cast v0, Ljava/lang/Boolean;
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I
move-result v0
goto :goto_1b
:cond_29
instance-of v2, v0, Ljava/lang/Long;
if-eqz v2, :cond_36
check-cast v0, Ljava/lang/Long;
check-cast v1, Ljava/lang/Long;
invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I
move-result v0
goto :goto_1b
:cond_36
instance-of v2, v0, Ljava/lang/Integer;
if-eqz v2, :cond_43
check-cast v0, Ljava/lang/Integer;
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I
move-result v0
goto :goto_1b
:cond_43
instance-of v2, v0, Ljava/lang/String;
if-eqz v2, :cond_50
check-cast v0, Ljava/lang/String;
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
goto :goto_1b
:cond_50
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unknown type for lValue "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/util/HashMap;
check-cast p2, Ljava/util/HashMap;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Ljava/util/HashMap;Ljava/util/HashMap;)I
move-result v0
return v0
.end method
.class public Lcom/google/android/gms/tagmanager/cv;
.super Ljava/lang/Object;
.field private final a:Ljava/util/List;
.field private final b:Ljava/util/Map;
.field private final c:Ljava/lang/String;
.field private final d:I
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cv;->a:Ljava/util/List;
invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cv;->b:Ljava/util/Map;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/cv;->c:Ljava/lang/String;
iput p4, p0, Lcom/google/android/gms/tagmanager/cv;->d:I
return-void
.end method
.method synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/tagmanager/cs$1;)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/cv;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V
return-void
.end method
.method public static a()Lcom/google/android/gms/tagmanager/cw;
.registers 2
new-instance v0, Lcom/google/android/gms/tagmanager/cw;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/cw;-><init>(Lcom/google/android/gms/tagmanager/cs$1;)V
return-object v0
.end method
.method public b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cv;->a:Ljava/util/List;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cv;->c:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cv;->b:Ljava/util/Map;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Rules: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cv;->b()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "  Macros: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cv;->b:Ljava/util/Map;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method